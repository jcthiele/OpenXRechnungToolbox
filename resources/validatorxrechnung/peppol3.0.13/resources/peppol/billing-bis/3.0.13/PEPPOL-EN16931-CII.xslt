<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<xsl:stylesheet xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:iso="http://purl.oclc.org/dsdl/schematron" xmlns:qdt="urn:un:unece:uncefact:data:standard:QualifiedDataType:100" xmlns:ram="urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100" xmlns:rsm="urn:un:unece:uncefact:data:standard:CrossIndustryInvoice:100" xmlns:saxon="http://saxon.sf.net/" xmlns:schold="http://www.ascc.net/xml/schematron" xmlns:u="utils" xmlns:udt="urn:un:unece:uncefact:data:standard:UnqualifiedDataType:100" xmlns:xhtml="http://www.w3.org/1999/xhtml" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
<!--Implementers: please note that overriding process-prolog or process-root is 
    the preferred method for meta-stylesheets to use where possible. -->

<xsl:param name="archiveDirParameter" />
  <xsl:param name="archiveNameParameter" />
  <xsl:param name="fileNameParameter" />
  <xsl:param name="fileDirParameter" />
  <xsl:variable name="document-uri">
    <xsl:value-of select="document-uri(/)" />
  </xsl:variable>

<!--PHASES-->


<!--PROLOG-->
<xsl:output indent="yes" method="xml" omit-xml-declaration="no" standalone="yes" />

<!--XSD TYPES FOR XSLT2-->


<!--KEYS AND FUNCTIONS-->
<xsl:function as="xs:boolean" name="u:gln">
    <xsl:param name="val" />
    <xsl:variable name="length" select="string-length($val) - 1" />
    <xsl:variable name="digits" select="reverse(for $i in string-to-codepoints(substring($val, 0, $length + 1)) return $i - 48)" />
    <xsl:variable name="weightedSum" select="sum(for $i in (0 to $length - 1) return $digits[$i + 1] * (1 + ((($i + 1) mod 2) * 2)))" />
    <xsl:value-of select="(10 - ($weightedSum mod 10)) mod 10 = number(substring($val, $length + 1, 1))" />
  </xsl:function>
  <xsl:function as="xs:boolean" name="u:slack">
    <xsl:param as="xs:decimal" name="exp" />
    <xsl:param as="xs:decimal" name="val" />
    <xsl:param as="xs:decimal" name="slack" />
    <xsl:value-of select="xs:decimal($exp + $slack) >= $val and xs:decimal($exp - $slack) &lt;= $val" />
  </xsl:function>
  <xsl:function as="xs:boolean" name="u:mod11">
    <xsl:param name="val" />
    <xsl:variable name="length" select="string-length($val) - 1" />
    <xsl:variable name="digits" select="reverse(for $i in string-to-codepoints(substring($val, 0, $length + 1)) return $i - 48)" />
    <xsl:variable name="weightedSum" select="sum(for $i in (0 to $length - 1) return $digits[$i + 1] * (($i mod 6) + 2))" />
    <xsl:value-of select="number($val) > 0 and (11 - ($weightedSum mod 11)) mod 11 = number(substring($val, $length + 1, 1))" />
  </xsl:function>
  <xsl:function as="xs:boolean" name="u:mod97-0208">
		<xsl:param name="val" />
		<xsl:variable name="checkdigits" select="substring($val,9,2)" />
		<xsl:variable name="calculated_digits" select="xs:string(97 - (xs:integer(substring($val,1,8)) mod 97))" />
		<xsl:value-of select="number($checkdigits) = number($calculated_digits)" />
	</xsl:function>
  <xsl:function as="xs:boolean" name="u:checkCodiceIPA">
    <xsl:param as="xs:string?" name="arg" />
    <xsl:variable name="allowed-characters">ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789</xsl:variable>
    <xsl:sequence select="if ( (string-length(translate($arg, $allowed-characters, '')) = 0) and (string-length($arg) = 6) ) then true() else false()" />
  </xsl:function>
  <xsl:function as="xs:boolean" name="u:checkCF">
    <xsl:param as="xs:string?" name="arg" />
    <xsl:sequence select="   if ( (string-length($arg) = 16) or (string-length($arg) = 11) )      then    (    if ((string-length($arg) = 16))     then    (     if (u:checkCF16($arg))      then     (      true()     )     else     (      false()     )    )    else    (     if(($arg castable as xs:integer)) then true() else false()       )   )   else   (    false()   )   " />
  </xsl:function>
  <xsl:function as="xs:boolean" name="u:checkCF16">
    <xsl:param as="xs:string?" name="arg" />
    <xsl:variable name="allowed-characters">ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz</xsl:variable>
    <xsl:sequence select="     if (  (string-length(translate(substring($arg,1,6), $allowed-characters, '')) = 0) and         (substring($arg,7,2) castable as xs:integer) and        (string-length(translate(substring($arg,9,1), $allowed-characters, '')) = 0) and        (substring($arg,10,2) castable as xs:integer) and         (substring($arg,12,3) castable as xs:string) and        (substring($arg,15,1) castable as xs:integer) and         (string-length(translate(substring($arg,16,1), $allowed-characters, '')) = 0)      )      then true()     else false()     " />
  </xsl:function>
  <xsl:function as="xs:boolean" name="u:checkPIVAseIT">
    <xsl:param as="xs:string" name="arg" />
    <xsl:variable name="paese" select="substring($arg,1,2)" />
    <xsl:variable name="codice" select="substring($arg,3)" />
    <xsl:sequence select="       if ( $paese = 'IT' or $paese = 'it' )    then    (     if ( ( string-length($codice) = 11 ) and ( if (u:checkPIVA($codice)!=0) then false() else true() ))     then      (      true()     )     else     (      false()     )    )    else    (     true()    )      " />
  </xsl:function>
  <xsl:function as="xs:integer" name="u:checkPIVA">
    <xsl:param as="xs:string?" name="arg" />
    <xsl:sequence select="     if (not($arg castable as xs:integer))       then 1      else ( u:addPIVA($arg,xs:integer(0)) mod 10 )" />
  </xsl:function>
  <xsl:function as="xs:integer" name="u:addPIVA">
    <xsl:param as="xs:string" name="arg" />
    <xsl:param as="xs:integer" name="pari" />
    <xsl:variable name="tappo" select="if (not($arg castable as xs:integer)) then 0 else 1" />
    <xsl:variable name="mapper" select="if ($tappo = 0) then 0 else                    ( if ($pari = 1)                     then ( xs:integer(substring('0246813579', ( xs:integer(substring($arg,1,1)) +1 ) ,1)) )                     else ( xs:integer(substring($arg,1,1) ) )                   )" />
    <xsl:sequence select="if ($tappo = 0) then $mapper else ( xs:integer($mapper) + u:addPIVA(substring(xs:string($arg),2), (if($pari=0) then 1 else 0) ) )" />
  </xsl:function>
  <xsl:function as="xs:boolean" name="u:abn">
    <xsl:param name="val" />
    <xsl:value-of select="( ((string-to-codepoints(substring($val,1,1)) - 49) * 10) + ((string-to-codepoints(substring($val,2,1)) - 48) * 1) + ((string-to-codepoints(substring($val,3,1)) - 48) * 3) + ((string-to-codepoints(substring($val,4,1)) - 48) * 5) + ((string-to-codepoints(substring($val,5,1)) - 48) * 7) + ((string-to-codepoints(substring($val,6,1)) - 48) * 9) + ((string-to-codepoints(substring($val,7,1)) - 48) * 11) + ((string-to-codepoints(substring($val,8,1)) - 48) * 13) + ((string-to-codepoints(substring($val,9,1)) - 48) * 15) + ((string-to-codepoints(substring($val,10,1)) - 48) * 17) + ((string-to-codepoints(substring($val,11,1)) - 48) * 19)) mod 89 = 0 " />
  </xsl:function>

<!--DEFAULT RULES-->


<!--MODE: SCHEMATRON-SELECT-FULL-PATH-->
<!--This mode can be used to generate an ugly though full XPath for locators-->
<xsl:template match="*" mode="schematron-select-full-path">
    <xsl:apply-templates mode="schematron-get-full-path" select="." />
  </xsl:template>

<!--MODE: SCHEMATRON-FULL-PATH-->
<!--This mode can be used to generate an ugly though full XPath for locators-->
<xsl:template match="*" mode="schematron-get-full-path">
    <xsl:apply-templates mode="schematron-get-full-path" select="parent::*" />
    <xsl:text>/</xsl:text>
    <xsl:choose>
      <xsl:when test="namespace-uri()=''">
        <xsl:value-of select="name()" />
      </xsl:when>
      <xsl:otherwise>
        <xsl:text>*:</xsl:text>
        <xsl:value-of select="local-name()" />
        <xsl:text>[namespace-uri()='</xsl:text>
        <xsl:value-of select="namespace-uri()" />
        <xsl:text>']</xsl:text>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:variable name="preceding" select="count(preceding-sibling::*[local-name()=local-name(current())                                   and namespace-uri() = namespace-uri(current())])" />
    <xsl:text>[</xsl:text>
    <xsl:value-of select="1+ $preceding" />
    <xsl:text>]</xsl:text>
  </xsl:template>
  <xsl:template match="@*" mode="schematron-get-full-path">
    <xsl:apply-templates mode="schematron-get-full-path" select="parent::*" />
    <xsl:text>/</xsl:text>
    <xsl:choose>
      <xsl:when test="namespace-uri()=''">@<xsl:value-of select="name()" />
</xsl:when>
      <xsl:otherwise>
        <xsl:text>@*[local-name()='</xsl:text>
        <xsl:value-of select="local-name()" />
        <xsl:text>' and namespace-uri()='</xsl:text>
        <xsl:value-of select="namespace-uri()" />
        <xsl:text>']</xsl:text>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

<!--MODE: SCHEMATRON-FULL-PATH-2-->
<!--This mode can be used to generate prefixed XPath for humans-->
<xsl:template match="node() | @*" mode="schematron-get-full-path-2">
    <xsl:for-each select="ancestor-or-self::*">
      <xsl:text>/</xsl:text>
      <xsl:value-of select="name(.)" />
      <xsl:if test="preceding-sibling::*[name(.)=name(current())]">
        <xsl:text>[</xsl:text>
        <xsl:value-of select="count(preceding-sibling::*[name(.)=name(current())])+1" />
        <xsl:text>]</xsl:text>
      </xsl:if>
    </xsl:for-each>
    <xsl:if test="not(self::*)">
      <xsl:text />/@<xsl:value-of select="name(.)" />
    </xsl:if>
  </xsl:template>
<!--MODE: SCHEMATRON-FULL-PATH-3-->
<!--This mode can be used to generate prefixed XPath for humans 
	(Top-level element has index)-->

<xsl:template match="node() | @*" mode="schematron-get-full-path-3">
    <xsl:for-each select="ancestor-or-self::*">
      <xsl:text>/</xsl:text>
      <xsl:value-of select="name(.)" />
      <xsl:if test="parent::*">
        <xsl:text>[</xsl:text>
        <xsl:value-of select="count(preceding-sibling::*[name(.)=name(current())])+1" />
        <xsl:text>]</xsl:text>
      </xsl:if>
    </xsl:for-each>
    <xsl:if test="not(self::*)">
      <xsl:text />/@<xsl:value-of select="name(.)" />
    </xsl:if>
  </xsl:template>

<!--MODE: GENERATE-ID-FROM-PATH -->
<xsl:template match="/" mode="generate-id-from-path" />
  <xsl:template match="text()" mode="generate-id-from-path">
    <xsl:apply-templates mode="generate-id-from-path" select="parent::*" />
    <xsl:value-of select="concat('.text-', 1+count(preceding-sibling::text()), '-')" />
  </xsl:template>
  <xsl:template match="comment()" mode="generate-id-from-path">
    <xsl:apply-templates mode="generate-id-from-path" select="parent::*" />
    <xsl:value-of select="concat('.comment-', 1+count(preceding-sibling::comment()), '-')" />
  </xsl:template>
  <xsl:template match="processing-instruction()" mode="generate-id-from-path">
    <xsl:apply-templates mode="generate-id-from-path" select="parent::*" />
    <xsl:value-of select="concat('.processing-instruction-', 1+count(preceding-sibling::processing-instruction()), '-')" />
  </xsl:template>
  <xsl:template match="@*" mode="generate-id-from-path">
    <xsl:apply-templates mode="generate-id-from-path" select="parent::*" />
    <xsl:value-of select="concat('.@', name())" />
  </xsl:template>
  <xsl:template match="*" mode="generate-id-from-path" priority="-0.5">
    <xsl:apply-templates mode="generate-id-from-path" select="parent::*" />
    <xsl:text>.</xsl:text>
    <xsl:value-of select="concat('.',name(),'-',1+count(preceding-sibling::*[name()=name(current())]),'-')" />
  </xsl:template>

<!--MODE: GENERATE-ID-2 -->
<xsl:template match="/" mode="generate-id-2">U</xsl:template>
  <xsl:template match="*" mode="generate-id-2" priority="2">
    <xsl:text>U</xsl:text>
    <xsl:number count="*" level="multiple" />
  </xsl:template>
  <xsl:template match="node()" mode="generate-id-2">
    <xsl:text>U.</xsl:text>
    <xsl:number count="*" level="multiple" />
    <xsl:text>n</xsl:text>
    <xsl:number count="node()" />
  </xsl:template>
  <xsl:template match="@*" mode="generate-id-2">
    <xsl:text>U.</xsl:text>
    <xsl:number count="*" level="multiple" />
    <xsl:text>_</xsl:text>
    <xsl:value-of select="string-length(local-name(.))" />
    <xsl:text>_</xsl:text>
    <xsl:value-of select="translate(name(),':','.')" />
  </xsl:template>
<!--Strip characters-->  <xsl:template match="text()" priority="-1" />

<!--SCHEMA SETUP-->
<xsl:template match="/">
    <svrl:schematron-output schemaVersion="iso" title="Rules for PEPPOL BIS 3.0 Billing">
      <xsl:comment>
        <xsl:value-of select="$archiveDirParameter" />   
		 <xsl:value-of select="$archiveNameParameter" />  
		 <xsl:value-of select="$fileNameParameter" />  
		 <xsl:value-of select="$fileDirParameter" />
      </xsl:comment>
      <svrl:ns-prefix-in-attribute-values prefix="rsm" uri="urn:un:unece:uncefact:data:standard:CrossIndustryInvoice:100" />
      <svrl:ns-prefix-in-attribute-values prefix="udt" uri="urn:un:unece:uncefact:data:standard:UnqualifiedDataType:100" />
      <svrl:ns-prefix-in-attribute-values prefix="qdt" uri="urn:un:unece:uncefact:data:standard:QualifiedDataType:100" />
      <svrl:ns-prefix-in-attribute-values prefix="ram" uri="urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100" />
      <svrl:ns-prefix-in-attribute-values prefix="xs" uri="http://www.w3.org/2001/XMLSchema" />
      <svrl:ns-prefix-in-attribute-values prefix="u" uri="utils" />
      <svrl:active-pattern>
        <xsl:attribute name="document">
          <xsl:value-of select="document-uri(/)" />
        </xsl:attribute>
        <xsl:apply-templates />
      </svrl:active-pattern>
      <xsl:apply-templates mode="M22" select="/" />
      <svrl:active-pattern>
        <xsl:attribute name="document">
          <xsl:value-of select="document-uri(/)" />
        </xsl:attribute>
        <xsl:apply-templates />
      </svrl:active-pattern>
      <xsl:apply-templates mode="M23" select="/" />
      <svrl:active-pattern>
        <xsl:attribute name="document">
          <xsl:value-of select="document-uri(/)" />
        </xsl:attribute>
        <xsl:apply-templates />
      </svrl:active-pattern>
      <xsl:apply-templates mode="M24" select="/" />
      <svrl:active-pattern>
        <xsl:attribute name="document">
          <xsl:value-of select="document-uri(/)" />
        </xsl:attribute>
        <xsl:apply-templates />
      </svrl:active-pattern>
      <xsl:apply-templates mode="M25" select="/" />
      <svrl:active-pattern>
        <xsl:attribute name="document">
          <xsl:value-of select="document-uri(/)" />
        </xsl:attribute>
        <xsl:apply-templates />
      </svrl:active-pattern>
      <xsl:apply-templates mode="M26" select="/" />
      <svrl:active-pattern>
        <xsl:attribute name="document">
          <xsl:value-of select="document-uri(/)" />
        </xsl:attribute>
        <xsl:apply-templates />
      </svrl:active-pattern>
      <xsl:apply-templates mode="M27" select="/" />
      <svrl:active-pattern>
        <xsl:attribute name="document">
          <xsl:value-of select="document-uri(/)" />
        </xsl:attribute>
        <xsl:apply-templates />
      </svrl:active-pattern>
      <xsl:apply-templates mode="M28" select="/" />
    </svrl:schematron-output>
  </xsl:template>

<!--SCHEMATRON PATTERNS-->
<svrl:text>Rules for PEPPOL BIS 3.0 Billing</svrl:text>
  <xsl:param name="profile" select="             if (/rsm:CrossIndustryInvoice/rsm:ExchangedDocumentContext/ram:BusinessProcessSpecifiedDocumentContextParameter and matches(normalize-space(/rsm:CrossIndustryInvoice/rsm:ExchangedDocumentContext/ram:BusinessProcessSpecifiedDocumentContextParameter/ram:ID), 'urn:fdc:peppol.eu:2017:poacc:billing:([0-9]{2}):1.0')) then                 tokenize(normalize-space(/rsm:CrossIndustryInvoice/rsm:ExchangedDocumentContext/ram:BusinessProcessSpecifiedDocumentContextParameter/ram:ID), ':')[7]             else                 'Unknown'" />
  <xsl:param name="supplierCountry" select="             if (/rsm:CrossIndustryInvoice/rsm:SupplyChainTradeTransaction[1]/ram:ApplicableHeaderTradeAgreement[1]/ram:SellerTradeParty[1]/ram:SpecifiedTaxRegistration[ram:ID/@schemeID = 'VAT']/substring(ram:ID, 1, 2)) then                 upper-case(normalize-space(/rsm:CrossIndustryInvoice/rsm:SupplyChainTradeTransaction[1]/ram:ApplicableHeaderTradeAgreement[1]/ram:SellerTradeParty[1]/ram:SpecifiedTaxRegistration[ram:ID/@schemeID = 'VAT']/substring(ram:ID, 1, 2)))             else                 if (/rsm:CrossIndustryInvoice/rsm:SupplyChainTradeTransaction/ram:ApplicableHeaderTradeAgreement/ram:SellerTaxRepresentativeTradeParty/ram:SpecifiedTaxRegistration[ram:ID/@schemeID = 'VAT']/substring(ram:ID, 1, 2)) then                     upper-case(normalize-space(/rsm:CrossIndustryInvoice/rsm:SupplyChainTradeTransaction/ram:ApplicableHeaderTradeAgreement/ram:SellerTaxRepresentativeTradeParty/ram:SpecifiedTaxRegistration[ram:ID/@schemeID = 'VAT']/substring(ram:ID, 1, 2)))                 else                     if (/rsm:CrossIndustryInvoice/rsm:SupplyChainTradeTransaction/ram:ApplicableHeaderTradeAgreement/ram:SellerTradeParty/ram:PostalTradeAddress/ram:CountryID) then                         upper-case(normalize-space(/rsm:CrossIndustryInvoice/rsm:SupplyChainTradeTransaction/ram:ApplicableHeaderTradeAgreement/ram:SellerTradeParty/ram:PostalTradeAddress/ram:CountryID))                     else                         'XX'" />
  <xsl:param name="documentCurrencyCode" select="/rsm:CrossIndustryInvoice/rsm:SupplyChainTradeTransaction/ram:ApplicableHeaderTradeSettlement/ram:InvoiceCurrencyCode" />
  <xsl:param name="taxCurrencyCode" select="/rsm:CrossIndustryInvoice/rsm:SupplyChainTradeTransaction/ram:ApplicableHeaderTradeSettlement/ram:TaxCurrencyCode" />

<!--PATTERN -->


	<!--RULE -->
<xsl:template match="rsm:ExchangedDocumentContext" mode="M22" priority="1026">
    <svrl:fired-rule context="rsm:ExchangedDocumentContext" />

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="ram:BusinessProcessSpecifiedDocumentContextParameter/ram:ID" />
      <xsl:otherwise>
        <svrl:failed-assert test="ram:BusinessProcessSpecifiedDocumentContextParameter/ram:ID">
          <xsl:attribute name="id">PEPPOL-EN16931-R001</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>Business process MUST be provided.</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="$profile != 'Unknown'" />
      <xsl:otherwise>
        <svrl:failed-assert test="$profile != 'Unknown'">
          <xsl:attribute name="id">PEPPOL-EN16931-R007</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>Business process MUST be in the format 'urn:fdc:peppol.eu:2017:poacc:billing:NN:1.0' where NN indicates the process number.</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="starts-with(normalize-space(ram:GuidelineSpecifiedDocumentContextParameter/ram:ID/text()), 'urn:cen.eu:en16931:2017#compliant#urn:fdc:peppol.eu:2017:poacc:billing:3.0')" />
      <xsl:otherwise>
        <svrl:failed-assert test="starts-with(normalize-space(ram:GuidelineSpecifiedDocumentContextParameter/ram:ID/text()), 'urn:cen.eu:en16931:2017#compliant#urn:fdc:peppol.eu:2017:poacc:billing:3.0')">
          <xsl:attribute name="id">PEPPOL-EN16931-R004</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>Specification identifier MUST have the value 'urn:cen.eu:en16931:2017#compliant#urn:fdc:peppol.eu:2017:poacc:billing:3.0'.</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:apply-templates mode="M22" select="@*|*" />
  </xsl:template>

	<!--RULE -->
<xsl:template match="ram:ApplicableHeaderTradeAgreement" mode="M22" priority="1025">
    <svrl:fired-rule context="ram:ApplicableHeaderTradeAgreement" />

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="ram:BuyerReference or ram:BuyerOrderReferencedDocument/ram:IssuerAssignedID" />
      <xsl:otherwise>
        <svrl:failed-assert test="ram:BuyerReference or ram:BuyerOrderReferencedDocument/ram:IssuerAssignedID">
          <xsl:attribute name="id">PEPPOL-EN16931-R003</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>A buyer reference or purchase order reference MUST be provided.</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="count(ram:AdditionalReferencedDocument[ram:TypeCode='130']) &lt;=1" />
      <xsl:otherwise>
        <svrl:failed-assert test="count(ram:AdditionalReferencedDocument[ram:TypeCode='130']) &lt;=1">
          <xsl:attribute name="id">PEPPOL-EN16931-R006</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>Only one invoiced object is allowed on document level</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="count(ram:AdditionalReferencedDocument[ram:TypeCode='50']) &lt;=1" />
      <xsl:otherwise>
        <svrl:failed-assert test="count(ram:AdditionalReferencedDocument[ram:TypeCode='50']) &lt;=1">
          <xsl:attribute name="id">PEPPOL-EN16931-R080</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>Only one project reference is allowed on document level</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:apply-templates mode="M22" select="@*|*" />
  </xsl:template>

	<!--RULE -->
<xsl:template match="ram:ApplicableHeaderTradeSettlement" mode="M22" priority="1024">
    <svrl:fired-rule context="ram:ApplicableHeaderTradeSettlement" />

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="not(ram:TaxCurrencyCode) or normalize-space(ram:TaxCurrencyCode/text()) != normalize-space(ram:InvoiceCurrencyCode/text())" />
      <xsl:otherwise>
        <svrl:failed-assert test="not(ram:TaxCurrencyCode) or normalize-space(ram:TaxCurrencyCode/text()) != normalize-space(ram:InvoiceCurrencyCode/text())">
          <xsl:attribute name="id">PEPPOL-EN16931-R005</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>VAT accounting currency code MUST be different from invoice currency code when provided.</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="count(ram:SpecifiedTradeSettlementHeaderMonetarySummation/ram:TaxTotalAmount[@currencyID = $documentCurrencyCode]) = 1" />
      <xsl:otherwise>
        <svrl:failed-assert test="count(ram:SpecifiedTradeSettlementHeaderMonetarySummation/ram:TaxTotalAmount[@currencyID = $documentCurrencyCode]) = 1">
          <xsl:attribute name="id">PEPPOL-EN16931-R053</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>Only one tax total with tax subtotals MUST be provided.</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="                     count(ram:SpecifiedTradeSettlementHeaderMonetarySummation/ram:TaxTotalAmount[@currencyID != $documentCurrencyCode]) = (if (ram:TaxCurrencyCode) then                         1                     else                         0)" />
      <xsl:otherwise>
        <svrl:failed-assert test="count(ram:SpecifiedTradeSettlementHeaderMonetarySummation/ram:TaxTotalAmount[@currencyID != $documentCurrencyCode]) = (if (ram:TaxCurrencyCode) then 1 else 0)">
          <xsl:attribute name="id">PEPPOL-EN16931-R054</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>Only one tax total without tax subtotals MUST be provided when tax currency code is provided.</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="not(/rsm:CrossIndustryInvoice/rsm:SupplyChainTradeTransaction/ram:ApplicableHeaderTradeSettlement/ram:TaxCurrencyCode) or (ram:SpecifiedTradeSettlementHeaderMonetarySummation/ram:TaxTotalAmount[@currencyID = $taxCurrencyCode] &lt; 0 and ram:SpecifiedTradeSettlementHeaderMonetarySummation/ram:TaxTotalAmount[@currencyID = $documentCurrencyCode] &lt; 0) or (ram:SpecifiedTradeSettlementHeaderMonetarySummation/ram:TaxTotalAmount[@currencyID = $taxCurrencyCode] >= 0 and ram:SpecifiedTradeSettlementHeaderMonetarySummation/ram:TaxTotalAmount[@currencyID = $documentCurrencyCode] >= 0)" />
      <xsl:otherwise>
        <svrl:failed-assert test="not(/rsm:CrossIndustryInvoice/rsm:SupplyChainTradeTransaction/ram:ApplicableHeaderTradeSettlement/ram:TaxCurrencyCode) or (ram:SpecifiedTradeSettlementHeaderMonetarySummation/ram:TaxTotalAmount[@currencyID = $taxCurrencyCode] &lt; 0 and ram:SpecifiedTradeSettlementHeaderMonetarySummation/ram:TaxTotalAmount[@currencyID = $documentCurrencyCode] &lt; 0) or (ram:SpecifiedTradeSettlementHeaderMonetarySummation/ram:TaxTotalAmount[@currencyID = $taxCurrencyCode] >= 0 and ram:SpecifiedTradeSettlementHeaderMonetarySummation/ram:TaxTotalAmount[@currencyID = $documentCurrencyCode] >= 0)">
          <xsl:attribute name="id">PEPPOL-EN16931-R055</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>Invoice total VAT amount and Invoice total VAT amount in accounting currency MUST have the same operational sign</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:apply-templates mode="M22" select="@*|*" />
  </xsl:template>

	<!--RULE -->
<xsl:template match="rsm:ExchangedDocument" mode="M22" priority="1023">
    <svrl:fired-rule context="rsm:ExchangedDocument" />

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="count(ram:IncludedNote) &lt;= 1 and not(ram:IncludedNote/ram:SubjectCode)" />
      <xsl:otherwise>
        <svrl:failed-assert test="count(ram:IncludedNote) &lt;= 1 and not(ram:IncludedNote/ram:SubjectCode)">
          <xsl:attribute name="id">PEPPOL-EN16931-R002</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>No more than one note is allowed on document level.</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:apply-templates mode="M22" select="@*|*" />
  </xsl:template>

	<!--RULE -->
<xsl:template match="ram:BuyerTradeParty" mode="M22" priority="1022">
    <svrl:fired-rule context="ram:BuyerTradeParty" />

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="ram:URIUniversalCommunication/ram:URIID" />
      <xsl:otherwise>
        <svrl:failed-assert test="ram:URIUniversalCommunication/ram:URIID">
          <xsl:attribute name="id">PEPPOL-EN16931-R010</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>Buyer electronic address MUST be provided</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:apply-templates mode="M22" select="@*|*" />
  </xsl:template>

	<!--RULE -->
<xsl:template match="ram:SellerTradeParty" mode="M22" priority="1021">
    <svrl:fired-rule context="ram:SellerTradeParty" />

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="ram:URIUniversalCommunication/ram:URIID" />
      <xsl:otherwise>
        <svrl:failed-assert test="ram:URIUniversalCommunication/ram:URIID">
          <xsl:attribute name="id">PEPPOL-EN16931-R020</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>Seller electronic address MUST be provided</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:apply-templates mode="M22" select="@*|*" />
  </xsl:template>

	<!--RULE -->
<xsl:template match="ram:SpecifiedTradeAllowanceCharge[ram:CalculationPercent and not(ram:BasisAmount)]" mode="M22" priority="1020">
    <svrl:fired-rule context="ram:SpecifiedTradeAllowanceCharge[ram:CalculationPercent and not(ram:BasisAmount)]" />

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="false()" />
      <xsl:otherwise>
        <svrl:failed-assert test="false()">
          <xsl:attribute name="id">PEPPOL-EN16931-R041</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>Allowance/charge base
                amount MUST be provided when allowance/charge percentage is provided.</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:apply-templates mode="M22" select="@*|*" />
  </xsl:template>

	<!--RULE -->
<xsl:template match="ram:SpecifiedTradeAllowanceCharge[not(ram:CalculationPercent) and ram:BasisAmount]" mode="M22" priority="1019">
    <svrl:fired-rule context="ram:SpecifiedTradeAllowanceCharge[not(ram:CalculationPercent) and ram:BasisAmount]" />

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="false()" />
      <xsl:otherwise>
        <svrl:failed-assert test="false()">
          <xsl:attribute name="id">PEPPOL-EN16931-R042</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>Allowance/charge percentage
                MUST be provided when allowance/charge base amount is provided.</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:apply-templates mode="M22" select="@*|*" />
  </xsl:template>

	<!--RULE -->
<xsl:template match="ram:SpecifiedTradeAllowanceCharge" mode="M22" priority="1018">
    <svrl:fired-rule context="ram:SpecifiedTradeAllowanceCharge" />

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="                     not(ram:CalculationPercent and ram:BasisAmount) or u:slack(if (ram:ActualAmount) then                         ram:ActualAmount                     else                         0, (xs:decimal(ram:BasisAmount) * xs:decimal(ram:CalculationPercent)) div 100, 0.02)" />
      <xsl:otherwise>
        <svrl:failed-assert test="not(ram:CalculationPercent and ram:BasisAmount) or u:slack(if (ram:ActualAmount) then ram:ActualAmount else 0, (xs:decimal(ram:BasisAmount) * xs:decimal(ram:CalculationPercent)) div 100, 0.02)">
          <xsl:attribute name="id">PEPPOL-EN16931-R040</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>Allowance/charge amount must equal base amount * percentage/100 if base amount and percentage exists</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="normalize-space(ram:ChargeIndicator/udt:Indicator/text()) = 'true' or normalize-space(ram:ChargeIndicator/udt:Indicator/text()) = 'false'" />
      <xsl:otherwise>
        <svrl:failed-assert test="normalize-space(ram:ChargeIndicator/udt:Indicator/text()) = 'true' or normalize-space(ram:ChargeIndicator/udt:Indicator/text()) = 'false'">
          <xsl:attribute name="id">PEPPOL-EN16931-R043</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>Allowance/charge ChargeIndicator value MUST equal 'true' or 'false'</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:apply-templates mode="M22" select="@*|*" />
  </xsl:template>

	<!--RULE -->
<xsl:template match="ram:AppliedTradeAllowanceCharge" mode="M22" priority="1017">
    <svrl:fired-rule context="ram:AppliedTradeAllowanceCharge" />

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="normalize-space(ram:ChargeIndicator/udt:Indicator/text()) = 'true' or normalize-space(ram:ChargeIndicator/udt:Indicator/text()) = 'false'" />
      <xsl:otherwise>
        <svrl:failed-assert test="normalize-space(ram:ChargeIndicator/udt:Indicator/text()) = 'true' or normalize-space(ram:ChargeIndicator/udt:Indicator/text()) = 'false'">
          <xsl:attribute name="id">PEPPOL-EN16931-R043</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>Allowance/charge ChargeIndicator value MUST equal 'true' or 'false'</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:apply-templates mode="M22" select="@*|*" />
  </xsl:template>

	<!--RULE -->
<xsl:template match="                 ram:SpecifiedTradeSettlementPaymentMeans[some $code in tokenize('49 59', '\s')                     satisfies normalize-space(ram:TypeCode) = $code]" mode="M22" priority="1016">
    <svrl:fired-rule context="                 ram:SpecifiedTradeSettlementPaymentMeans[some $code in tokenize('49 59', '\s')                     satisfies normalize-space(ram:TypeCode) = $code]" />

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="../ram:SpecifiedTradePaymentTerms/ram:DirectDebitMandateID" />
      <xsl:otherwise>
        <svrl:failed-assert test="../ram:SpecifiedTradePaymentTerms/ram:DirectDebitMandateID">
          <xsl:attribute name="id">PEPPOL-EN16931-R061</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>Mandate reference MUST be provided for direct debit.</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:apply-templates mode="M22" select="@*|*" />
  </xsl:template>

	<!--RULE -->
<xsl:template match="rsm:SupplyChainTradeTransaction[ram:ApplicableHeaderTradeSettlement/ram:BillingSpecifiedPeriod/ram:StartDateTime]/ram:IncludedSupplyChainTradeLineItem/ram:SpecifiedLineTradeSettlement/ram:BillingSpecifiedPeriod/ram:StartDateTime" mode="M22" priority="1015">
    <svrl:fired-rule context="rsm:SupplyChainTradeTransaction[ram:ApplicableHeaderTradeSettlement/ram:BillingSpecifiedPeriod/ram:StartDateTime]/ram:IncludedSupplyChainTradeLineItem/ram:SpecifiedLineTradeSettlement/ram:BillingSpecifiedPeriod/ram:StartDateTime" />

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="udt:DateTimeString >= ../../../../ram:ApplicableHeaderTradeSettlement/ram:BillingSpecifiedPeriod/ram:StartDateTime/udt:DateTimeString" />
      <xsl:otherwise>
        <svrl:failed-assert test="udt:DateTimeString >= ../../../../ram:ApplicableHeaderTradeSettlement/ram:BillingSpecifiedPeriod/ram:StartDateTime/udt:DateTimeString">
          <xsl:attribute name="id">PEPPOL-EN16931-R110</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>Start date of line period MUST be within invoice period.</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:apply-templates mode="M22" select="@*|*" />
  </xsl:template>

	<!--RULE -->
<xsl:template match="rsm:SupplyChainTradeTransaction[ram:ApplicableHeaderTradeSettlement/ram:BillingSpecifiedPeriod/ram:EndDateTime]/ram:IncludedSupplyChainTradeLineItem/ram:SpecifiedLineTradeSettlement/ram:BillingSpecifiedPeriod/ram:EndDateTime" mode="M22" priority="1014">
    <svrl:fired-rule context="rsm:SupplyChainTradeTransaction[ram:ApplicableHeaderTradeSettlement/ram:BillingSpecifiedPeriod/ram:EndDateTime]/ram:IncludedSupplyChainTradeLineItem/ram:SpecifiedLineTradeSettlement/ram:BillingSpecifiedPeriod/ram:EndDateTime" />

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="udt:DateTimeString &lt;= ../../../../ram:ApplicableHeaderTradeSettlement/ram:BillingSpecifiedPeriod/ram:EndDateTime/udt:DateTimeString" />
      <xsl:otherwise>
        <svrl:failed-assert test="udt:DateTimeString &lt;= ../../../../ram:ApplicableHeaderTradeSettlement/ram:BillingSpecifiedPeriod/ram:EndDateTime/udt:DateTimeString">
          <xsl:attribute name="id">PEPPOL-EN16931-R111</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>End date of line period MUST be within invoice period.</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:apply-templates mode="M22" select="@*|*" />
  </xsl:template>

	<!--RULE -->
<xsl:template match="ram:IncludedSupplyChainTradeLineItem" mode="M22" priority="1013">
    <svrl:fired-rule context="ram:IncludedSupplyChainTradeLineItem" />
    <xsl:variable name="lineExtensionAmount" select="                     if (ram:SpecifiedLineTradeSettlement/ram:SpecifiedTradeSettlementLineMonetarySummation/ram:LineTotalAmount) then                         xs:decimal(ram:SpecifiedLineTradeSettlement/ram:SpecifiedTradeSettlementLineMonetarySummation/ram:LineTotalAmount)                     else                         0" />
    <xsl:variable name="quantity" select="                     if (ram:SpecifiedLineTradeDelivery/ram:BilledQuantity) then                         xs:decimal(ram:SpecifiedLineTradeDelivery/ram:BilledQuantity)                     else                         1" />
    <xsl:variable name="priceAmount" select="                     if (ram:SpecifiedLineTradeAgreement/ram:NetPriceProductTradePrice/ram:ChargeAmount) then                         xs:decimal(ram:SpecifiedLineTradeAgreement/ram:NetPriceProductTradePrice/ram:ChargeAmount)                     else                         0" />
    <xsl:variable name="baseQuantity" select="                     if (ram:SpecifiedLineTradeAgreement/ram:NetPriceProductTradePrice/ram:BasisQuantity and xs:decimal(ram:SpecifiedLineTradeAgreement/ram:NetPriceProductTradePrice/ram:BasisQuantity) != 0) then                         xs:decimal(ram:SpecifiedLineTradeAgreement/ram:NetPriceProductTradePrice/ram:BasisQuantity)                     else                         1" />
    <xsl:variable name="allowancesTotal" select="                     if (ram:SpecifiedLineTradeSettlement/ram:SpecifiedTradeAllowanceCharge[normalize-space(ram:ChargeIndicator/udt:Indicator) = 'false']) then                         round(sum(ram:SpecifiedLineTradeSettlement/ram:SpecifiedTradeAllowanceCharge[normalize-space(ram:ChargeIndicator/udt:Indicator) = 'false']/ram:ActualAmount/xs:decimal(.)) * 10 * 10) div 100                     else                         0" />
    <xsl:variable name="chargesTotal" select="                     if (ram:SpecifiedLineTradeSettlement/ram:SpecifiedTradeAllowanceCharge[normalize-space(ram:ChargeIndicator/udt:Indicator) = 'true']) then                         round(sum(ram:SpecifiedLineTradeSettlement/ram:SpecifiedTradeAllowanceCharge[normalize-space(ram:ChargeIndicator/udt:Indicator) = 'true']/ram:ActualAmount/xs:decimal(.)) * 10 * 10) div 100                     else                         0" />

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="u:slack($lineExtensionAmount, ($quantity * ($priceAmount div $baseQuantity)) + $chargesTotal - $allowancesTotal, 0.02)" />
      <xsl:otherwise>
        <svrl:failed-assert test="u:slack($lineExtensionAmount, ($quantity * ($priceAmount div $baseQuantity)) + $chargesTotal - $allowancesTotal, 0.02)">
          <xsl:attribute name="id">PEPPOL-EN16931-R120</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>Invoice line net amount MUST equal (Invoiced quantity * (Item net price/item price base quantity) + Sum of invoice line charge amount - sum of invoice line allowance amount</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="count(ram:SpecifiedLineTradeSettlement/ram:AdditionalReferencedDocument[ram:TypeCode='130']) &lt;=1" />
      <xsl:otherwise>
        <svrl:failed-assert test="count(ram:SpecifiedLineTradeSettlement/ram:AdditionalReferencedDocument[ram:TypeCode='130']) &lt;=1">
          <xsl:attribute name="id">PEPPOL-EN16931-R100</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>Only one invoiced object is allowed pr line</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="(not(ram:SpecifiedLineTradeSettlement/ram:AdditionalReferencedDocument) or (ram:SpecifiedLineTradeSettlement/ram:AdditionalReferencedDocument/ram:TypeCode='130'))" />
      <xsl:otherwise>
        <svrl:failed-assert test="(not(ram:SpecifiedLineTradeSettlement/ram:AdditionalReferencedDocument) or (ram:SpecifiedLineTradeSettlement/ram:AdditionalReferencedDocument/ram:TypeCode='130'))">
          <xsl:attribute name="id">PEPPOL-EN16931-R101</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>Element Document reference can only be used for Invoice line object</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:apply-templates mode="M22" select="@*|*" />
  </xsl:template>

	<!--RULE -->
<xsl:template match="ram:NetPriceProductTradePrice | ram:GrossPriceProductTradePrice" mode="M22" priority="1012">
    <svrl:fired-rule context="ram:NetPriceProductTradePrice | ram:GrossPriceProductTradePrice" />

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="not(ram:BasisQuantity) or xs:decimal(ram:BasisQuantity) > 0" />
      <xsl:otherwise>
        <svrl:failed-assert test="not(ram:BasisQuantity) or xs:decimal(ram:BasisQuantity) > 0">
          <xsl:attribute name="id">PEPPOL-EN16931-R121</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>Base quantity MUST be a positive number above zero.</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:apply-templates mode="M22" select="@*|*" />
  </xsl:template>

	<!--RULE -->
<xsl:template match="ram:NetPriceProductTradePrice/ram:BasisQuantity[@unitCode] | ram:GrossPriceProductTradePrice/ram:BasisQuantity[@unitCode]" mode="M22" priority="1011">
    <svrl:fired-rule context="ram:NetPriceProductTradePrice/ram:BasisQuantity[@unitCode] | ram:GrossPriceProductTradePrice/ram:BasisQuantity[@unitCode]" />

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="@unitCode = ../../../ram:SpecifiedLineTradeDelivery/ram:BilledQuantity/@unitCode" />
      <xsl:otherwise>
        <svrl:failed-assert test="@unitCode = ../../../ram:SpecifiedLineTradeDelivery/ram:BilledQuantity/@unitCode">
          <xsl:attribute name="id">PEPPOL-EN16931-R130</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>Unit code of price base quantity MUST be same as invoiced quantity.</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:apply-templates mode="M22" select="@*|*" />
  </xsl:template>

	<!--RULE -->
<xsl:template match="ram:URIID[@schemeID = '0088'] | ram:ID[@schemeID = '0088'] | ram:GlobalID[@schemeID = '0088']" mode="M22" priority="1010">
    <svrl:fired-rule context="ram:URIID[@schemeID = '0088'] | ram:ID[@schemeID = '0088'] | ram:GlobalID[@schemeID = '0088']" />

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="matches(normalize-space(), '^[0-9]+$') and u:gln(normalize-space())" />
      <xsl:otherwise>
        <svrl:failed-assert test="matches(normalize-space(), '^[0-9]+$') and u:gln(normalize-space())">
          <xsl:attribute name="id">PEPPOL-COMMON-R040</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>GLN must have a valid format according to GS1 rules.</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:apply-templates mode="M22" select="@*|*" />
  </xsl:template>

	<!--RULE -->
<xsl:template match="ram:URIID[@schemeID = '0192'] | ram:ID[@schemeID = '0192'] | ram:GlobalID[@schemeID = '0192']" mode="M22" priority="1009">
    <svrl:fired-rule context="ram:URIID[@schemeID = '0192'] | ram:ID[@schemeID = '0192'] | ram:GlobalID[@schemeID = '0192']" />

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="matches(normalize-space(), '^[0-9]{9}$') and u:mod11(normalize-space())" />
      <xsl:otherwise>
        <svrl:failed-assert test="matches(normalize-space(), '^[0-9]{9}$') and u:mod11(normalize-space())">
          <xsl:attribute name="id">PEPPOL-COMMON-R041</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>Norwegian organization number MUST be stated in the correct format.</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:apply-templates mode="M22" select="@*|*" />
  </xsl:template>

	<!--RULE -->
<xsl:template match="ram:URIID[@schemeID = '0184'] | ram:ID[@schemeID = '0184'] | ram:GlobalID[@schemeID = '0184']" mode="M22" priority="1008">
    <svrl:fired-rule context="ram:URIID[@schemeID = '0184'] | ram:ID[@schemeID = '0184'] | ram:GlobalID[@schemeID = '0184']" />

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="(string-length(text()) = 10) and (substring(text(), 1, 2) = 'DK') and (string-length(translate(substring(text(), 3, 8), '1234567890', '')) = 0)" />
      <xsl:otherwise>
        <svrl:failed-assert test="(string-length(text()) = 10) and (substring(text(), 1, 2) = 'DK') and (string-length(translate(substring(text(), 3, 8), '1234567890', '')) = 0)">
          <xsl:attribute name="id">PEPPOL-COMMON-R042</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>Danish organization number (CVR) MUST be stated in the correct format.</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:apply-templates mode="M22" select="@*|*" />
  </xsl:template>

	<!--RULE -->
<xsl:template match="ram:URIID[@schemeID = '0208'] | ram:ID[@schemeID = '0208'] | ram:GlobalID[@schemeID = '0208']" mode="M22" priority="1007">
    <svrl:fired-rule context="ram:URIID[@schemeID = '0208'] | ram:ID[@schemeID = '0208'] | ram:GlobalID[@schemeID = '0208']" />

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="matches(normalize-space(), '^[0-9]{10}$') and u:mod97-0208(normalize-space())" />
      <xsl:otherwise>
        <svrl:failed-assert test="matches(normalize-space(), '^[0-9]{10}$') and u:mod97-0208(normalize-space())">
          <xsl:attribute name="id">PEPPOL-COMMON-R043</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>Belgian enterprise number MUST be stated in the correct format.</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:apply-templates mode="M22" select="@*|*" />
  </xsl:template>

	<!--RULE -->
<xsl:template match="ram:URIID[@schemeID = '0201'] | ram:ID[@schemeID = '0201'] | ram:GlobalID[@schemeID = '0201']" mode="M22" priority="1006">
    <svrl:fired-rule context="ram:URIID[@schemeID = '0201'] | ram:ID[@schemeID = '0201'] | ram:GlobalID[@schemeID = '0201']" />

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="u:checkCodiceIPA(normalize-space())" />
      <xsl:otherwise>
        <svrl:failed-assert test="u:checkCodiceIPA(normalize-space())">
          <xsl:attribute name="id">PEPPOL-COMMON-R044</xsl:attribute>
          <xsl:attribute name="flag">warning</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>IPA Code (Codice Univoco Unità Organizzativa) must be stated in the correct format</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:apply-templates mode="M22" select="@*|*" />
  </xsl:template>

	<!--RULE -->
<xsl:template match="ram:URIID[@schemeID = '0210'] | ram:ID[@schemeID = '0210'] | ram:GlobalID[@schemeID = '0210']" mode="M22" priority="1005">
    <svrl:fired-rule context="ram:URIID[@schemeID = '0210'] | ram:ID[@schemeID = '0210'] | ram:GlobalID[@schemeID = '0210']" />

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="u:checkCF(normalize-space())" />
      <xsl:otherwise>
        <svrl:failed-assert test="u:checkCF(normalize-space())">
          <xsl:attribute name="id">PEPPOL-COMMON-R045</xsl:attribute>
          <xsl:attribute name="flag">warning</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>Tax Code (Codice Fiscale) must be stated in the correct format</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:apply-templates mode="M22" select="@*|*" />
  </xsl:template>

	<!--RULE -->
<xsl:template match="ram:URIID[@schemeID = '9907']" mode="M22" priority="1004">
    <svrl:fired-rule context="ram:URIID[@schemeID = '9907']" />

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="u:checkCF(normalize-space())" />
      <xsl:otherwise>
        <svrl:failed-assert test="u:checkCF(normalize-space())">
          <xsl:attribute name="id">PEPPOL-COMMON-R046</xsl:attribute>
          <xsl:attribute name="flag">warning</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>Tax Code (Codice Fiscale) must be stated in the correct format</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:apply-templates mode="M22" select="@*|*" />
  </xsl:template>

	<!--RULE -->
<xsl:template match="ram:URIID[@schemeID = '0211'] | ram:ID[@schemeID = '0211'] | ram:GlobalID[@schemeID = '0211']" mode="M22" priority="1003">
    <svrl:fired-rule context="ram:URIID[@schemeID = '0211'] | ram:ID[@schemeID = '0211'] | ram:GlobalID[@schemeID = '0211']" />

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="u:checkPIVAseIT(normalize-space())" />
      <xsl:otherwise>
        <svrl:failed-assert test="u:checkPIVAseIT(normalize-space())">
          <xsl:attribute name="id">PEPPOL-COMMON-R047</xsl:attribute>
          <xsl:attribute name="flag">warning</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>Italian VAT Code (Partita Iva) must be stated in the correct format</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:apply-templates mode="M22" select="@*|*" />
  </xsl:template>

	<!--RULE -->
<xsl:template match="ram:URIID[@schemeID = '9906']" mode="M22" priority="1002">
    <svrl:fired-rule context="ram:URIID[@schemeID = '9906']" />

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="u:checkPIVAseIT(normalize-space())" />
      <xsl:otherwise>
        <svrl:failed-assert test="u:checkPIVAseIT(normalize-space())">
          <xsl:attribute name="id">PEPPOL-COMMON-R048</xsl:attribute>
          <xsl:attribute name="flag">warning</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>Italian VAT Code (Partita Iva) must be stated in the correct format</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:apply-templates mode="M22" select="@*|*" />
  </xsl:template>

	<!--RULE -->
<xsl:template match="ram:URIID[@schemeID = '0007'] | ram:ID[@schemeID = '0007'] | ram:GlobalID[@schemeID = '0007']" mode="M22" priority="1001">
    <svrl:fired-rule context="ram:URIID[@schemeID = '0007'] | ram:ID[@schemeID = '0007'] | ram:GlobalID[@schemeID = '0007']" />

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="string-length(normalize-space()) = 10 and string(number(normalize-space())) != 'NaN'" />
      <xsl:otherwise>
        <svrl:failed-assert test="string-length(normalize-space()) = 10 and string(number(normalize-space())) != 'NaN'">
          <xsl:attribute name="id">PEPPOL-COMMON-R049</xsl:attribute>
          <xsl:attribute name="flag">warning</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>Swedish organization number MUST be stated in the correct format.</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:apply-templates mode="M22" select="@*|*" />
  </xsl:template>

	<!--RULE -->
<xsl:template match="ram:URIID[@schemeID = '0151'] | ram:ID[@schemeID = '0151'] | ram:GlobalID[@schemeID = '0151']" mode="M22" priority="1000">
    <svrl:fired-rule context="ram:URIID[@schemeID = '0151'] | ram:ID[@schemeID = '0151'] | ram:GlobalID[@schemeID = '0151']" />

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="u:abn(normalize-space())" />
      <xsl:otherwise>
        <svrl:failed-assert test="u:abn(normalize-space())">
          <xsl:attribute name="id">PEPPOL-COMMON-R050</xsl:attribute>
          <xsl:attribute name="flag">warning</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>Australian Business Number (ABN) MUST be stated in the correct format.</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:apply-templates mode="M22" select="@*|*" />
  </xsl:template>
  <xsl:template match="text()" mode="M22" priority="-1" />
  <xsl:template match="@*|node()" mode="M22" priority="-2">
    <xsl:apply-templates mode="M22" select="@*|*" />
  </xsl:template>

<!--PATTERN -->


	<!--RULE -->
<xsl:template match="ram:SellerTradeParty[$supplierCountry = 'NO']" mode="M23" priority="1000">
    <svrl:fired-rule context="ram:SellerTradeParty[$supplierCountry = 'NO']" />

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="ram:SpecifiedTaxRegistration/ram:ID[@schemeID = 'FC'][normalize-space(text()) = 'Foretaksregisteret']" />
      <xsl:otherwise>
        <svrl:failed-assert test="ram:SpecifiedTaxRegistration/ram:ID[@schemeID = 'FC'][normalize-space(text()) = 'Foretaksregisteret']">
          <xsl:attribute name="id">NO-R-002</xsl:attribute>
          <xsl:attribute name="flag">warning</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>Most invoice issuers are required to append "Foretaksregisteret" to
                their invoice. "Dersom selger er aksjeselskap, allmennaksjeselskap eller filial av
                utenlandsk selskap skal også ordet «Foretaksregisteret» fremgå av salgsdokumentet,
                jf. foretaksregisterloven § 10-2."</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="ram:SpecifiedTaxRegistration[ram:ID/@schemeID = 'VAT']/substring(ram:ID, 1, 2)='NO' and matches(ram:SpecifiedTaxRegistration[ram:ID/@schemeID = 'VAT']/substring(ram:ID,3) , '^[0-9]{9}MVA$')                  and u:mod11(substring(ram:SpecifiedTaxRegistration[ram:ID/@schemeID = 'VAT']/ram:ID, 3, 9)) or not(ram:SpecifiedTaxRegistration[ram:ID/@schemeID = 'VAT']/substring(ram:ID, 1, 2)='NO')" />
      <xsl:otherwise>
        <svrl:failed-assert test="ram:SpecifiedTaxRegistration[ram:ID/@schemeID = 'VAT']/substring(ram:ID, 1, 2)='NO' and matches(ram:SpecifiedTaxRegistration[ram:ID/@schemeID = 'VAT']/substring(ram:ID,3) , '^[0-9]{9}MVA$') and u:mod11(substring(ram:SpecifiedTaxRegistration[ram:ID/@schemeID = 'VAT']/ram:ID, 3, 9)) or not(ram:SpecifiedTaxRegistration[ram:ID/@schemeID = 'VAT']/substring(ram:ID, 1, 2)='NO')">
          <xsl:attribute name="id">NO-R-001</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>For Norwegian suppliers, a VAT number MUST be the country code prefix NO followed by a valid Norwegian organization number (nine numbers) followed by the letters MVA.</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:apply-templates mode="M23" select="@*|*" />
  </xsl:template>
  <xsl:template match="text()" mode="M23" priority="-1" />
  <xsl:template match="@*|node()" mode="M23" priority="-2">
    <xsl:apply-templates mode="M23" select="@*|*" />
  </xsl:template>

<!--PATTERN -->
<xsl:variable name="DKSupplierCountry" select="rsm:CrossIndustryInvoice/rsm:SupplyChainTradeTransaction/ram:ApplicableHeaderTradeAgreement/ram:SellerTradeParty/ram:PostalTradeAddress/ram:CountryID" />
  <xsl:variable name="DKCustomerCountry" select="rsm:CrossIndustryInvoice/rsm:SupplyChainTradeTransaction/ram:ApplicableHeaderTradeAgreement/ram:BuyerTradeParty/ram:PostalTradeAddress/ram:CountryID" />

	<!--RULE -->
<xsl:template match="rsm:CrossIndustryInvoice[$DKSupplierCountry = 'DK']" mode="M24" priority="1003">
    <svrl:fired-rule context="rsm:CrossIndustryInvoice[$DKSupplierCountry = 'DK']" />

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="(normalize-space(rsm:SupplyChainTradeTransaction/ram:ApplicableHeaderTradeAgreement/ram:SellerTradeParty/ram:SpecifiedLegalOrganization/ram:ID/text()) != '')" />
      <xsl:otherwise>
        <svrl:failed-assert test="(normalize-space(rsm:SupplyChainTradeTransaction/ram:ApplicableHeaderTradeAgreement/ram:SellerTradeParty/ram:SpecifiedLegalOrganization/ram:ID/text()) != '')">
          <xsl:attribute name="id">DK-R-002</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>Danish suppliers MUST provide legal entity.</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="not((($DKCustomerCountry = 'DK') and (rsm:SupplyChainTradeTransaction/ram:ApplicableHeaderTradeSettlement/ram:SpecifiedTradeAllowanceCharge/ram:ReasonCode = 'ZZZ'))                               and not ((string-length(normalize-space(rsm:SupplyChainTradeTransaction/ram:ApplicableHeaderTradeSettlement/ram:SpecifiedTradeAllowanceCharge/ram:Reason/text())) = 4                                        and number(rsm:SupplyChainTradeTransaction/ram:ApplicableHeaderTradeSettlement/ram:SpecifiedTradeAllowanceCharge/ram:Reason) >= 0)                                        and number(rsm:SupplyChainTradeTransaction/ram:ApplicableHeaderTradeSettlement/ram:SpecifiedTradeAllowanceCharge/ram:Reason &lt;= 9999)                                       )                               )" />
      <xsl:otherwise>
        <svrl:failed-assert test="not((($DKCustomerCountry = 'DK') and (rsm:SupplyChainTradeTransaction/ram:ApplicableHeaderTradeSettlement/ram:SpecifiedTradeAllowanceCharge/ram:ReasonCode = 'ZZZ')) and not ((string-length(normalize-space(rsm:SupplyChainTradeTransaction/ram:ApplicableHeaderTradeSettlement/ram:SpecifiedTradeAllowanceCharge/ram:Reason/text())) = 4 and number(rsm:SupplyChainTradeTransaction/ram:ApplicableHeaderTradeSettlement/ram:SpecifiedTradeAllowanceCharge/ram:Reason) >= 0) and number(rsm:SupplyChainTradeTransaction/ram:ApplicableHeaderTradeSettlement/ram:SpecifiedTradeAllowanceCharge/ram:Reason &lt;= 9999) ) )">
          <xsl:attribute name="id">DK-R-004</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>When specifying non-VAT Taxes, Danish suppliers MUST use the SpecifiedTradeAllowanceCharge/ReasonCode="ZZZ" and the 4-digit Tax category MUST be specified as Reason</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="not(($DKCustomerCountry = 'DK') and                                    ( ((boolean(rsm:SupplyChainTradeTransaction/ram:ApplicableHeaderTradeAgreement/ram:SellerTradeParty/ram:GlobalID))                                      and (normalize-space(rsm:SupplyChainTradeTransaction/ram:ApplicableHeaderTradeAgreement/ram:SellerTradeParty/ram:GlobalID/@schemeID) = ''))                                    or                                     ((boolean(rsm:SupplyChainTradeTransaction/ram:ApplicableHeaderTradeAgreement/ram:BuyerTradeParty/ram:GlobalID))                                      and (normalize-space(rsm:SupplyChainTradeTransaction/ram:ApplicableHeaderTradeAgreement/ram:BuyerTradeParty/ram:GlobalID/@schemeID) = ''))                                   )                               )" />
      <xsl:otherwise>
        <svrl:failed-assert test="not(($DKCustomerCountry = 'DK') and ( ((boolean(rsm:SupplyChainTradeTransaction/ram:ApplicableHeaderTradeAgreement/ram:SellerTradeParty/ram:GlobalID)) and (normalize-space(rsm:SupplyChainTradeTransaction/ram:ApplicableHeaderTradeAgreement/ram:SellerTradeParty/ram:GlobalID/@schemeID) = '')) or ((boolean(rsm:SupplyChainTradeTransaction/ram:ApplicableHeaderTradeAgreement/ram:BuyerTradeParty/ram:GlobalID)) and (normalize-space(rsm:SupplyChainTradeTransaction/ram:ApplicableHeaderTradeAgreement/ram:BuyerTradeParty/ram:GlobalID/@schemeID) = '')) ) )">
          <xsl:attribute name="id">DK-R-013</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>For Danish Suppliers it is mandatory to use schemeID when GlobalID is used for SellerTradeParty or BuyerTradeParty</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="not((boolean(rsm:SupplyChainTradeTransaction/ram:ApplicableHeaderTradeAgreement/ram:SellerTradeParty/ram:SpecifiedLegalOrganization/ram:ID))                                      and (normalize-space(rsm:SupplyChainTradeTransaction/ram:ApplicableHeaderTradeAgreement/ram:SellerTradeParty/ram:SpecifiedLegalOrganization/ram:ID/@schemeID) != '0184')                               )" />
      <xsl:otherwise>
        <svrl:failed-assert test="not((boolean(rsm:SupplyChainTradeTransaction/ram:ApplicableHeaderTradeAgreement/ram:SellerTradeParty/ram:SpecifiedLegalOrganization/ram:ID)) and (normalize-space(rsm:SupplyChainTradeTransaction/ram:ApplicableHeaderTradeAgreement/ram:SellerTradeParty/ram:SpecifiedLegalOrganization/ram:ID/@schemeID) != '0184') )">
          <xsl:attribute name="id">DK-R-014</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>For Danish Suppliers it is mandatory to specify schemeID as "0184" when SpecifiedLegalOrganization is used for SellerTradeParty</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="not((($DKCustomerCountry = 'DK') and (normalize-space(rsm:ExchangedDocument/ram:TypeCode/text()) = '381'))                               and (number(rsm:SupplyChainTradeTransaction/ram:ApplicableHeaderTradeSettlement/ram:SpecifiedTradeSettlementHeaderMonetarySummation/ram:DuePayableAmount/text()) &lt; 0)                               )" />
      <xsl:otherwise>
        <svrl:failed-assert test="not((($DKCustomerCountry = 'DK') and (normalize-space(rsm:ExchangedDocument/ram:TypeCode/text()) = '381')) and (number(rsm:SupplyChainTradeTransaction/ram:ApplicableHeaderTradeSettlement/ram:SpecifiedTradeSettlementHeaderMonetarySummation/ram:DuePayableAmount/text()) &lt; 0) )">
          <xsl:attribute name="id">DK-R-016</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>For Danish Suppliers, a Credit note cannot have a negative total (DuePayableAmount)</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:apply-templates mode="M24" select="@*|*" />
  </xsl:template>

	<!--RULE -->
<xsl:template match="rsm:CrossIndustryInvoice[$DKSupplierCountry = 'DK']/rsm:SupplyChainTradeTransaction/ram:ApplicableHeaderTradeAgreement/ram:SellerTradeParty/ram:SpecifiedTaxRegistration" mode="M24" priority="1002">
    <svrl:fired-rule context="rsm:CrossIndustryInvoice[$DKSupplierCountry = 'DK']/rsm:SupplyChainTradeTransaction/ram:ApplicableHeaderTradeAgreement/ram:SellerTradeParty/ram:SpecifiedTaxRegistration" />

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="not(( (ram:ID/@schemeID = 'VA' or ram:ID/@schemeID = 'VAT') and (substring(ram:ID/text(), 1, 2) = 'DK'))                           and not( (string-length(ram:ID/text()) = 10)                                   and (string-length(translate(substring(ram:ID/text(), 3, 8), '1234567890', '')) = 0)                                   )                               )" />
      <xsl:otherwise>
        <svrl:failed-assert test="not(( (ram:ID/@schemeID = 'VA' or ram:ID/@schemeID = 'VAT') and (substring(ram:ID/text(), 1, 2) = 'DK')) and not( (string-length(ram:ID/text()) = 10) and (string-length(translate(substring(ram:ID/text(), 3, 8), '1234567890', '')) = 0) ) )">
          <xsl:attribute name="id">DK-R-015</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>For Danish Suppliers SellerTradeParty/SpecifiedTaxRegistration/ID must be specified  with DK followed by 8 digits (eg. DK12345678) if used.</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:apply-templates mode="M24" select="@*|*" />
  </xsl:template>

	<!--RULE -->
<xsl:template match="rsm:CrossIndustryInvoice[$DKSupplierCountry = 'DK' and $DKCustomerCountry = 'DK']/rsm:SupplyChainTradeTransaction/ram:ApplicableHeaderTradeSettlement/ram:SpecifiedTradeSettlementPaymentMeans" mode="M24" priority="1001">
    <svrl:fired-rule context="rsm:CrossIndustryInvoice[$DKSupplierCountry = 'DK' and $DKCustomerCountry = 'DK']/rsm:SupplyChainTradeTransaction/ram:ApplicableHeaderTradeSettlement/ram:SpecifiedTradeSettlementPaymentMeans" />

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="(contains(' 1 10 31 42 48 49 50 58 59 93 97 ', concat(' ', ram:TypeCode, ' ')))" />
      <xsl:otherwise>
        <svrl:failed-assert test="(contains(' 1 10 31 42 48 49 50 58 59 93 97 ', concat(' ', ram:TypeCode, ' ')))">
          <xsl:attribute name="id">DK-R-005</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>For Danish suppliers the following Payment means type codes are allowed: 1, 10, 31, 42, 48, 49, 50, 58, 59, 93 and 97</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="not( ((ram:TypeCode = '31') or (ram:TypeCode = '42'))                               and not((normalize-space(ram:PayeePartyCreditorFinancialAccount/ram:IBANID/text()) != '') and (normalize-space(ram:PayeeSpecifiedCreditorFinancialInstitution/ram:BICID/text()) != ''))                               )" />
      <xsl:otherwise>
        <svrl:failed-assert test="not( ((ram:TypeCode = '31') or (ram:TypeCode = '42')) and not((normalize-space(ram:PayeePartyCreditorFinancialAccount/ram:IBANID/text()) != '') and (normalize-space(ram:PayeeSpecifiedCreditorFinancialInstitution/ram:BICID/text()) != '')) )">
          <xsl:attribute name="id">DK-R-006</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>For Danish suppliers, bank account and registration account are mandatory if payment means is 31 or 42</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="not((ram:TypeCode = '49')                               and not((normalize-space(../ram:CreditorReferenceID/text()) != '')                                       and (normalize-space(ram:SpecifiedTradePaymentTerms/ram:DirectDebitMandateID/text()) != ''))                               )" />
      <xsl:otherwise>
        <svrl:failed-assert test="not((ram:TypeCode = '49') and not((normalize-space(../ram:CreditorReferenceID/text()) != '') and (normalize-space(ram:SpecifiedTradePaymentTerms/ram:DirectDebitMandateID/text()) != '')) )">
          <xsl:attribute name="id">DK-R-007</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>For Danish suppliers DirectDebitMandateID and CreditorReferenceID are mandatory when payment means is 49</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="not((ram:TypeCode = '50')                               and not(((substring(../ram:PaymentReference, 0, 4) = '01#')                                         or (substring(../ram:PaymentReference, 0, 4) = '04#')                                         or (substring(../ram:PaymentReference, 0, 4) = '15#'))                                       and (string-length(ram:PayeePartyCreditorFinancialAccount/ram:IBANID/text()) = 7)                                       )                               )" />
      <xsl:otherwise>
        <svrl:failed-assert test="not((ram:TypeCode = '50') and not(((substring(../ram:PaymentReference, 0, 4) = '01#') or (substring(../ram:PaymentReference, 0, 4) = '04#') or (substring(../ram:PaymentReference, 0, 4) = '15#')) and (string-length(ram:PayeePartyCreditorFinancialAccount/ram:IBANID/text()) = 7) ) )">
          <xsl:attribute name="id">DK-R-008</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>For Danish Suppliers PaymentReference is mandatory and MUST start with 01#, 04# or 15# (kortartkode), and PayeePartyCreditorFinancialAccount/IBANID (Giro kontonummer) is mandatory and must be 7 characters long, when payment means equals 50 (Giro)</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="not((ram:TypeCode = '50')                               and ((substring(../ram:PaymentReference, 0, 4) = '04#')                                     or (substring(../ram:PaymentReference, 0, 4)  = '15#'))                               and not(string-length(../ram:PaymentReference) = 19)                               )" />
      <xsl:otherwise>
        <svrl:failed-assert test="not((ram:TypeCode = '50') and ((substring(../ram:PaymentReference, 0, 4) = '04#') or (substring(../ram:PaymentReference, 0, 4) = '15#')) and not(string-length(../ram:PaymentReference) = 19) )">
          <xsl:attribute name="id">DK-R-009</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>For Danish Suppliers if the PaymentReference is prefixed with 04# or 015# the 16 digits instruction Id must be added to the PaymentReference eg. "04#1234567890123456" when Payment means equals 50 (Giro)</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="not((ram:TypeCode = '93')                               and not(((substring(../ram:PaymentReference, 0, 4) = '71#')                                         or (substring(../ram:PaymentReference, 0, 4) = '73#')                                         or (substring(../ram:PaymentReference, 0, 4) = '75#'))                                       and (string-length(ram:PayeePartyCreditorFinancialAccount/ram:IBANID/text()) = 8)                                       )                               )" />
      <xsl:otherwise>
        <svrl:failed-assert test="not((ram:TypeCode = '93') and not(((substring(../ram:PaymentReference, 0, 4) = '71#') or (substring(../ram:PaymentReference, 0, 4) = '73#') or (substring(../ram:PaymentReference, 0, 4) = '75#')) and (string-length(ram:PayeePartyCreditorFinancialAccount/ram:IBANID/text()) = 8) ) )">
          <xsl:attribute name="id">DK-R-010</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>For Danish Suppliers the PaymentReference is mandatory and MUST start with 71#, 73# or 75# (kortartkode) and and PayeePartyCreditorFinancialAccount/IBANID  (Kreditornummer) is mandatory and must be exactly 8 characters long, when Payment means equals 93 (FIK)</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="not((ram:TypeCode = '93')                               and ((substring(../ram:PaymentReference, 0, 4) = '71#')                                     or (substring(../ram:PaymentReference, 0, 4)  = '75#'))                               and not((string-length(../ram:PaymentReference) = 18)                                     or (string-length(../ram:PaymentReference) = 19))                               )" />
      <xsl:otherwise>
        <svrl:failed-assert test="not((ram:TypeCode = '93') and ((substring(../ram:PaymentReference, 0, 4) = '71#') or (substring(../ram:PaymentReference, 0, 4) = '75#')) and not((string-length(../ram:PaymentReference) = 18) or (string-length(../ram:PaymentReference) = 19)) )">
          <xsl:attribute name="id">DK-R-011</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>For Danish Suppliers if the PaymentReference is prefixed with 71# or 75# the 15-16 digits instruction Id must be added to the PaymentReference eg. "71#1234567890123456" when payment Method equals 93 (FIK)</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:apply-templates mode="M24" select="@*|*" />
  </xsl:template>

	<!--RULE -->
<xsl:template match="rsm:CrossIndustryInvoice[$DKSupplierCountry = 'DK' and $DKCustomerCountry = 'DK']/rsm:SupplyChainTradeTransaction/ram:IncludedSupplyChainTradeLineItem" mode="M24" priority="1000">
    <svrl:fired-rule context="rsm:CrossIndustryInvoice[$DKSupplierCountry = 'DK' and $DKCustomerCountry = 'DK']/rsm:SupplyChainTradeTransaction/ram:IncludedSupplyChainTradeLineItem" />

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="not((ram:SpecifiedTradeProduct/ram:DesignatedProductClassification/ram:ClassCode/@listID = 'MP')                               and not((ram:SpecifiedTradeProduct/ram:DesignatedProductClassification/ram:ClassCode/@listVersionID = '19.05.01')                                      or (ram:SpecifiedTradeProduct/ram:DesignatedProductClassification/ram:ClassCode/@listVersionID = '19.0501')                                )                               )" />
      <xsl:otherwise>
        <svrl:failed-assert test="not((ram:SpecifiedTradeProduct/ram:DesignatedProductClassification/ram:ClassCode/@listID = 'MP') and not((ram:SpecifiedTradeProduct/ram:DesignatedProductClassification/ram:ClassCode/@listVersionID = '19.05.01') or (ram:SpecifiedTradeProduct/ram:DesignatedProductClassification/ram:ClassCode/@listVersionID = '19.0501') ) )">
          <xsl:attribute name="id">DK-R-003</xsl:attribute>
          <xsl:attribute name="flag">warning</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>If ItemClassification is provided from Danish suppliers, UNSPSC version 19.0501 should be used</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:apply-templates mode="M24" select="@*|*" />
  </xsl:template>
  <xsl:template match="text()" mode="M24" priority="-1" />
  <xsl:template match="@*|node()" mode="M24" priority="-2">
    <xsl:apply-templates mode="M24" select="@*|*" />
  </xsl:template>

<!--PATTERN -->


	<!--RULE -->
<xsl:template match="ram:SellerTradeParty[$supplierCountry = 'IT']/ram:SpecifiedTaxRegistration" mode="M25" priority="1001">
    <svrl:fired-rule context="ram:SellerTradeParty[$supplierCountry = 'IT']/ram:SpecifiedTaxRegistration" />

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test=" ram:ID[normalize-space(@schemeID) !='FC'] or matches(normalize-space(ram:ID[normalize-space(@schemeID) ='FC']) ,'^[A-Z0-9]{11,16}$') " />
      <xsl:otherwise>
        <svrl:failed-assert test="ram:ID[normalize-space(@schemeID) !='FC'] or matches(normalize-space(ram:ID[normalize-space(@schemeID) ='FC']) ,'^[A-Z0-9]{11,16}$')">
          <xsl:attribute name="id">IT-R-001</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text> [IT-R-001] BT-32 (Seller tax registration identifier) - For Italian suppliers BT-32 minimum length 11 and maximum length shall be 16.  Per i fornitori italiani il BT-32 deve avere una lunghezza tra 11 e 16 caratteri</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:apply-templates mode="M25" select="@*|*" />
  </xsl:template>

	<!--RULE -->
<xsl:template match="ram:SellerTradeParty[$supplierCountry = 'IT']" mode="M25" priority="1000">
    <svrl:fired-rule context="ram:SellerTradeParty[$supplierCountry = 'IT']" />

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="(ram:PostalTradeAddress/ram:LineOne)" />
      <xsl:otherwise>
        <svrl:failed-assert test="(ram:PostalTradeAddress/ram:LineOne)">
          <xsl:attribute name="id">IT-R-002</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text> [IT-R-002] BT-35 (Seller address line 1) - Italian suppliers MUST provide the postal address line 1 - I fornitori italiani devono indicare l'indirizzo postale.</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="(ram:PostalTradeAddress/ram:CityName)" />
      <xsl:otherwise>
        <svrl:failed-assert test="(ram:PostalTradeAddress/ram:CityName)">
          <xsl:attribute name="id">IT-R-003</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text> [IT-R-003] BT-37 (Seller city) - Italian suppliers MUST provide the postal address city - I fornitori italiani devono indicare la città di residenza.</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="(ram:PostalTradeAddress/ram:PostcodeCode)" />
      <xsl:otherwise>
        <svrl:failed-assert test="(ram:PostalTradeAddress/ram:PostcodeCode)">
          <xsl:attribute name="id">IT-R-004</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text> [IT-R-004] BT-38 (Seller post code) - Italian suppliers MUST provide the postal address post code - I fornitori italiani devono indicare il CAP di residenza.</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:apply-templates mode="M25" select="@*|*" />
  </xsl:template>
  <xsl:template match="text()" mode="M25" priority="-1" />
  <xsl:template match="@*|node()" mode="M25" priority="-2">
    <xsl:apply-templates mode="M25" select="@*|*" />
  </xsl:template>

<!--PATTERN -->


	<!--RULE -->
<xsl:template match="rsm:CrossIndustryInvoice/rsm:SupplyChainTradeTransaction/ram:ApplicableHeaderTradeAgreement/ram:SellerTradeParty[ram:PostalTradeAddress/ram:CountryID = 'SE' and ram:SpecifiedTaxRegistration/substring(ram:ID[@schemeID = 'VAT'], 1, 2) = 'SE']" mode="M26" priority="1007">
    <svrl:fired-rule context="rsm:CrossIndustryInvoice/rsm:SupplyChainTradeTransaction/ram:ApplicableHeaderTradeAgreement/ram:SellerTradeParty[ram:PostalTradeAddress/ram:CountryID = 'SE' and ram:SpecifiedTaxRegistration/substring(ram:ID[@schemeID = 'VAT'], 1, 2) = 'SE']" />

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="string-length(normalize-space(ram:SpecifiedTaxRegistration/ram:ID[@schemeID = 'VAT'])) = 14" />
      <xsl:otherwise>
        <svrl:failed-assert test="string-length(normalize-space(ram:SpecifiedTaxRegistration/ram:ID[@schemeID = 'VAT'])) = 14">
          <xsl:attribute name="id">SE-R-001</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>For Swedish suppliers, Swedish VAT-numbers must consist of 14 characters.</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="string(number(substring(ram:SpecifiedTaxRegistration/ram:ID[@schemeID = 'VAT'], 3, 12))) != 'NaN'" />
      <xsl:otherwise>
        <svrl:failed-assert test="string(number(substring(ram:SpecifiedTaxRegistration/ram:ID[@schemeID = 'VAT'], 3, 12))) != 'NaN'">
          <xsl:attribute name="id">SE-R-002</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>For Swedish suppliers, the Swedish VAT-numbers must have the trailing 12 characters in numeric form</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:apply-templates mode="M26" select="@*|*" />
  </xsl:template>

	<!--RULE -->
<xsl:template match="rsm:CrossIndustryInvoice/rsm:SupplyChainTradeTransaction/ram:ApplicableHeaderTradeAgreement/ram:SellerTradeParty/ram:SpecifiedLegalOrganization[../ram:PostalTradeAddress/ram:CountryID = 'SE' and ram:ID]" mode="M26" priority="1006">
    <svrl:fired-rule context="rsm:CrossIndustryInvoice/rsm:SupplyChainTradeTransaction/ram:ApplicableHeaderTradeAgreement/ram:SellerTradeParty/ram:SpecifiedLegalOrganization[../ram:PostalTradeAddress/ram:CountryID = 'SE' and ram:ID]" />

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="string(number(ram:ID)) != 'NaN'" />
      <xsl:otherwise>
        <svrl:failed-assert test="string(number(ram:ID)) != 'NaN'">
          <xsl:attribute name="id">SE-R-003</xsl:attribute>
          <xsl:attribute name="flag">warning</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>Swedish organisation numbers should be numeric.</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="string-length(normalize-space(ram:ID)) = 10" />
      <xsl:otherwise>
        <svrl:failed-assert test="string-length(normalize-space(ram:ID)) = 10">
          <xsl:attribute name="id">SE-R-004</xsl:attribute>
          <xsl:attribute name="flag">warning</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>Swedish organisation numbers consist of 10 characters.</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:apply-templates mode="M26" select="@*|*" />
  </xsl:template>

	<!--RULE -->
<xsl:template match="rsm:CrossIndustryInvoice/rsm:SupplyChainTradeTransaction/ram:ApplicableHeaderTradeAgreement/ram:SellerTradeParty[ram:PostalTradeAddress/ram:CountryID = 'SE' and ram:SpecifiedLegalOrganization/ram:ID]/ram:SpecifiedTaxRegistration/ram:ID[@schemeID = 'FC']" mode="M26" priority="1005">
    <svrl:fired-rule context="rsm:CrossIndustryInvoice/rsm:SupplyChainTradeTransaction/ram:ApplicableHeaderTradeAgreement/ram:SellerTradeParty[ram:PostalTradeAddress/ram:CountryID = 'SE' and ram:SpecifiedLegalOrganization/ram:ID]/ram:SpecifiedTaxRegistration/ram:ID[@schemeID = 'FC']" />

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="normalize-space(upper-case(.)) = 'GODKÄND FÖR F-SKATT'" />
      <xsl:otherwise>
        <svrl:failed-assert test="normalize-space(upper-case(.)) = 'GODKÄND FÖR F-SKATT'">
          <xsl:attribute name="id">SE-R-005</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>For Swedish suppliers, when using Seller tax registration identifier, 'Godkänd för F-skatt' must be stated</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:apply-templates mode="M26" select="@*|*" />
  </xsl:template>

	<!--RULE -->
<xsl:template match="//ram:ApplicableTradeTax[/rsm:CrossIndustryInvoice/rsm:SupplyChainTradeTransaction/ram:ApplicableHeaderTradeAgreement/ram:SellerTradeParty[ram:PostalTradeAddress/ram:CountryID = 'SE']/ram:SpecifiedTaxRegistration[substring(ram:ID[@schemeID = 'VAT'], 1, 2) = 'SE']] | //ram:CategoryTradeTax[/rsm:CrossIndustryInvoice/rsm:SupplyChainTradeTransaction/ram:ApplicableHeaderTradeAgreement/ram:SellerTradeParty[ram:PostalTradeAddress/ram:CountryID = 'SE']/ram:SpecifiedTaxRegistration[substring(ram:ID[@schemeID = 'VAT'], 1, 2) = 'SE']]" mode="M26" priority="1004">
    <svrl:fired-rule context="//ram:ApplicableTradeTax[/rsm:CrossIndustryInvoice/rsm:SupplyChainTradeTransaction/ram:ApplicableHeaderTradeAgreement/ram:SellerTradeParty[ram:PostalTradeAddress/ram:CountryID = 'SE']/ram:SpecifiedTaxRegistration[substring(ram:ID[@schemeID = 'VAT'], 1, 2) = 'SE']] | //ram:CategoryTradeTax[/rsm:CrossIndustryInvoice/rsm:SupplyChainTradeTransaction/ram:ApplicableHeaderTradeAgreement/ram:SellerTradeParty[ram:PostalTradeAddress/ram:CountryID = 'SE']/ram:SpecifiedTaxRegistration[substring(ram:ID[@schemeID = 'VAT'], 1, 2) = 'SE']]" />

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="number(ram:RateApplicablePercent) = 25 or number(ram:RateApplicablePercent) = 12 or number(ram:RateApplicablePercent) = 6" />
      <xsl:otherwise>
        <svrl:failed-assert test="number(ram:RateApplicablePercent) = 25 or number(ram:RateApplicablePercent) = 12 or number(ram:RateApplicablePercent) = 6">
          <xsl:attribute name="id">SE-R-006</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>For Swedish suppliers, only standard VAT rate of 6, 12 or 25 are used</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:apply-templates mode="M26" select="@*|*" />
  </xsl:template>

	<!--RULE -->
<xsl:template match="/rsm:CrossIndustryInvoice/rsm:SupplyChainTradeTransaction[ram:ApplicableHeaderTradeAgreement/ram:SellerTradeParty[ram:PostalTradeAddress/ram:CountryID = 'SE']]/ram:ApplicableHeaderTradeSettlement/ram:SpecifiedTradeSettlementPaymentMeans[normalize-space(ram:TypeCode) = '30' and normalize-space(ram:PayeeSpecifiedCreditorFinancialInstitution/ram:BICID) = 'SE:PLUSGIRO']/ram:PayeePartyCreditorFinancialAccount/ram:ProprietaryID" mode="M26" priority="1003">
    <svrl:fired-rule context="/rsm:CrossIndustryInvoice/rsm:SupplyChainTradeTransaction[ram:ApplicableHeaderTradeAgreement/ram:SellerTradeParty[ram:PostalTradeAddress/ram:CountryID = 'SE']]/ram:ApplicableHeaderTradeSettlement/ram:SpecifiedTradeSettlementPaymentMeans[normalize-space(ram:TypeCode) = '30' and normalize-space(ram:PayeeSpecifiedCreditorFinancialInstitution/ram:BICID) = 'SE:PLUSGIRO']/ram:PayeePartyCreditorFinancialAccount/ram:ProprietaryID" />

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="string(number(normalize-space(.))) != 'NaN'" />
      <xsl:otherwise>
        <svrl:failed-assert test="string(number(normalize-space(.))) != 'NaN'">
          <xsl:attribute name="id">SE-R-007</xsl:attribute>
          <xsl:attribute name="flag">warning</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>For Swedish suppliers using Plusgiro, the Account ID must be numeric </svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="string-length(normalize-space(.)) >= 2 and string-length(normalize-space(.)) &lt;= 8" />
      <xsl:otherwise>
        <svrl:failed-assert test="string-length(normalize-space(.)) >= 2 and string-length(normalize-space(.)) &lt;= 8">
          <xsl:attribute name="id">SE-R-010</xsl:attribute>
          <xsl:attribute name="flag">warning</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>For Swedish suppliers using Plusgiro, the Account ID must have 2-8 characters</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:apply-templates mode="M26" select="@*|*" />
  </xsl:template>

	<!--RULE -->
<xsl:template match="/rsm:CrossIndustryInvoice/rsm:SupplyChainTradeTransaction[ram:ApplicableHeaderTradeAgreement/ram:SellerTradeParty[ram:PostalTradeAddress/ram:CountryID = 'SE']]/ram:ApplicableHeaderTradeSettlement/ram:SpecifiedTradeSettlementPaymentMeans[normalize-space(ram:TypeCode) = '30' and normalize-space(ram:PayeeSpecifiedCreditorFinancialInstitution/ram:BICID) = 'SE:BANKGIRO']/ram:PayeePartyCreditorFinancialAccount/ram:ProprietaryID" mode="M26" priority="1002">
    <svrl:fired-rule context="/rsm:CrossIndustryInvoice/rsm:SupplyChainTradeTransaction[ram:ApplicableHeaderTradeAgreement/ram:SellerTradeParty[ram:PostalTradeAddress/ram:CountryID = 'SE']]/ram:ApplicableHeaderTradeSettlement/ram:SpecifiedTradeSettlementPaymentMeans[normalize-space(ram:TypeCode) = '30' and normalize-space(ram:PayeeSpecifiedCreditorFinancialInstitution/ram:BICID) = 'SE:BANKGIRO']/ram:PayeePartyCreditorFinancialAccount/ram:ProprietaryID" />

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="string(number(normalize-space(.))) != 'NaN'" />
      <xsl:otherwise>
        <svrl:failed-assert test="string(number(normalize-space(.))) != 'NaN'">
          <xsl:attribute name="id">SE-R-008</xsl:attribute>
          <xsl:attribute name="flag">warning</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>For Swedish suppliers using Bankgiro, the Account ID must be numeric </svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="string-length(normalize-space(.)) = 7 or string-length(normalize-space(.)) = 8" />
      <xsl:otherwise>
        <svrl:failed-assert test="string-length(normalize-space(.)) = 7 or string-length(normalize-space(.)) = 8">
          <xsl:attribute name="id">SE-R-009</xsl:attribute>
          <xsl:attribute name="flag">warning</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>For Swedish suppliers using Bankgiro, the Account ID must have 7-8 characters</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:apply-templates mode="M26" select="@*|*" />
  </xsl:template>

	<!--RULE -->
<xsl:template match="/rsm:CrossIndustryInvoice/rsm:SupplyChainTradeTransaction[ram:ApplicableHeaderTradeAgreement/ram:SellerTradeParty[ram:PostalTradeAddress/ram:CountryID = 'SE']]/ram:ApplicableHeaderTradeSettlement/ram:SpecifiedTradeSettlementPaymentMeans[normalize-space(ram:TypeCode) = '50' or normalize-space(ram:TypeCode) = '56']" mode="M26" priority="1001">
    <svrl:fired-rule context="/rsm:CrossIndustryInvoice/rsm:SupplyChainTradeTransaction[ram:ApplicableHeaderTradeAgreement/ram:SellerTradeParty[ram:PostalTradeAddress/ram:CountryID = 'SE']]/ram:ApplicableHeaderTradeSettlement/ram:SpecifiedTradeSettlementPaymentMeans[normalize-space(ram:TypeCode) = '50' or normalize-space(ram:TypeCode) = '56']" />

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="false()" />
      <xsl:otherwise>
        <svrl:failed-assert test="false()">
          <xsl:attribute name="id">SE-R-011</xsl:attribute>
          <xsl:attribute name="flag">warning</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>For Swedish suppliers using Swedish Bankgiro or Plusgiro, the proper way to indicate this is to use Code 30 for PaymentMeans and FinancialInstitutionBranch ID with code SE:BANKGIRO or SE:PLUSGIRO</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:apply-templates mode="M26" select="@*|*" />
  </xsl:template>

	<!--RULE -->
<xsl:template match="/rsm:CrossIndustryInvoice/rsm:SupplyChainTradeTransaction[ram:ApplicableHeaderTradeAgreement/ram:SellerTradeParty[ram:PostalTradeAddress/ram:CountryID = 'SE'] and ram:ApplicableHeaderTradeAgreement/ram:BuyerTradeParty[ram:PostalTradeAddress/ram:CountryID = 'SE']]/ram:ApplicableHeaderTradeSettlement/ram:SpecifiedTradeSettlementPaymentMeans[normalize-space(ram:TypeCode) = '31']" mode="M26" priority="1000">
    <svrl:fired-rule context="/rsm:CrossIndustryInvoice/rsm:SupplyChainTradeTransaction[ram:ApplicableHeaderTradeAgreement/ram:SellerTradeParty[ram:PostalTradeAddress/ram:CountryID = 'SE'] and ram:ApplicableHeaderTradeAgreement/ram:BuyerTradeParty[ram:PostalTradeAddress/ram:CountryID = 'SE']]/ram:ApplicableHeaderTradeSettlement/ram:SpecifiedTradeSettlementPaymentMeans[normalize-space(ram:TypeCode) = '31']" />

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="false()" />
      <xsl:otherwise>
        <svrl:failed-assert test="false()">
          <xsl:attribute name="id">SE-R-012</xsl:attribute>
          <xsl:attribute name="flag">warning</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>For domestic transactions between Swedish trading partners, credit transfer should be indicated by PaymentMeansCode=”30”</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:apply-templates mode="M26" select="@*|*" />
  </xsl:template>
  <xsl:template match="text()" mode="M26" priority="-1" />
  <xsl:template match="@*|node()" mode="M26" priority="-2">
    <xsl:apply-templates mode="M26" select="@*|*" />
  </xsl:template>

<!--PATTERN -->
<xsl:variable name="supplierCountryIsNL" select="(upper-case(normalize-space(/rsm:CrossIndustryInvoice/rsm:SupplyChainTradeTransaction/ram:ApplicableHeaderTradeAgreement/ram:SellerTradeParty/ram:PostalTradeAddress/ram:CountryID)) = 'NL')" />
  <xsl:variable name="customerCountryIsNL" select="(upper-case(normalize-space(/rsm:CrossIndustryInvoice/rsm:SupplyChainTradeTransaction/ram:ApplicableHeaderTradeAgreement/ram:BuyerTradeParty/ram:PostalTradeAddress/ram:CountryID)) = 'NL')" />
  <xsl:variable name="taxRepresentativeCountryIsNL" select="(upper-case(normalize-space(/rsm:CrossIndustryInvoice/rsm:SupplyChainTradeTransaction/ram:ApplicableHeaderTradeAgreement/ram:SellerTaxRepresentativeTradeParty/ram:PostalTradeAddress/ram:CountryID)) = 'NL')" />

	<!--RULE -->
<xsl:template match="/rsm:CrossIndustryInvoice/rsm:ExchangedDocument[some $code in tokenize('81 83 381 396 532', '\s') satisfies normalize-space(ram:TypeCode) = $code][$supplierCountryIsNL]" mode="M27" priority="1008">
    <svrl:fired-rule context="/rsm:CrossIndustryInvoice/rsm:ExchangedDocument[some $code in tokenize('81 83 381 396 532', '\s') satisfies normalize-space(ram:TypeCode) = $code][$supplierCountryIsNL]" />

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="//ram:ApplicableHeaderTradeSettlement/ram:InvoiceReferencedDocument/ram:IssuerAssignedID" />
      <xsl:otherwise>
        <svrl:failed-assert test="//ram:ApplicableHeaderTradeSettlement/ram:InvoiceReferencedDocument/ram:IssuerAssignedID">
          <xsl:attribute name="id">NL-R-001</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>[NL-R-001] For suppliers in the Netherlands, if the document is a creditnote, the document MUST contain an invoice reference (ram:ApplicableHeaderTradeSettlement/ram:InvoiceReferencedDocument/ram:IssuerAssignedID)</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:apply-templates mode="M27" select="@*|*" />
  </xsl:template>

	<!--RULE -->
<xsl:template match="/rsm:CrossIndustryInvoice/rsm:SupplyChainTradeTransaction/ram:ApplicableHeaderTradeAgreement/ram:SellerTradeParty/ram:PostalTradeAddress[$supplierCountryIsNL]" mode="M27" priority="1007">
    <svrl:fired-rule context="/rsm:CrossIndustryInvoice/rsm:SupplyChainTradeTransaction/ram:ApplicableHeaderTradeAgreement/ram:SellerTradeParty/ram:PostalTradeAddress[$supplierCountryIsNL]" />

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="ram:LineOne and ram:CityName and ram:PostcodeCode" />
      <xsl:otherwise>
        <svrl:failed-assert test="ram:LineOne and ram:CityName and ram:PostcodeCode">
          <xsl:attribute name="id">NL-R-002</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>[NL-R-002] For suppliers in the Netherlands the supplier's address (ram:SellerTradeParty/ram:PostalTradeAddress) MUST contain street name (ram:LineOne), city (ram:CityName) and post code (ram:PostcodeCode)</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:apply-templates mode="M27" select="@*|*" />
  </xsl:template>

	<!--RULE -->
<xsl:template match="/rsm:CrossIndustryInvoice/rsm:SupplyChainTradeTransaction/ram:ApplicableHeaderTradeAgreement/ram:SellerTradeParty/ram:SpecifiedLegalOrganization/ram:ID[$supplierCountryIsNL]" mode="M27" priority="1006">
    <svrl:fired-rule context="/rsm:CrossIndustryInvoice/rsm:SupplyChainTradeTransaction/ram:ApplicableHeaderTradeAgreement/ram:SellerTradeParty/ram:SpecifiedLegalOrganization/ram:ID[$supplierCountryIsNL]" />

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="(contains(concat(' ', string-join(@schemeID, ' '), ' '), ' 0106 ') or contains(concat(' ', string-join(@schemeID, ' '), ' '), ' 0190 ')) and (normalize-space(.) != '')" />
      <xsl:otherwise>
        <svrl:failed-assert test="(contains(concat(' ', string-join(@schemeID, ' '), ' '), ' 0106 ') or contains(concat(' ', string-join(@schemeID, ' '), ' '), ' 0190 ')) and (normalize-space(.) != '')">
          <xsl:attribute name="id">NL-R-003</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>[NL-R-003] For suppliers in the Netherlands, the legal entity identifier MUST be either a KVK or OIN number (schemeID 0106 or 0190)</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:apply-templates mode="M27" select="@*|*" />
  </xsl:template>

	<!--RULE -->
<xsl:template match="/rsm:CrossIndustryInvoice/rsm:SupplyChainTradeTransaction/ram:ApplicableHeaderTradeAgreement/ram:BuyerTradeParty/ram:PostalTradeAddress[$supplierCountryIsNL and $customerCountryIsNL]" mode="M27" priority="1005">
    <svrl:fired-rule context="/rsm:CrossIndustryInvoice/rsm:SupplyChainTradeTransaction/ram:ApplicableHeaderTradeAgreement/ram:BuyerTradeParty/ram:PostalTradeAddress[$supplierCountryIsNL and $customerCountryIsNL]" />

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="ram:LineOne and ram:CityName and ram:PostcodeCode" />
      <xsl:otherwise>
        <svrl:failed-assert test="ram:LineOne and ram:CityName and ram:PostcodeCode">
          <xsl:attribute name="id">NL-R-004</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>[NL-R-004] For suppliers in the Netherlands, if the customer is in the Netherlands, the customer address (ram:BuyerTradeParty/ram:PostalTradeAddress) MUST contain street name (ram:LineOne), city (ram:CityName) and post code (ram:PostcodeCode)</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:apply-templates mode="M27" select="@*|*" />
  </xsl:template>

	<!--RULE -->
<xsl:template match="/rsm:CrossIndustryInvoice/rsm:SupplyChainTradeTransaction/ram:ApplicableHeaderTradeAgreement/ram:BuyerTradeParty/ram:SpecifiedLegalOrganization/ram:ID[$supplierCountryIsNL and $customerCountryIsNL]" mode="M27" priority="1004">
    <svrl:fired-rule context="/rsm:CrossIndustryInvoice/rsm:SupplyChainTradeTransaction/ram:ApplicableHeaderTradeAgreement/ram:BuyerTradeParty/ram:SpecifiedLegalOrganization/ram:ID[$supplierCountryIsNL and $customerCountryIsNL]" />

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="           (contains(concat(' ', string-join(@schemeID, ' '), ' '), ' 0106 ')            or            contains(concat(' ', string-join(@schemeID, ' '), ' '), ' 0190 ')           ) and (normalize-space(.) != '')       " />
      <xsl:otherwise>
        <svrl:failed-assert test="(contains(concat(' ', string-join(@schemeID, ' '), ' '), ' 0106 ') or contains(concat(' ', string-join(@schemeID, ' '), ' '), ' 0190 ') ) and (normalize-space(.) != '')">
          <xsl:attribute name="id">NL-R-005</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>[NL-R-005] For suppliers in the Netherlands, if the customer is in the Netherlands, the customer's legal entity identifier MUST be either a KVK or OIN number (schemeID 0106 or 0190)</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:apply-templates mode="M27" select="@*|*" />
  </xsl:template>

	<!--RULE -->
<xsl:template match="rsm:CrossIndustryInvoice/rsm:SupplyChainTradeTransaction/ram:ApplicableHeaderTradeAgreement/ram:SellerTaxRepresentativeTradeParty/ram:PostalTradeAddress[$supplierCountryIsNL and $taxRepresentativeCountryIsNL]" mode="M27" priority="1003">
    <svrl:fired-rule context="rsm:CrossIndustryInvoice/rsm:SupplyChainTradeTransaction/ram:ApplicableHeaderTradeAgreement/ram:SellerTaxRepresentativeTradeParty/ram:PostalTradeAddress[$supplierCountryIsNL and $taxRepresentativeCountryIsNL]" />

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="ram:LineOne and ram:CityName and ram:PostcodeCode" />
      <xsl:otherwise>
        <svrl:failed-assert test="ram:LineOne and ram:CityName and ram:PostcodeCode">
          <xsl:attribute name="id">NL-R-006</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>[NL-R-006] For suppliers in the Netherlands, if the fiscal representative is in the Netherlands, the representative's address (ram:SellerTaxRepresentativeTradeParty/ram:PostalTradeAddress) MUST contain street name (ram:LineOne), city (ram:CityName) and post code (ram:PostcodeCode)</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:apply-templates mode="M27" select="@*|*" />
  </xsl:template>

	<!--RULE -->
<xsl:template match="/rsm:CrossIndustryInvoice/rsm:SupplyChainTradeTransaction/ram:ApplicableHeaderTradeSettlement/ram:SpecifiedTradeSettlementHeaderMonetarySummation[$supplierCountryIsNL]" mode="M27" priority="1002">
    <svrl:fired-rule context="/rsm:CrossIndustryInvoice/rsm:SupplyChainTradeTransaction/ram:ApplicableHeaderTradeSettlement/ram:SpecifiedTradeSettlementHeaderMonetarySummation[$supplierCountryIsNL]" />

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="xs:decimal(ram:DuePayableAmount) &lt;= 0.0 or (/rsm:CrossIndustryInvoice/rsm:SupplyChainTradeTransaction/ram:ApplicableHeaderTradeSettlement/ram:SpecifiedTradeSettlementPaymentMeans)" />
      <xsl:otherwise>
        <svrl:failed-assert test="xs:decimal(ram:DuePayableAmount) &lt;= 0.0 or (/rsm:CrossIndustryInvoice/rsm:SupplyChainTradeTransaction/ram:ApplicableHeaderTradeSettlement/ram:SpecifiedTradeSettlementPaymentMeans)">
          <xsl:attribute name="id">NL-R-007</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>[NL-R-007] For suppliers in the Netherlands, the supplier MUST provide a means of payment (ram:SpecifiedTradeSettlementPaymentMeans) if the payment is from customer to supplier</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:apply-templates mode="M27" select="@*|*" />
  </xsl:template>

	<!--RULE -->
<xsl:template match="/rsm:CrossIndustryInvoice/rsm:SupplyChainTradeTransaction/ram:ApplicableHeaderTradeSettlement/ram:SpecifiedTradeSettlementPaymentMeans[$supplierCountryIsNL]" mode="M27" priority="1001">
    <svrl:fired-rule context="/rsm:CrossIndustryInvoice/rsm:SupplyChainTradeTransaction/ram:ApplicableHeaderTradeSettlement/ram:SpecifiedTradeSettlementPaymentMeans[$supplierCountryIsNL]" />

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="normalize-space(ram:TypeCode) = '30' or                 normalize-space(ram:TypeCode) = '48' or                 normalize-space(ram:TypeCode) = '49' or                 normalize-space(ram:TypeCode) = '57' or                 normalize-space(ram:TypeCode) = '58' or                 normalize-space(ram:TypeCode) = '59'" />
      <xsl:otherwise>
        <svrl:failed-assert test="normalize-space(ram:TypeCode) = '30' or normalize-space(ram:TypeCode) = '48' or normalize-space(ram:TypeCode) = '49' or normalize-space(ram:TypeCode) = '57' or normalize-space(ram:TypeCode) = '58' or normalize-space(ram:TypeCode) = '59'">
          <xsl:attribute name="id">NL-R-008</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>[NL-R-008] For suppliers in the Netherlands, the payment means code (ram:SpecifiedTradeSettlementPaymentMeans/ram:TypeCode) MUST be one of 30, 48, 49, 57, 58 or 59</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:apply-templates mode="M27" select="@*|*" />
  </xsl:template>

	<!--RULE -->
<xsl:template match="rsm:CrossIndustryInvoice/rsm:SupplyChainTradeTransaction/ram:IncludedSupplyChainTradeLineItem/ram:SpecifiedLineTradeAgreement/ram:BuyerOrderReferencedDocument/ram:LineID[$supplierCountryIsNL]" mode="M27" priority="1000">
    <svrl:fired-rule context="rsm:CrossIndustryInvoice/rsm:SupplyChainTradeTransaction/ram:IncludedSupplyChainTradeLineItem/ram:SpecifiedLineTradeAgreement/ram:BuyerOrderReferencedDocument/ram:LineID[$supplierCountryIsNL]" />

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="exists(/rsm:CrossIndustryInvoice/rsm:SupplyChainTradeTransaction/ram:ApplicableHeaderTradeAgreement/ram:BuyerOrderReferencedDocument/ram:IssuerAssignedID)" />
      <xsl:otherwise>
        <svrl:failed-assert test="exists(/rsm:CrossIndustryInvoice/rsm:SupplyChainTradeTransaction/ram:ApplicableHeaderTradeAgreement/ram:BuyerOrderReferencedDocument/ram:IssuerAssignedID)">
          <xsl:attribute name="id">NL-R-009</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>[NL-R-009] For suppliers in the Netherlands, if an order line reference (ram:BuyerOrderReferencedDocument/ram:LineID) is used, there must be an order reference on the document level (rsm:SupplyChainTradeTransaction/ram:ApplicableHeaderTradeAgreement/ram:BuyerOrderReferencedDocument/ram:IssuerAssignedID)</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:apply-templates mode="M27" select="@*|*" />
  </xsl:template>
  <xsl:template match="text()" mode="M27" priority="-1" />
  <xsl:template match="@*|node()" mode="M27" priority="-2">
    <xsl:apply-templates mode="M27" select="@*|*" />
  </xsl:template>

<!--PATTERN -->
<xsl:variable name="ISO3166" select="tokenize('AD AE AF AG AI AL AM AO AQ AR AS AT AU AW AX AZ BA BB BD BE BF BG BH BI BJ BL BM BN BO BQ BR BS BT BV BW BY BZ CA CC CD CF CG CH CI CK CL CM CN CO CR CU CV CW CX CY CZ DE DJ DK DM DO DZ EC EE EG EH ER ES ET FI FJ FK FM FO FR GA GB GD GE GF GG GH GI GL GM GN GP GQ GR GS GT GU GW GY HK HM HN HR HT HU ID IE IL IM IN IO IQ IR IS IT JE JM JO JP KE KG KH KI KM KN KP KR KW KY KZ LA LB LC LI LK LR LS LT LU LV LY MA MC MD ME MF MG MH MK ML MM MN MO MP MQ MR MS MT MU MV MW MX MY MZ NA NC NE NF NG NI NL NO NP NR NU NZ OM PA PE PF PG PH PK PL PM PN PR PS PT PW PY QA RE RO RS RU RW SA SB SC SD SE SG SH SI SJ SK SL SM SN SO SR SS ST SV SX SY SZ TC TD TF TG TH TJ TK TL TM TN TO TR TT TV TW TZ UA UG UM US UY UZ VA VC VE VG VI VN VU WF WS YE YT ZA ZM ZW', '\s')" />
  <xsl:variable name="ISO4217" select="tokenize('AFN EUR ALL DZD USD AOA XCD XCD ARS AMD AWG AUD AZN BSD BHD BDT BBD BYN BZD XOF BMD INR BTN BOB BOV USD BAM BWP NOK BRL USD BND BGN XOF BIF CVE KHR XAF CAD KYD XAF XAF CLP CLF CNY AUD AUD COP COU KMF CDF XAF NZD CRC XOF HRK CUP CUC ANG CZK DKK DJF XCD DOP USD EGP SVC USD XAF ERN ETB FKP DKK FJD XPF XAF GMD GEL GHS GIP DKK XCD USD GTQ GBP GNF XOF GYD HTG USD AUD HNL HKD HUF ISK INR IDR XDR IRR IQD GBP ILS JMD JPY GBP JOD KZT KES AUD KPW KRW KWD KGS LAK LBP LSL ZAR LRD LYD CHF MOP MKD MGA MWK MYR MVR XOF USD MRO MUR XUA MXN MXV USD MDL MNT XCD MAD MZN MMK NAD ZAR AUD NPR XPF NZD NIO XOF NGN NZD AUD USD NOK OMR PKR USD PAB USD PGK PYG PEN PHP NZD PLN USD QAR RON RUB RWF SHP XCD XCD XCD WST STD SAR XOF RSD SCR SLL SGD ANG XSU SBD SOS ZAR SSP LKR SDG SRD NOK SZL SEK CHF CHE CHW SYP TWD TJS TZS THB USD XOF NZD TOP TTD TND TRY TMT USD AUD UGX UAH AED GBP USD USD USN UYU UYI UZS VUV VEF VND USD USD XPF MAD YER ZMW ZWL XBA XBB XBC XBD XTS XXX XAU XPD XPT XAG', '\s')" />
  <xsl:variable name="MIMECODE" select="tokenize('application/pdf image/png image/jpeg text/csv application/vnd.openxmlformats-officedocument.spreadsheetml.sheet application/vnd.oasis.opendocument.spreadsheet', '\s')" />
  <xsl:variable name="UNCL2005" select="tokenize('3 35 432', '\s')" />
  <xsl:variable name="UNCL5189" select="tokenize('41 42 60 62 63 64 65 66 67 68 70 71 88 95 100 102 103 104 105', '\s')" />
  <xsl:variable name="UNCL7161" select="tokenize('AA AAA AAC AAD AAE AAF AAH AAI AAS AAT AAV AAY AAZ ABA ABB ABC ABD ABF ABK ABL ABN ABR ABS ABT ABU ACF ACG ACH ACI ACJ ACK ACL ACM ACS ADC ADE ADJ ADK ADL ADM ADN ADO ADP ADQ ADR ADT ADW ADY ADZ AEA AEB AEC AED AEF AEH AEI AEJ AEK AEL AEM AEN AEO AEP AES AET AEU AEV AEW AEX AEY AEZ AJ AU CA CAB CAD CAE CAF CAI CAJ CAK CAL CAM CAN CAO CAP CAQ CAR CAS CAT CAU CAV CAW CD CG CS CT DAB DAD DL EG EP ER FAA FAB FAC FC FH FI GAA HAA HD HH IAA IAB ID IF IR IS KO L1 LA LAA LAB LF MAE MI ML NAA OA PA PAA PC PL RAB RAC RAD RAF RE RF RH RV SA SAA SAD SAE SAI SG SH SM SU TAB TAC TT TV V1 V2 WH XAA YY ZZZ', '\s')" />
  <xsl:variable name="UNCL5305" select="tokenize('AE E S Z G O K L M', '\s')" />
  <xsl:variable name="eaid" select="tokenize('0002 0007 0009 0037 0060 0088 0096 0097 0106 0130 0135 0142 0147 0151 0170 0183 0184 0188 0190 0191 0192 0193 0195 0196 0198 0199 0200 0201 0202 0204 0208 0209 0210 0211 0212 0213 0215 0216 9901 9906 9907 9910 9913 9914 9915 9918 9919 9920 9922 9923 9924 9925 9926 9927 9928 9929 9930 9931 9932 9933 9934 9935 9936 9937 9938 9939 9940 9941 9942 9943 9944 9945 9946 9947 9948 9949 9950 9951 9952 9953 9955 9957', '\s')" />

	<!--RULE -->
<xsl:template match="ram:AttachmentBinaryObject[@mimeCode]" mode="M28" priority="1006">
    <svrl:fired-rule context="ram:AttachmentBinaryObject[@mimeCode]" />

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="                     some $code in $MIMECODE                         satisfies @mimeCode = $code" />
      <xsl:otherwise>
        <svrl:failed-assert test="some $code in $MIMECODE satisfies @mimeCode = $code">
          <xsl:attribute name="id">PEPPOL-EN16931-CL001</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>Mime code must be according to subset of IANA code list.</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:apply-templates mode="M28" select="@*|*" />
  </xsl:template>

	<!--RULE -->
<xsl:template match="ram:SpecifiedTradeAllowanceCharge[normalize-space(ram:ChargeIndicator/udt:Indicator) = 'false']/ram:ReasonCode" mode="M28" priority="1005">
    <svrl:fired-rule context="ram:SpecifiedTradeAllowanceCharge[normalize-space(ram:ChargeIndicator/udt:Indicator) = 'false']/ram:ReasonCode" />

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="                     some $code in $UNCL5189                         satisfies normalize-space(text()) = $code" />
      <xsl:otherwise>
        <svrl:failed-assert test="some $code in $UNCL5189 satisfies normalize-space(text()) = $code">
          <xsl:attribute name="id">PEPPOL-EN16931-CL002</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>Reason code MUST be according to subset of UNCL 5189 D.16B.</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:apply-templates mode="M28" select="@*|*" />
  </xsl:template>

	<!--RULE -->
<xsl:template match="ram:SpecifiedTradeAllowanceCharge[normalize-space(ram:ChargeIndicator/udt:Indicator) = 'true']/ram:ReasonCode" mode="M28" priority="1004">
    <svrl:fired-rule context="ram:SpecifiedTradeAllowanceCharge[normalize-space(ram:ChargeIndicator/udt:Indicator) = 'true']/ram:ReasonCode" />

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="                     some $code in $UNCL7161                         satisfies normalize-space(text()) = $code" />
      <xsl:otherwise>
        <svrl:failed-assert test="some $code in $UNCL7161 satisfies normalize-space(text()) = $code">
          <xsl:attribute name="id">PEPPOL-EN16931-CL003</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>Reason code MUST be according to UNCL 7161 D.16B.</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:apply-templates mode="M28" select="@*|*" />
  </xsl:template>

	<!--RULE -->
<xsl:template match="ram:TaxTotalAmount[@currencyID]" mode="M28" priority="1003">
    <svrl:fired-rule context="ram:TaxTotalAmount[@currencyID]" />

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="                     some $code in $ISO4217                         satisfies @currencyID = $code" />
      <xsl:otherwise>
        <svrl:failed-assert test="some $code in $ISO4217 satisfies @currencyID = $code">
          <xsl:attribute name="id">PEPPOL-EN16931-CL007</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>Currency code must be according to ISO 4217:2005</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:apply-templates mode="M28" select="@*|*" />
  </xsl:template>

	<!--RULE -->
<xsl:template match="ram:ExchangedDocument/ram:TypeCode" mode="M28" priority="1002">
    <svrl:fired-rule context="ram:ExchangedDocument/ram:TypeCode" />

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="                     $profile != '01' or (some $code in tokenize('71 102 218 219 331 382 553 817 870 875 876 877 380 383 386 388 393 82 80 84 395 575 623 780 381 396 81 83 532', '\s')                         satisfies normalize-space(text()) = $code)" />
      <xsl:otherwise>
        <svrl:failed-assert test="$profile != '01' or (some $code in tokenize('71 102 218 219 331 382 553 817 870 875 876 877 380 383 386 388 393 82 80 84 395 575 623 780 381 396 81 83 532', '\s') satisfies normalize-space(text()) = $code)">
          <xsl:attribute name="id">PEPPOL-EN16931-P0100</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>Invoice type code MUST be set according to the profile.</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:apply-templates mode="M28" select="@*|*" />
  </xsl:template>

	<!--RULE -->
<xsl:template match="udt:DateTimeString" mode="M28" priority="1001">
    <svrl:fired-rule context="udt:DateTimeString" />

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="normalize-space(@format) = '102' and string-length(text()) = 8 and matches(normalize-space(text()), '20[0-9]{6}')" />
      <xsl:otherwise>
        <svrl:failed-assert test="normalize-space(@format) = '102' and string-length(text()) = 8 and matches(normalize-space(text()), '20[0-9]{6}')">
          <xsl:attribute name="id">PEPPOL-EN16931-F001</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>A date MUST be formatted YYYYMMDD.</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:apply-templates mode="M28" select="@*|*" />
  </xsl:template>

	<!--RULE -->
<xsl:template match="ram:BuyerTradeParty/ram:URIUniversalCommunication/ram:URIID | ram:SellerTradeParty/ram:URIUniversalCommunication/ram:URIID" mode="M28" priority="1000">
    <svrl:fired-rule context="ram:BuyerTradeParty/ram:URIUniversalCommunication/ram:URIID | ram:SellerTradeParty/ram:URIUniversalCommunication/ram:URIID" />

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="                 some $code in $eaid                 satisfies @schemeID = $code" />
      <xsl:otherwise>
        <svrl:failed-assert test="some $code in $eaid satisfies @schemeID = $code">
          <xsl:attribute name="id">PEPPOL-EN16931-CL008</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>Electronic address identifier scheme must be from the codelist "Electronic Address Identifier Scheme"</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:apply-templates mode="M28" select="@*|*" />
  </xsl:template>
  <xsl:template match="text()" mode="M28" priority="-1" />
  <xsl:template match="@*|node()" mode="M28" priority="-2">
    <xsl:apply-templates mode="M28" select="@*|*" />
  </xsl:template>
</xsl:stylesheet>
