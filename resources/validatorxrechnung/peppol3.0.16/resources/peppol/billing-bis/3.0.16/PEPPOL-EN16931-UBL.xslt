<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<xsl:stylesheet xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:cac="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2" xmlns:cbc="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2" xmlns:iso="http://purl.oclc.org/dsdl/schematron" xmlns:saxon="http://saxon.sf.net/" xmlns:schold="http://www.ascc.net/xml/schematron" xmlns:u="utils" xmlns:ubl-creditnote="urn:oasis:names:specification:ubl:schema:xsd:CreditNote-2" xmlns:ubl-invoice="urn:oasis:names:specification:ubl:schema:xsd:Invoice-2" xmlns:xhtml="http://www.w3.org/1999/xhtml" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
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
    <xsl:sequence select="     if ( $paese = 'IT' or $paese = 'it' )    then    (     if ( ( string-length($codice) = 11 ) and ( if (u:checkPIVA($codice)!=0) then false() else true() ))     then     (      true()     )     else     (      false()     )    )    else    (     true()    )      " />
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
  <xsl:function as="xs:boolean" name="u:TinVerification">
    <xsl:param as="xs:string" name="val" />
    <xsl:variable name="digits" select="    for $ch in string-to-codepoints($val)    return codepoints-to-string($ch)" />
    <xsl:variable name="checksum" select="    (number($digits[8])*2) +    (number($digits[7])*4) +    (number($digits[6])*8) +    (number($digits[5])*16) +    (number($digits[4])*32) +    (number($digits[3])*64) +    (number($digits[2])*128) +    (number($digits[1])*256) " />
    <xsl:value-of select="($checksum  mod 11) mod 10 = number($digits[9])" />
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
    <svrl:schematron-output schemaVersion="iso" title="Rules for Peppol BIS 3.0 Billing">
      <xsl:comment>
        <xsl:value-of select="$archiveDirParameter" />   
		 <xsl:value-of select="$archiveNameParameter" />  
		 <xsl:value-of select="$fileNameParameter" />  
		 <xsl:value-of select="$fileDirParameter" />
      </xsl:comment>
      <svrl:ns-prefix-in-attribute-values prefix="cbc" uri="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2" />
      <svrl:ns-prefix-in-attribute-values prefix="cac" uri="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2" />
      <svrl:ns-prefix-in-attribute-values prefix="ubl-creditnote" uri="urn:oasis:names:specification:ubl:schema:xsd:CreditNote-2" />
      <svrl:ns-prefix-in-attribute-values prefix="ubl-invoice" uri="urn:oasis:names:specification:ubl:schema:xsd:Invoice-2" />
      <svrl:ns-prefix-in-attribute-values prefix="xs" uri="http://www.w3.org/2001/XMLSchema" />
      <svrl:ns-prefix-in-attribute-values prefix="u" uri="utils" />
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
      <svrl:active-pattern>
        <xsl:attribute name="document">
          <xsl:value-of select="document-uri(/)" />
        </xsl:attribute>
        <xsl:apply-templates />
      </svrl:active-pattern>
      <xsl:apply-templates mode="M29" select="/" />
      <svrl:active-pattern>
        <xsl:attribute name="document">
          <xsl:value-of select="document-uri(/)" />
        </xsl:attribute>
        <xsl:apply-templates />
      </svrl:active-pattern>
      <xsl:apply-templates mode="M34" select="/" />
      <svrl:active-pattern>
        <xsl:attribute name="document">
          <xsl:value-of select="document-uri(/)" />
        </xsl:attribute>
        <xsl:apply-templates />
      </svrl:active-pattern>
      <xsl:apply-templates mode="M35" select="/" />
      <svrl:active-pattern>
        <xsl:attribute name="document">
          <xsl:value-of select="document-uri(/)" />
        </xsl:attribute>
        <xsl:apply-templates />
      </svrl:active-pattern>
      <xsl:apply-templates mode="M36" select="/" />
      <svrl:active-pattern>
        <xsl:attribute name="document">
          <xsl:value-of select="document-uri(/)" />
        </xsl:attribute>
        <xsl:apply-templates />
      </svrl:active-pattern>
      <xsl:apply-templates mode="M37" select="/" />
      <svrl:active-pattern>
        <xsl:attribute name="document">
          <xsl:value-of select="document-uri(/)" />
        </xsl:attribute>
        <xsl:apply-templates />
      </svrl:active-pattern>
      <xsl:apply-templates mode="M38" select="/" />
    </svrl:schematron-output>
  </xsl:template>

<!--SCHEMATRON PATTERNS-->
<svrl:text>Rules for Peppol BIS 3.0 Billing</svrl:text>
  <xsl:param name="profile" select="       if (/*/cbc:ProfileID and matches(normalize-space(/*/cbc:ProfileID), 'urn:fdc:peppol.eu:2017:poacc:billing:([0-9]{2}):1.0')) then         tokenize(normalize-space(/*/cbc:ProfileID), ':')[7]       else         'Unknown'" />
  <xsl:param name="supplierCountry" select="       if (/*/cac:AccountingSupplierParty/cac:Party/cac:PartyTaxScheme[cac:TaxScheme/cbc:ID = 'VAT']/substring(cbc:CompanyID, 1, 2)) then         upper-case(normalize-space(/*/cac:AccountingSupplierParty/cac:Party/cac:PartyTaxScheme[cac:TaxScheme/cbc:ID = 'VAT']/substring(cbc:CompanyID, 1, 2)))       else         if (/*/cac:TaxRepresentativeParty/cac:PartyTaxScheme[cac:TaxScheme/cbc:ID = 'VAT']/substring(cbc:CompanyID, 1, 2)) then           upper-case(normalize-space(/*/cac:TaxRepresentativeParty/cac:PartyTaxScheme[cac:TaxScheme/cbc:ID = 'VAT']/substring(cbc:CompanyID, 1, 2)))         else           if (/*/cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode) then             upper-case(normalize-space(/*/cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode))           else             'XX'" />
  <xsl:param name="customerCountry" select="   if (/*/cac:AccountingCustomerParty/cac:Party/cac:PartyTaxScheme[cac:TaxScheme/cbc:ID = 'VAT']/substring(cbc:CompanyID, 1, 2)) then   upper-case(normalize-space(/*/cac:AccountingCustomerParty/cac:Party/cac:PartyTaxScheme[cac:TaxScheme/cbc:ID = 'VAT']/substring(cbc:CompanyID, 1, 2)))   else   if (/*/cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode) then   upper-case(normalize-space(/*/cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode))   else   'XX'" />
  <xsl:param name="documentCurrencyCode" select="/*/cbc:DocumentCurrencyCode" />

<!--PATTERN -->


	<!--RULE -->
<xsl:template match="//*[not(*) and not(normalize-space())]" mode="M23" priority="1000">
    <svrl:fired-rule context="//*[not(*) and not(normalize-space())]" />

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="false()" />
      <xsl:otherwise>
        <svrl:failed-assert test="false()">
          <xsl:attribute name="id">PEPPOL-EN16931-R008</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>Document MUST not contain empty elements.</svrl:text>
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


	<!--RULE -->
<xsl:template match="ubl-creditnote:CreditNote" mode="M24" priority="1000">
    <svrl:fired-rule context="ubl-creditnote:CreditNote" />

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="(count(cac:AdditionalDocumentReference[cbc:DocumentTypeCode='50']) &lt;= 1)" />
      <xsl:otherwise>
        <svrl:failed-assert test="(count(cac:AdditionalDocumentReference[cbc:DocumentTypeCode='50']) &lt;= 1)">
          <xsl:attribute name="id">PEPPOL-EN16931-R080</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>Only one project reference is allowed on document level</svrl:text>
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
<xsl:template match="ubl-creditnote:CreditNote | ubl-invoice:Invoice" mode="M25" priority="1023">
    <svrl:fired-rule context="ubl-creditnote:CreditNote | ubl-invoice:Invoice" />

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="cbc:ProfileID" />
      <xsl:otherwise>
        <svrl:failed-assert test="cbc:ProfileID">
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
      <xsl:when test="count(cbc:Note) &lt;= 1" />
      <xsl:otherwise>
        <svrl:failed-assert test="count(cbc:Note) &lt;= 1">
          <xsl:attribute name="id">PEPPOL-EN16931-R002</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>No more than one note is allowed on document level.</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="cbc:BuyerReference or cac:OrderReference/cbc:ID" />
      <xsl:otherwise>
        <svrl:failed-assert test="cbc:BuyerReference or cac:OrderReference/cbc:ID">
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
      <xsl:when test="starts-with(normalize-space(cbc:CustomizationID/text()), 'urn:cen.eu:en16931:2017#compliant#urn:fdc:peppol.eu:2017:poacc:billing:3.0')" />
      <xsl:otherwise>
        <svrl:failed-assert test="starts-with(normalize-space(cbc:CustomizationID/text()), 'urn:cen.eu:en16931:2017#compliant#urn:fdc:peppol.eu:2017:poacc:billing:3.0')">
          <xsl:attribute name="id">PEPPOL-EN16931-R004</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>Specification identifier MUST have the value 'urn:cen.eu:en16931:2017#compliant#urn:fdc:peppol.eu:2017:poacc:billing:3.0'.</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="count(cac:TaxTotal[cac:TaxSubtotal]) = 1" />
      <xsl:otherwise>
        <svrl:failed-assert test="count(cac:TaxTotal[cac:TaxSubtotal]) = 1">
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
      <xsl:when test="count(cac:TaxTotal[not(cac:TaxSubtotal)]) = (if (cbc:TaxCurrencyCode) then 1 else 0)" />
      <xsl:otherwise>
        <svrl:failed-assert test="count(cac:TaxTotal[not(cac:TaxSubtotal)]) = (if (cbc:TaxCurrencyCode) then 1 else 0)">
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
      <xsl:when test="not(cbc:TaxCurrencyCode) or (cac:TaxTotal/cbc:TaxAmount[@currencyID=normalize-space(../../cbc:TaxCurrencyCode)] &lt;= 0 and cac:TaxTotal/cbc:TaxAmount[@currencyID=normalize-space(../../cbc:DocumentCurrencyCode)] &lt;= 0) or (cac:TaxTotal/cbc:TaxAmount[@currencyID=normalize-space(../../cbc:TaxCurrencyCode)] >= 0 and cac:TaxTotal/cbc:TaxAmount[@currencyID=normalize-space(../../cbc:DocumentCurrencyCode)] >= 0) " />
      <xsl:otherwise>
        <svrl:failed-assert test="not(cbc:TaxCurrencyCode) or (cac:TaxTotal/cbc:TaxAmount[@currencyID=normalize-space(../../cbc:TaxCurrencyCode)] &lt;= 0 and cac:TaxTotal/cbc:TaxAmount[@currencyID=normalize-space(../../cbc:DocumentCurrencyCode)] &lt;= 0) or (cac:TaxTotal/cbc:TaxAmount[@currencyID=normalize-space(../../cbc:TaxCurrencyCode)] >= 0 and cac:TaxTotal/cbc:TaxAmount[@currencyID=normalize-space(../../cbc:DocumentCurrencyCode)] >= 0)">
          <xsl:attribute name="id">PEPPOL-EN16931-R055</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>Invoice total VAT amount and Invoice total VAT amount in accounting currency MUST have the same operational sign</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:apply-templates mode="M25" select="@*|*" />
  </xsl:template>

	<!--RULE -->
<xsl:template match="cbc:TaxCurrencyCode" mode="M25" priority="1022">
    <svrl:fired-rule context="cbc:TaxCurrencyCode" />

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="not(normalize-space(text()) = normalize-space(../cbc:DocumentCurrencyCode/text()))" />
      <xsl:otherwise>
        <svrl:failed-assert test="not(normalize-space(text()) = normalize-space(../cbc:DocumentCurrencyCode/text()))">
          <xsl:attribute name="id">PEPPOL-EN16931-R005</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>VAT accounting currency code MUST be different from invoice currency code when provided.</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:apply-templates mode="M25" select="@*|*" />
  </xsl:template>

	<!--RULE -->
<xsl:template match="cac:AccountingCustomerParty/cac:Party" mode="M25" priority="1021">
    <svrl:fired-rule context="cac:AccountingCustomerParty/cac:Party" />

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="cbc:EndpointID" />
      <xsl:otherwise>
        <svrl:failed-assert test="cbc:EndpointID">
          <xsl:attribute name="id">PEPPOL-EN16931-R010</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>Buyer electronic address MUST be provided</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:apply-templates mode="M25" select="@*|*" />
  </xsl:template>

	<!--RULE -->
<xsl:template match="cac:AccountingSupplierParty/cac:Party" mode="M25" priority="1020">
    <svrl:fired-rule context="cac:AccountingSupplierParty/cac:Party" />

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="cbc:EndpointID" />
      <xsl:otherwise>
        <svrl:failed-assert test="cbc:EndpointID">
          <xsl:attribute name="id">PEPPOL-EN16931-R020</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>Seller electronic address MUST be provided</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:apply-templates mode="M25" select="@*|*" />
  </xsl:template>

	<!--RULE -->
<xsl:template match="ubl-invoice:Invoice/cac:AllowanceCharge[cbc:MultiplierFactorNumeric and not(cbc:BaseAmount)] | ubl-invoice:Invoice/cac:InvoiceLine/cac:AllowanceCharge[cbc:MultiplierFactorNumeric and not(cbc:BaseAmount)] | ubl-creditnote:CreditNote/cac:AllowanceCharge[cbc:MultiplierFactorNumeric and not(cbc:BaseAmount)] | ubl-creditnote:CreditNote/cac:CreditNoteLine/cac:AllowanceCharge[cbc:MultiplierFactorNumeric and not(cbc:BaseAmount)]" mode="M25" priority="1019">
    <svrl:fired-rule context="ubl-invoice:Invoice/cac:AllowanceCharge[cbc:MultiplierFactorNumeric and not(cbc:BaseAmount)] | ubl-invoice:Invoice/cac:InvoiceLine/cac:AllowanceCharge[cbc:MultiplierFactorNumeric and not(cbc:BaseAmount)] | ubl-creditnote:CreditNote/cac:AllowanceCharge[cbc:MultiplierFactorNumeric and not(cbc:BaseAmount)] | ubl-creditnote:CreditNote/cac:CreditNoteLine/cac:AllowanceCharge[cbc:MultiplierFactorNumeric and not(cbc:BaseAmount)]" />

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
          <svrl:text>Allowance/charge base amount MUST be provided when allowance/charge percentage is provided.</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:apply-templates mode="M25" select="@*|*" />
  </xsl:template>

	<!--RULE -->
<xsl:template match="ubl-invoice:Invoice/cac:AllowanceCharge[not(cbc:MultiplierFactorNumeric) and cbc:BaseAmount] | ubl-invoice:Invoice/cac:InvoiceLine/cac:AllowanceCharge[not(cbc:MultiplierFactorNumeric) and cbc:BaseAmount] | ubl-creditnote:CreditNote/cac:AllowanceCharge[not(cbc:MultiplierFactorNumeric) and cbc:BaseAmount] | ubl-creditnote:CreditNote/cac:CreditNoteLine/cac:AllowanceCharge[not(cbc:MultiplierFactorNumeric) and cbc:BaseAmount]" mode="M25" priority="1018">
    <svrl:fired-rule context="ubl-invoice:Invoice/cac:AllowanceCharge[not(cbc:MultiplierFactorNumeric) and cbc:BaseAmount] | ubl-invoice:Invoice/cac:InvoiceLine/cac:AllowanceCharge[not(cbc:MultiplierFactorNumeric) and cbc:BaseAmount] | ubl-creditnote:CreditNote/cac:AllowanceCharge[not(cbc:MultiplierFactorNumeric) and cbc:BaseAmount] | ubl-creditnote:CreditNote/cac:CreditNoteLine/cac:AllowanceCharge[not(cbc:MultiplierFactorNumeric) and cbc:BaseAmount]" />

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
          <svrl:text>Allowance/charge percentage MUST be provided when allowance/charge base amount is provided.</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:apply-templates mode="M25" select="@*|*" />
  </xsl:template>

	<!--RULE -->
<xsl:template match="ubl-invoice:Invoice/cac:AllowanceCharge | ubl-invoice:Invoice/cac:InvoiceLine/cac:AllowanceCharge | ubl-creditnote:CreditNote/cac:AllowanceCharge | ubl-creditnote:CreditNote/cac:CreditNoteLine/cac:AllowanceCharge" mode="M25" priority="1017">
    <svrl:fired-rule context="ubl-invoice:Invoice/cac:AllowanceCharge | ubl-invoice:Invoice/cac:InvoiceLine/cac:AllowanceCharge | ubl-creditnote:CreditNote/cac:AllowanceCharge | ubl-creditnote:CreditNote/cac:CreditNoteLine/cac:AllowanceCharge" />

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="           not(cbc:MultiplierFactorNumeric and cbc:BaseAmount) or u:slack(if (cbc:Amount) then             cbc:Amount           else             0, (xs:decimal(cbc:BaseAmount) * xs:decimal(cbc:MultiplierFactorNumeric)) div 100, 0.02)" />
      <xsl:otherwise>
        <svrl:failed-assert test="not(cbc:MultiplierFactorNumeric and cbc:BaseAmount) or u:slack(if (cbc:Amount) then cbc:Amount else 0, (xs:decimal(cbc:BaseAmount) * xs:decimal(cbc:MultiplierFactorNumeric)) div 100, 0.02)">
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
      <xsl:when test="normalize-space(cbc:ChargeIndicator/text()) = 'true' or normalize-space(cbc:ChargeIndicator/text()) = 'false'" />
      <xsl:otherwise>
        <svrl:failed-assert test="normalize-space(cbc:ChargeIndicator/text()) = 'true' or normalize-space(cbc:ChargeIndicator/text()) = 'false'">
          <xsl:attribute name="id">PEPPOL-EN16931-R043</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>Allowance/charge ChargeIndicator value MUST equal 'true' or 'false'</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:apply-templates mode="M25" select="@*|*" />
  </xsl:template>

	<!--RULE -->
<xsl:template match="         cac:PaymentMeans[some $code in tokenize('49 59', '\s')           satisfies normalize-space(cbc:PaymentMeansCode) = $code]" mode="M25" priority="1016">
    <svrl:fired-rule context="         cac:PaymentMeans[some $code in tokenize('49 59', '\s')           satisfies normalize-space(cbc:PaymentMeansCode) = $code]" />

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="cac:PaymentMandate/cbc:ID" />
      <xsl:otherwise>
        <svrl:failed-assert test="cac:PaymentMandate/cbc:ID">
          <xsl:attribute name="id">PEPPOL-EN16931-R061</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>Mandate reference MUST be provided for direct debit.</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:apply-templates mode="M25" select="@*|*" />
  </xsl:template>

	<!--RULE -->
<xsl:template match="cbc:Amount | cbc:BaseAmount | cbc:PriceAmount | cac:TaxTotal[cac:TaxSubtotal]/cbc:TaxAmount | cbc:TaxableAmount | cbc:LineExtensionAmount | cbc:TaxExclusiveAmount | cbc:TaxInclusiveAmount | cbc:AllowanceTotalAmount | cbc:ChargeTotalAmount | cbc:PrepaidAmount | cbc:PayableRoundingAmount | cbc:PayableAmount" mode="M25" priority="1015">
    <svrl:fired-rule context="cbc:Amount | cbc:BaseAmount | cbc:PriceAmount | cac:TaxTotal[cac:TaxSubtotal]/cbc:TaxAmount | cbc:TaxableAmount | cbc:LineExtensionAmount | cbc:TaxExclusiveAmount | cbc:TaxInclusiveAmount | cbc:AllowanceTotalAmount | cbc:ChargeTotalAmount | cbc:PrepaidAmount | cbc:PayableRoundingAmount | cbc:PayableAmount" />

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="@currencyID = $documentCurrencyCode" />
      <xsl:otherwise>
        <svrl:failed-assert test="@currencyID = $documentCurrencyCode">
          <xsl:attribute name="id">PEPPOL-EN16931-R051</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>All currencyID attributes must have the same value as the invoice currency code (BT-5), except for the invoice total VAT amount in accounting currency (BT-111).</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:apply-templates mode="M25" select="@*|*" />
  </xsl:template>

	<!--RULE -->
<xsl:template match="ubl-invoice:Invoice[cac:InvoicePeriod/cbc:StartDate]/cac:InvoiceLine/cac:InvoicePeriod/cbc:StartDate | ubl-creditnote:CreditNote[cac:InvoicePeriod/cbc:StartDate]/cac:CreditNoteLine/cac:InvoicePeriod/cbc:StartDate" mode="M25" priority="1014">
    <svrl:fired-rule context="ubl-invoice:Invoice[cac:InvoicePeriod/cbc:StartDate]/cac:InvoiceLine/cac:InvoicePeriod/cbc:StartDate | ubl-creditnote:CreditNote[cac:InvoicePeriod/cbc:StartDate]/cac:CreditNoteLine/cac:InvoicePeriod/cbc:StartDate" />

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="xs:date(text()) >= xs:date(../../../cac:InvoicePeriod/cbc:StartDate)" />
      <xsl:otherwise>
        <svrl:failed-assert test="xs:date(text()) >= xs:date(../../../cac:InvoicePeriod/cbc:StartDate)">
          <xsl:attribute name="id">PEPPOL-EN16931-R110</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>Start date of line period MUST be within invoice period.</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:apply-templates mode="M25" select="@*|*" />
  </xsl:template>

	<!--RULE -->
<xsl:template match="ubl-invoice:Invoice[cac:InvoicePeriod/cbc:EndDate]/cac:InvoiceLine/cac:InvoicePeriod/cbc:EndDate | ubl-creditnote:CreditNote[cac:InvoicePeriod/cbc:EndDate]/cac:CreditNoteLine/cac:InvoicePeriod/cbc:EndDate" mode="M25" priority="1013">
    <svrl:fired-rule context="ubl-invoice:Invoice[cac:InvoicePeriod/cbc:EndDate]/cac:InvoiceLine/cac:InvoicePeriod/cbc:EndDate | ubl-creditnote:CreditNote[cac:InvoicePeriod/cbc:EndDate]/cac:CreditNoteLine/cac:InvoicePeriod/cbc:EndDate" />

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="xs:date(text()) &lt;= xs:date(../../../cac:InvoicePeriod/cbc:EndDate)" />
      <xsl:otherwise>
        <svrl:failed-assert test="xs:date(text()) &lt;= xs:date(../../../cac:InvoicePeriod/cbc:EndDate)">
          <xsl:attribute name="id">PEPPOL-EN16931-R111</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>End date of line period MUST be within invoice period.</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:apply-templates mode="M25" select="@*|*" />
  </xsl:template>

	<!--RULE -->
<xsl:template match="cac:InvoiceLine | cac:CreditNoteLine" mode="M25" priority="1012">
    <svrl:fired-rule context="cac:InvoiceLine | cac:CreditNoteLine" />
    <xsl:variable name="lineExtensionAmount" select="           if (cbc:LineExtensionAmount) then             xs:decimal(cbc:LineExtensionAmount)           else             0" />
    <xsl:variable name="quantity" select="           if (/ubl-invoice:Invoice) then             (if (cbc:InvoicedQuantity) then               xs:decimal(cbc:InvoicedQuantity)             else               1)           else             (if (cbc:CreditedQuantity) then               xs:decimal(cbc:CreditedQuantity)             else               1)" />
    <xsl:variable name="priceAmount" select="           if (cac:Price/cbc:PriceAmount) then             xs:decimal(cac:Price/cbc:PriceAmount)           else             0" />
    <xsl:variable name="baseQuantity" select="           if (cac:Price/cbc:BaseQuantity and xs:decimal(cac:Price/cbc:BaseQuantity) != 0) then             xs:decimal(cac:Price/cbc:BaseQuantity)           else             1" />
    <xsl:variable name="allowancesTotal" select="           if (cac:AllowanceCharge[normalize-space(cbc:ChargeIndicator) = 'false']) then             round(sum(cac:AllowanceCharge[normalize-space(cbc:ChargeIndicator) = 'false']/cbc:Amount/xs:decimal(.)) * 10 * 10) div 100           else             0" />
    <xsl:variable name="chargesTotal" select="           if (cac:AllowanceCharge[normalize-space(cbc:ChargeIndicator) = 'true']) then             round(sum(cac:AllowanceCharge[normalize-space(cbc:ChargeIndicator) = 'true']/cbc:Amount/xs:decimal(.)) * 10 * 10) div 100           else             0" />

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
      <xsl:when test="not(cac:Price/cbc:BaseQuantity) or xs:decimal(cac:Price/cbc:BaseQuantity) > 0" />
      <xsl:otherwise>
        <svrl:failed-assert test="not(cac:Price/cbc:BaseQuantity) or xs:decimal(cac:Price/cbc:BaseQuantity) > 0">
          <xsl:attribute name="id">PEPPOL-EN16931-R121</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>Base quantity MUST be a positive number above zero.</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="(count(cac:DocumentReference) &lt;= 1)" />
      <xsl:otherwise>
        <svrl:failed-assert test="(count(cac:DocumentReference) &lt;= 1)">
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
      <xsl:when test="(not(cac:DocumentReference) or (cac:DocumentReference/cbc:DocumentTypeCode='130'))" />
      <xsl:otherwise>
        <svrl:failed-assert test="(not(cac:DocumentReference) or (cac:DocumentReference/cbc:DocumentTypeCode='130'))">
          <xsl:attribute name="id">PEPPOL-EN16931-R101</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>Element Document reference can only be used for Invoice line object</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:apply-templates mode="M25" select="@*|*" />
  </xsl:template>

	<!--RULE -->
<xsl:template match="cac:Price/cac:AllowanceCharge" mode="M25" priority="1011">
    <svrl:fired-rule context="cac:Price/cac:AllowanceCharge" />

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="normalize-space(cbc:ChargeIndicator) = 'false'" />
      <xsl:otherwise>
        <svrl:failed-assert test="normalize-space(cbc:ChargeIndicator) = 'false'">
          <xsl:attribute name="id">PEPPOL-EN16931-R044</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>Charge on price level is NOT allowed. Only value 'false' allowed.</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="not(cbc:BaseAmount) or xs:decimal(../cbc:PriceAmount) = xs:decimal(cbc:BaseAmount) - xs:decimal(cbc:Amount)" />
      <xsl:otherwise>
        <svrl:failed-assert test="not(cbc:BaseAmount) or xs:decimal(../cbc:PriceAmount) = xs:decimal(cbc:BaseAmount) - xs:decimal(cbc:Amount)">
          <xsl:attribute name="id">PEPPOL-EN16931-R046</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>Item net price MUST equal (Gross price - Allowance amount) when gross price is provided.</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:apply-templates mode="M25" select="@*|*" />
  </xsl:template>

	<!--RULE -->
<xsl:template match="cac:Price/cbc:BaseQuantity[@unitCode]" mode="M25" priority="1010">
    <svrl:fired-rule context="cac:Price/cbc:BaseQuantity[@unitCode]" />
    <xsl:variable name="hasQuantity" select="../../cbc:InvoicedQuantity or ../../cbc:CreditedQuantity" />
    <xsl:variable name="quantity" select="           if (/ubl-invoice:Invoice) then             ../../cbc:InvoicedQuantity           else             ../../cbc:CreditedQuantity" />

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="not($hasQuantity) or @unitCode = $quantity/@unitCode" />
      <xsl:otherwise>
        <svrl:failed-assert test="not($hasQuantity) or @unitCode = $quantity/@unitCode">
          <xsl:attribute name="id">PEPPOL-EN16931-R130</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>Unit code of price base quantity MUST be same as invoiced quantity.</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:apply-templates mode="M25" select="@*|*" />
  </xsl:template>

	<!--RULE -->
<xsl:template match="cbc:EndpointID[@schemeID = '0088'] | cac:PartyIdentification/cbc:ID[@schemeID = '0088'] | cbc:CompanyID[@schemeID = '0088']" mode="M25" priority="1009">
    <svrl:fired-rule context="cbc:EndpointID[@schemeID = '0088'] | cac:PartyIdentification/cbc:ID[@schemeID = '0088'] | cbc:CompanyID[@schemeID = '0088']" />

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
    <xsl:apply-templates mode="M25" select="@*|*" />
  </xsl:template>

	<!--RULE -->
<xsl:template match="cbc:EndpointID[@schemeID = '0192'] | cac:PartyIdentification/cbc:ID[@schemeID = '0192'] | cbc:CompanyID[@schemeID = '0192']" mode="M25" priority="1008">
    <svrl:fired-rule context="cbc:EndpointID[@schemeID = '0192'] | cac:PartyIdentification/cbc:ID[@schemeID = '0192'] | cbc:CompanyID[@schemeID = '0192']" />

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
    <xsl:apply-templates mode="M25" select="@*|*" />
  </xsl:template>

	<!--RULE -->
<xsl:template match="cbc:EndpointID[@schemeID = '0184'] | cac:PartyIdentification/cbc:ID[@schemeID = '0184'] | cbc:CompanyID[@schemeID = '0184']" mode="M25" priority="1007">
    <svrl:fired-rule context="cbc:EndpointID[@schemeID = '0184'] | cac:PartyIdentification/cbc:ID[@schemeID = '0184'] | cbc:CompanyID[@schemeID = '0184']" />

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
    <xsl:apply-templates mode="M25" select="@*|*" />
  </xsl:template>

	<!--RULE -->
<xsl:template match="cbc:EndpointID[@schemeID = '0208'] | cac:PartyIdentification/cbc:ID[@schemeID = '0208'] | cbc:CompanyID[@schemeID = '0208']" mode="M25" priority="1006">
    <svrl:fired-rule context="cbc:EndpointID[@schemeID = '0208'] | cac:PartyIdentification/cbc:ID[@schemeID = '0208'] | cbc:CompanyID[@schemeID = '0208']" />

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
    <xsl:apply-templates mode="M25" select="@*|*" />
  </xsl:template>

	<!--RULE -->
<xsl:template match="cbc:EndpointID[@schemeID = '0201'] | cac:PartyIdentification/cbc:ID[@schemeID = '0201'] | cbc:CompanyID[@schemeID = '0201']" mode="M25" priority="1005">
    <svrl:fired-rule context="cbc:EndpointID[@schemeID = '0201'] | cac:PartyIdentification/cbc:ID[@schemeID = '0201'] | cbc:CompanyID[@schemeID = '0201']" />

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
    <xsl:apply-templates mode="M25" select="@*|*" />
  </xsl:template>

	<!--RULE -->
<xsl:template match="cbc:EndpointID[@schemeID = '0210'] | cac:PartyIdentification/cbc:ID[@schemeID = '0210'] | cbc:CompanyID[@schemeID = '0210']" mode="M25" priority="1004">
    <svrl:fired-rule context="cbc:EndpointID[@schemeID = '0210'] | cac:PartyIdentification/cbc:ID[@schemeID = '0210'] | cbc:CompanyID[@schemeID = '0210']" />

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
    <xsl:apply-templates mode="M25" select="@*|*" />
  </xsl:template>

	<!--RULE -->
<xsl:template match="cbc:EndpointID[@schemeID = '9907']" mode="M25" priority="1003">
    <svrl:fired-rule context="cbc:EndpointID[@schemeID = '9907']" />

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
    <xsl:apply-templates mode="M25" select="@*|*" />
  </xsl:template>

	<!--RULE -->
<xsl:template match="cbc:EndpointID[@schemeID = '0211'] | cac:PartyIdentification/cbc:ID[@schemeID = '0211'] | cbc:CompanyID[@schemeID = '0211']" mode="M25" priority="1002">
    <svrl:fired-rule context="cbc:EndpointID[@schemeID = '0211'] | cac:PartyIdentification/cbc:ID[@schemeID = '0211'] | cbc:CompanyID[@schemeID = '0211']" />

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
    <xsl:apply-templates mode="M25" select="@*|*" />
  </xsl:template>

	<!--RULE -->
<xsl:template match="cbc:EndpointID[@schemeID = '0007'] | cac:PartyIdentification/cbc:ID[@schemeID = '0007'] | cbc:CompanyID[@schemeID = '0007']" mode="M25" priority="1001">
    <svrl:fired-rule context="cbc:EndpointID[@schemeID = '0007'] | cac:PartyIdentification/cbc:ID[@schemeID = '0007'] | cbc:CompanyID[@schemeID = '0007']" />

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="string-length(normalize-space()) = 10 and string(number(normalize-space())) != 'NaN'" />
      <xsl:otherwise>
        <svrl:failed-assert test="string-length(normalize-space()) = 10 and string(number(normalize-space())) != 'NaN'">
          <xsl:attribute name="id">PEPPOL-COMMON-R049</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>Swedish organization number MUST be stated in the correct format.</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:apply-templates mode="M25" select="@*|*" />
  </xsl:template>

	<!--RULE -->
<xsl:template match="cbc:EndpointID[@schemeID = '0151'] | cac:PartyIdentification/cbc:ID[@schemeID = '0151'] | cbc:CompanyID[@schemeID = '0151']" mode="M25" priority="1000">
    <svrl:fired-rule context="cbc:EndpointID[@schemeID = '0151'] | cac:PartyIdentification/cbc:ID[@schemeID = '0151'] | cbc:CompanyID[@schemeID = '0151']" />

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="matches(normalize-space(), '^[0-9]{11}$') and u:abn(normalize-space())" />
      <xsl:otherwise>
        <svrl:failed-assert test="matches(normalize-space(), '^[0-9]{11}$') and u:abn(normalize-space())">
          <xsl:attribute name="id">PEPPOL-COMMON-R050</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>Australian Business Number (ABN) MUST be stated in the correct format.</svrl:text>
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
<xsl:template match="cac:AccountingSupplierParty/cac:Party[$supplierCountry = 'NO']" mode="M26" priority="1000">
    <svrl:fired-rule context="cac:AccountingSupplierParty/cac:Party[$supplierCountry = 'NO']" />

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="normalize-space(cac:PartyTaxScheme[normalize-space(cac:TaxScheme/cbc:ID) = 'TAX']/cbc:CompanyID) = 'Foretaksregisteret'" />
      <xsl:otherwise>
        <svrl:failed-assert test="normalize-space(cac:PartyTaxScheme[normalize-space(cac:TaxScheme/cbc:ID) = 'TAX']/cbc:CompanyID) = 'Foretaksregisteret'">
          <xsl:attribute name="id">NO-R-002</xsl:attribute>
          <xsl:attribute name="flag">warning</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>For Norwegian suppliers, most invoice issuers are required to append "Foretaksregisteret" to their
        invoice. "Dersom selger er aksjeselskap, allmennaksjeselskap eller filial av utenlandsk
        selskap skal også ordet «Foretaksregisteret» fremgå av salgsdokumentet, jf.
        foretaksregisterloven § 10-2."</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="cac:PartyTaxScheme[normalize-space(cac:TaxScheme/cbc:ID) = 'VAT']/substring(cbc:CompanyID, 1, 2)='NO' and matches(cac:PartyTaxScheme[normalize-space(cac:TaxScheme/cbc:ID) = 'VAT']/substring(cbc:CompanyID,3), '^[0-9]{9}MVA$')           and u:mod11(substring(cac:PartyTaxScheme[normalize-space(cac:TaxScheme/cbc:ID) = 'VAT']/cbc:CompanyID, 3, 9)) or not(cac:PartyTaxScheme[normalize-space(cac:TaxScheme/cbc:ID) = 'VAT']/substring(cbc:CompanyID, 1, 2)='NO')" />
      <xsl:otherwise>
        <svrl:failed-assert test="cac:PartyTaxScheme[normalize-space(cac:TaxScheme/cbc:ID) = 'VAT']/substring(cbc:CompanyID, 1, 2)='NO' and matches(cac:PartyTaxScheme[normalize-space(cac:TaxScheme/cbc:ID) = 'VAT']/substring(cbc:CompanyID,3), '^[0-9]{9}MVA$') and u:mod11(substring(cac:PartyTaxScheme[normalize-space(cac:TaxScheme/cbc:ID) = 'VAT']/cbc:CompanyID, 3, 9)) or not(cac:PartyTaxScheme[normalize-space(cac:TaxScheme/cbc:ID) = 'VAT']/substring(cbc:CompanyID, 1, 2)='NO')">
          <xsl:attribute name="id">NO-R-001</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>For Norwegian suppliers, a VAT number MUST be the country code prefix NO followed by a valid Norwegian organization number (nine numbers) followed by the letters MVA.</svrl:text>
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
<xsl:variable name="DKSupplierCountry" select="concat(ubl-creditnote:CreditNote/cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode, ubl-invoice:Invoice/cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode)" />
  <xsl:variable name="DKCustomerCountry" select="concat(ubl-creditnote:CreditNote/cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode, ubl-invoice:Invoice/cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode)" />

	<!--RULE -->
<xsl:template match="ubl-creditnote:CreditNote[$DKSupplierCountry = 'DK'] | ubl-invoice:Invoice[$DKSupplierCountry = 'DK']" mode="M27" priority="1004">
    <svrl:fired-rule context="ubl-creditnote:CreditNote[$DKSupplierCountry = 'DK'] | ubl-invoice:Invoice[$DKSupplierCountry = 'DK']" />

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="(normalize-space(cac:AccountingSupplierParty/cac:Party/cac:PartyLegalEntity/cbc:CompanyID/text()) != '')" />
      <xsl:otherwise>
        <svrl:failed-assert test="(normalize-space(cac:AccountingSupplierParty/cac:Party/cac:PartyLegalEntity/cbc:CompanyID/text()) != '')">
          <xsl:attribute name="id">DK-R-002</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>Danish suppliers MUST provide legal entity (CVR-number)</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="not(((boolean(cac:AccountingSupplierParty/cac:Party/cac:PartyLegalEntity/cbc:CompanyID))           and (normalize-space(cac:AccountingSupplierParty/cac:Party/cac:PartyLegalEntity/cbc:CompanyID/@schemeID) != '0184'))       )" />
      <xsl:otherwise>
        <svrl:failed-assert test="not(((boolean(cac:AccountingSupplierParty/cac:Party/cac:PartyLegalEntity/cbc:CompanyID)) and (normalize-space(cac:AccountingSupplierParty/cac:Party/cac:PartyLegalEntity/cbc:CompanyID/@schemeID) != '0184')) )">
          <xsl:attribute name="id">DK-R-014</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>For Danish Suppliers it is mandatory to specify schemeID as "0184" (DK CVR-number) when PartyLegalEntity/CompanyID is used for AccountingSupplierParty</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="not((boolean(/ubl-creditnote:CreditNote) and ($DKCustomerCountry = 'DK'))       and (number(cac:LegalMonetaryTotal/cbc:PayableAmount/text()) &lt; 0)       )" />
      <xsl:otherwise>
        <svrl:failed-assert test="not((boolean(/ubl-creditnote:CreditNote) and ($DKCustomerCountry = 'DK')) and (number(cac:LegalMonetaryTotal/cbc:PayableAmount/text()) &lt; 0) )">
          <xsl:attribute name="id">DK-R-016</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>For Danish Suppliers, a Credit note cannot have a negative total (PayableAmount)</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:apply-templates mode="M27" select="@*|*" />
  </xsl:template>

	<!--RULE -->
<xsl:template match="ubl-creditnote:CreditNote[$DKSupplierCountry = 'DK' and $DKCustomerCountry = 'DK']/cac:AccountingSupplierParty/cac:Party/cac:PartyIdentification | ubl-creditnote:CreditNote[$DKSupplierCountry = 'DK' and $DKCustomerCountry = 'DK']/cac:AccountingCustomerParty/cac:Party/cac:PartyIdentification | ubl-invoice:Invoice[$DKSupplierCountry = 'DK' and $DKCustomerCountry = 'DK']/cac:AccountingSupplierParty/cac:Party/cac:PartyIdentification | ubl-invoice:Invoice[$DKSupplierCountry = 'DK' and $DKCustomerCountry = 'DK']/cac:AccountingCustomerParty/cac:Party/cac:PartyIdentification" mode="M27" priority="1003">
    <svrl:fired-rule context="ubl-creditnote:CreditNote[$DKSupplierCountry = 'DK' and $DKCustomerCountry = 'DK']/cac:AccountingSupplierParty/cac:Party/cac:PartyIdentification | ubl-creditnote:CreditNote[$DKSupplierCountry = 'DK' and $DKCustomerCountry = 'DK']/cac:AccountingCustomerParty/cac:Party/cac:PartyIdentification | ubl-invoice:Invoice[$DKSupplierCountry = 'DK' and $DKCustomerCountry = 'DK']/cac:AccountingSupplierParty/cac:Party/cac:PartyIdentification | ubl-invoice:Invoice[$DKSupplierCountry = 'DK' and $DKCustomerCountry = 'DK']/cac:AccountingCustomerParty/cac:Party/cac:PartyIdentification" />

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="not((boolean(cbc:ID))        and (normalize-space(cbc:ID/@schemeID) = '')       )" />
      <xsl:otherwise>
        <svrl:failed-assert test="not((boolean(cbc:ID)) and (normalize-space(cbc:ID/@schemeID) = '') )">
          <xsl:attribute name="id">DK-R-013</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>For Danish Suppliers it is mandatory to use schemeID when PartyIdentification/ID is used for AccountingCustomerParty or AccountingSupplierParty</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:apply-templates mode="M27" select="@*|*" />
  </xsl:template>

	<!--RULE -->
<xsl:template match="ubl-invoice:Invoice[$DKSupplierCountry = 'DK' and $DKCustomerCountry = 'DK']/cac:PaymentMeans" mode="M27" priority="1002">
    <svrl:fired-rule context="ubl-invoice:Invoice[$DKSupplierCountry = 'DK' and $DKCustomerCountry = 'DK']/cac:PaymentMeans" />

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="contains(' 1 10 31 42 48 49 50 58 59 93 97 ', concat(' ', cbc:PaymentMeansCode, ' '))" />
      <xsl:otherwise>
        <svrl:failed-assert test="contains(' 1 10 31 42 48 49 50 58 59 93 97 ', concat(' ', cbc:PaymentMeansCode, ' '))">
          <xsl:attribute name="id">DK-R-005</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>For Danish suppliers the following Payment means codes are allowed: 1, 10, 31, 42, 48, 49, 50, 58, 59, 93 and 97</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="not(((cbc:PaymentMeansCode = '31') or (cbc:PaymentMeansCode = '42'))       and not((normalize-space(cac:PayeeFinancialAccount/cbc:ID/text()) != '') and (normalize-space(cac:PayeeFinancialAccount/cac:FinancialInstitutionBranch/cbc:ID/text()) != ''))       )" />
      <xsl:otherwise>
        <svrl:failed-assert test="not(((cbc:PaymentMeansCode = '31') or (cbc:PaymentMeansCode = '42')) and not((normalize-space(cac:PayeeFinancialAccount/cbc:ID/text()) != '') and (normalize-space(cac:PayeeFinancialAccount/cac:FinancialInstitutionBranch/cbc:ID/text()) != '')) )">
          <xsl:attribute name="id">DK-R-006</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>For Danish suppliers bank account and registration account is mandatory if payment means is 31 or 42</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="not((cbc:PaymentMeansCode = '49')       and not((normalize-space(cac:PaymentMandate/cbc:ID/text()) != '')           and (normalize-space(cac:PaymentMandate/cac:PayerFinancialAccount/cbc:ID/text()) != ''))       )" />
      <xsl:otherwise>
        <svrl:failed-assert test="not((cbc:PaymentMeansCode = '49') and not((normalize-space(cac:PaymentMandate/cbc:ID/text()) != '') and (normalize-space(cac:PaymentMandate/cac:PayerFinancialAccount/cbc:ID/text()) != '')) )">
          <xsl:attribute name="id">DK-R-007</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>For Danish suppliers PaymentMandate/ID and PayerFinancialAccount/ID are mandatory when payment means is 49</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="not((cbc:PaymentMeansCode = '50')       and not(((substring(cbc:PaymentID, 1, 3) = '01#')           or (substring(cbc:PaymentID, 1, 3) = '04#')           or (substring(cbc:PaymentID, 1, 3) = '15#'))         and (string-length(cac:PayeeFinancialAccount/cbc:ID/text()) = 7)         )       )" />
      <xsl:otherwise>
        <svrl:failed-assert test="not((cbc:PaymentMeansCode = '50') and not(((substring(cbc:PaymentID, 1, 3) = '01#') or (substring(cbc:PaymentID, 1, 3) = '04#') or (substring(cbc:PaymentID, 1, 3) = '15#')) and (string-length(cac:PayeeFinancialAccount/cbc:ID/text()) = 7) ) )">
          <xsl:attribute name="id">DK-R-008</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>For Danish Suppliers PaymentID is mandatory and MUST start with 01#, 04# or 15# (kortartkode), and PayeeFinancialAccount/ID (Giro kontonummer) is mandatory and must be 7 characters long, when payment means equals 50 (Giro)</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="not((cbc:PaymentMeansCode = '50')       and ((substring(cbc:PaymentID, 1, 3) = '04#')          or (substring(cbc:PaymentID, 1, 3)  = '15#'))       and not(string-length(cbc:PaymentID) = 19)       )" />
      <xsl:otherwise>
        <svrl:failed-assert test="not((cbc:PaymentMeansCode = '50') and ((substring(cbc:PaymentID, 1, 3) = '04#') or (substring(cbc:PaymentID, 1, 3) = '15#')) and not(string-length(cbc:PaymentID) = 19) )">
          <xsl:attribute name="id">DK-R-009</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>For Danish Suppliers if the PaymentID is prefixed with 04# or 15# the 16 digits instruction Id must be added to the PaymentID eg. "04#1234567890123456" when Payment means equals 50 (Giro)</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="not((cbc:PaymentMeansCode = '93')       and not(((substring(cbc:PaymentID, 1, 3) = '71#')           or (substring(cbc:PaymentID, 1, 3) = '73#')           or (substring(cbc:PaymentID, 1, 3) = '75#'))         and (string-length(cac:PayeeFinancialAccount/cbc:ID/text()) = 8)         )       )" />
      <xsl:otherwise>
        <svrl:failed-assert test="not((cbc:PaymentMeansCode = '93') and not(((substring(cbc:PaymentID, 1, 3) = '71#') or (substring(cbc:PaymentID, 1, 3) = '73#') or (substring(cbc:PaymentID, 1, 3) = '75#')) and (string-length(cac:PayeeFinancialAccount/cbc:ID/text()) = 8) ) )">
          <xsl:attribute name="id">DK-R-010</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>For Danish Suppliers the PaymentID is mandatory and MUST start with 71#, 73# or 75# (kortartkode) and PayeeFinancialAccount/ID (Kreditornummer) is mandatory and must be exactly 8 characters long, when Payment means equals 93 (FIK)</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="not((cbc:PaymentMeansCode = '93')       and ((substring(cbc:PaymentID, 1, 3) = '71#')          or (substring(cbc:PaymentID, 1, 3)  = '75#'))       and not((string-length(cbc:PaymentID) = 18)          or (string-length(cbc:PaymentID) = 19))       )" />
      <xsl:otherwise>
        <svrl:failed-assert test="not((cbc:PaymentMeansCode = '93') and ((substring(cbc:PaymentID, 1, 3) = '71#') or (substring(cbc:PaymentID, 1, 3) = '75#')) and not((string-length(cbc:PaymentID) = 18) or (string-length(cbc:PaymentID) = 19)) )">
          <xsl:attribute name="id">DK-R-011</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>For Danish Suppliers if the PaymentID is prefixed with 71# or 75# the 15-16 digits instruction Id must be added to the PaymentID eg. "71#1234567890123456" when payment Method equals 93 (FIK)</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:apply-templates mode="M27" select="@*|*" />
  </xsl:template>

	<!--RULE -->
<xsl:template match="ubl-creditnote:CreditNote[$DKSupplierCountry = 'DK' and $DKCustomerCountry = 'DK']/cac:CreditNoteLine | ubl-invoice:Invoice[$DKSupplierCountry = 'DK' and $DKCustomerCountry = 'DK']/cac:InvoiceLine" mode="M27" priority="1001">
    <svrl:fired-rule context="ubl-creditnote:CreditNote[$DKSupplierCountry = 'DK' and $DKCustomerCountry = 'DK']/cac:CreditNoteLine | ubl-invoice:Invoice[$DKSupplierCountry = 'DK' and $DKCustomerCountry = 'DK']/cac:InvoiceLine" />

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="not((cac:Item/cac:CommodityClassification/cbc:ItemClassificationCode/@listID = 'TST')       and not((cac:Item/cac:CommodityClassification/cbc:ItemClassificationCode/@listVersionID = '19.05.01')           or (cac:Item/cac:CommodityClassification/cbc:ItemClassificationCode/@listVersionID = '19.0501')           )       )" />
      <xsl:otherwise>
        <svrl:failed-assert test="not((cac:Item/cac:CommodityClassification/cbc:ItemClassificationCode/@listID = 'TST') and not((cac:Item/cac:CommodityClassification/cbc:ItemClassificationCode/@listVersionID = '19.05.01') or (cac:Item/cac:CommodityClassification/cbc:ItemClassificationCode/@listVersionID = '19.0501') ) )">
          <xsl:attribute name="id">DK-R-003</xsl:attribute>
          <xsl:attribute name="flag">warning</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>If ItemClassification is provided from Danish suppliers, UNSPSC version 19.0501 should be used.</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:apply-templates mode="M27" select="@*|*" />
  </xsl:template>

	<!--RULE -->
<xsl:template match="cac:AllowanceCharge[$DKSupplierCountry = 'DK' and $DKCustomerCountry = 'DK']" mode="M27" priority="1000">
    <svrl:fired-rule context="cac:AllowanceCharge[$DKSupplierCountry = 'DK' and $DKCustomerCountry = 'DK']" />

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="not((cbc:AllowanceChargeReasonCode = 'ZZZ')       and not((string-length(normalize-space(cbc:AllowanceChargeReason/text())) = 4)         and (number(cbc:AllowanceChargeReason) >= 0)         and (number(cbc:AllowanceChargeReason) &lt;= 9999))       )" />
      <xsl:otherwise>
        <svrl:failed-assert test="not((cbc:AllowanceChargeReasonCode = 'ZZZ') and not((string-length(normalize-space(cbc:AllowanceChargeReason/text())) = 4) and (number(cbc:AllowanceChargeReason) >= 0) and (number(cbc:AllowanceChargeReason) &lt;= 9999)) )">
          <xsl:attribute name="id">DK-R-004</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>When specifying non-VAT Taxes for Danish customers, Danish suppliers MUST use the AllowanceChargeReasonCode="ZZZ" and the 4-digit Tax category MUST be specified in AllowanceChargeReason</svrl:text>
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


	<!--RULE -->
<xsl:template match="cac:AccountingSupplierParty/cac:Party[$supplierCountry = 'IT']/cac:PartyTaxScheme[normalize-space(cac:TaxScheme/cbc:ID) != 'VAT']" mode="M28" priority="1001">
    <svrl:fired-rule context="cac:AccountingSupplierParty/cac:Party[$supplierCountry = 'IT']/cac:PartyTaxScheme[normalize-space(cac:TaxScheme/cbc:ID) != 'VAT']" />

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="matches(normalize-space(cbc:CompanyID),'^[A-Z0-9]{11,16}$')" />
      <xsl:otherwise>
        <svrl:failed-assert test="matches(normalize-space(cbc:CompanyID),'^[A-Z0-9]{11,16}$')">
          <xsl:attribute name="id">IT-R-001</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>[IT-R-001] BT-32 (Seller tax registration identifier) - For Italian suppliers BT-32 minimum length 11 and maximum length shall be 16.  Per i fornitori italiani il BT-32 deve avere una lunghezza tra 11 e 16 caratteri</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:apply-templates mode="M28" select="@*|*" />
  </xsl:template>

	<!--RULE -->
<xsl:template match="cac:AccountingSupplierParty/cac:Party[$supplierCountry = 'IT']" mode="M28" priority="1000">
    <svrl:fired-rule context="cac:AccountingSupplierParty/cac:Party[$supplierCountry = 'IT']" />

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="cac:PostalAddress/cbc:StreetName" />
      <xsl:otherwise>
        <svrl:failed-assert test="cac:PostalAddress/cbc:StreetName">
          <xsl:attribute name="id">IT-R-002</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>[IT-R-002] BT-35 (Seller address line 1) - Italian suppliers MUST provide the postal address line 1 - I fornitori italiani devono indicare l'indirizzo postale.</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="cac:PostalAddress/cbc:CityName" />
      <xsl:otherwise>
        <svrl:failed-assert test="cac:PostalAddress/cbc:CityName">
          <xsl:attribute name="id">IT-R-003</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>[IT-R-003] BT-37 (Seller city) - Italian suppliers MUST provide the postal address city - I fornitori italiani devono indicare la città di residenza.</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="cac:PostalAddress/cbc:PostalZone" />
      <xsl:otherwise>
        <svrl:failed-assert test="cac:PostalAddress/cbc:PostalZone">
          <xsl:attribute name="id">IT-R-004</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>"&gt;[IT-R-004] BT-38 (Seller post code) - Italian suppliers MUST provide the postal address post code - I fornitori italiani devono indicare il CAP di residenza.</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:apply-templates mode="M28" select="@*|*" />
  </xsl:template>
  <xsl:template match="text()" mode="M28" priority="-1" />
  <xsl:template match="@*|node()" mode="M28" priority="-2">
    <xsl:apply-templates mode="M28" select="@*|*" />
  </xsl:template>

<!--PATTERN -->


	<!--RULE -->
<xsl:template match="//cac:AccountingSupplierParty/cac:Party[cac:PostalAddress/cac:Country/cbc:IdentificationCode = 'SE' and cac:PartyTaxScheme[cac:TaxScheme/cbc:ID = 'VAT']/substring(cbc:CompanyID, 1, 2) = 'SE']" mode="M29" priority="1007">
    <svrl:fired-rule context="//cac:AccountingSupplierParty/cac:Party[cac:PostalAddress/cac:Country/cbc:IdentificationCode = 'SE' and cac:PartyTaxScheme[cac:TaxScheme/cbc:ID = 'VAT']/substring(cbc:CompanyID, 1, 2) = 'SE']" />

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="string-length(normalize-space(cac:PartyTaxScheme[cac:TaxScheme/cbc:ID = 'VAT']/cbc:CompanyID)) = 14" />
      <xsl:otherwise>
        <svrl:failed-assert test="string-length(normalize-space(cac:PartyTaxScheme[cac:TaxScheme/cbc:ID = 'VAT']/cbc:CompanyID)) = 14">
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
      <xsl:when test="string(number(substring(cac:PartyTaxScheme[cac:TaxScheme/cbc:ID = 'VAT']/cbc:CompanyID, 3, 12))) != 'NaN'" />
      <xsl:otherwise>
        <svrl:failed-assert test="string(number(substring(cac:PartyTaxScheme[cac:TaxScheme/cbc:ID = 'VAT']/cbc:CompanyID, 3, 12))) != 'NaN'">
          <xsl:attribute name="id">SE-R-002</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>For Swedish suppliers, the Swedish VAT-numbers must have the trailing 12 characters in numeric form</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:apply-templates mode="M29" select="@*|*" />
  </xsl:template>

	<!--RULE -->
<xsl:template match="//cac:AccountingSupplierParty/cac:Party/cac:PartyLegalEntity[../cac:PostalAddress/cac:Country/cbc:IdentificationCode = 'SE' and cbc:CompanyID]" mode="M29" priority="1006">
    <svrl:fired-rule context="//cac:AccountingSupplierParty/cac:Party/cac:PartyLegalEntity[../cac:PostalAddress/cac:Country/cbc:IdentificationCode = 'SE' and cbc:CompanyID]" />

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="string(number(cbc:CompanyID)) != 'NaN'" />
      <xsl:otherwise>
        <svrl:failed-assert test="string(number(cbc:CompanyID)) != 'NaN'">
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
      <xsl:when test="string-length(normalize-space(cbc:CompanyID)) = 10" />
      <xsl:otherwise>
        <svrl:failed-assert test="string-length(normalize-space(cbc:CompanyID)) = 10">
          <xsl:attribute name="id">SE-R-004</xsl:attribute>
          <xsl:attribute name="flag">warning</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>Swedish organisation numbers consist of 10 characters.</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:apply-templates mode="M29" select="@*|*" />
  </xsl:template>

	<!--RULE -->
<xsl:template match="//cac:AccountingSupplierParty/cac:Party[cac:PostalAddress/cac:Country/cbc:IdentificationCode = 'SE' and exists(cac:PartyLegalEntity/cbc:CompanyID)]/cac:PartyTaxScheme[normalize-space(upper-case(cac:TaxScheme/cbc:ID)) != 'VAT']/cbc:CompanyID" mode="M29" priority="1005">
    <svrl:fired-rule context="//cac:AccountingSupplierParty/cac:Party[cac:PostalAddress/cac:Country/cbc:IdentificationCode = 'SE' and exists(cac:PartyLegalEntity/cbc:CompanyID)]/cac:PartyTaxScheme[normalize-space(upper-case(cac:TaxScheme/cbc:ID)) != 'VAT']/cbc:CompanyID" />

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
    <xsl:apply-templates mode="M29" select="@*|*" />
  </xsl:template>

	<!--RULE -->
<xsl:template match="//cac:TaxCategory[//cac:AccountingSupplierParty/cac:Party[cac:PostalAddress/cac:Country/cbc:IdentificationCode = 'SE' and cac:PartyTaxScheme[cac:TaxScheme/cbc:ID = 'VAT']/substring(cbc:CompanyID, 1, 2) = 'SE'] and cbc:ID = 'S'] | //cac:ClassifiedTaxCategory[//cac:AccountingSupplierParty/cac:Party[cac:PostalAddress/cac:Country/cbc:IdentificationCode = 'SE' and cac:PartyTaxScheme[cac:TaxScheme/cbc:ID = 'VAT']/substring(cbc:CompanyID, 1, 2) = 'SE'] and cbc:ID = 'S']" mode="M29" priority="1004">
    <svrl:fired-rule context="//cac:TaxCategory[//cac:AccountingSupplierParty/cac:Party[cac:PostalAddress/cac:Country/cbc:IdentificationCode = 'SE' and cac:PartyTaxScheme[cac:TaxScheme/cbc:ID = 'VAT']/substring(cbc:CompanyID, 1, 2) = 'SE'] and cbc:ID = 'S'] | //cac:ClassifiedTaxCategory[//cac:AccountingSupplierParty/cac:Party[cac:PostalAddress/cac:Country/cbc:IdentificationCode = 'SE' and cac:PartyTaxScheme[cac:TaxScheme/cbc:ID = 'VAT']/substring(cbc:CompanyID, 1, 2) = 'SE'] and cbc:ID = 'S']" />

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="number(cbc:Percent) = 25 or number(cbc:Percent) = 12 or number(cbc:Percent) = 6" />
      <xsl:otherwise>
        <svrl:failed-assert test="number(cbc:Percent) = 25 or number(cbc:Percent) = 12 or number(cbc:Percent) = 6">
          <xsl:attribute name="id">SE-R-006</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>For Swedish suppliers, only standard VAT rate of 6, 12 or 25 are used</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:apply-templates mode="M29" select="@*|*" />
  </xsl:template>

	<!--RULE -->
<xsl:template match="//cac:PaymentMeans[//cac:AccountingSupplierParty/cac:Party[cac:PostalAddress/cac:Country/cbc:IdentificationCode = 'SE'] and normalize-space(cbc:PaymentMeansCode) = '30' and normalize-space(cac:PayeeFinancialAccount/cac:FinancialInstitutionBranch/cbc:ID) = 'SE:PLUSGIRO']/cac:PayeeFinancialAccount/cbc:ID" mode="M29" priority="1003">
    <svrl:fired-rule context="//cac:PaymentMeans[//cac:AccountingSupplierParty/cac:Party[cac:PostalAddress/cac:Country/cbc:IdentificationCode = 'SE'] and normalize-space(cbc:PaymentMeansCode) = '30' and normalize-space(cac:PayeeFinancialAccount/cac:FinancialInstitutionBranch/cbc:ID) = 'SE:PLUSGIRO']/cac:PayeeFinancialAccount/cbc:ID" />

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
    <xsl:apply-templates mode="M29" select="@*|*" />
  </xsl:template>

	<!--RULE -->
<xsl:template match="//cac:PaymentMeans[//cac:AccountingSupplierParty/cac:Party[cac:PostalAddress/cac:Country/cbc:IdentificationCode = 'SE'] and normalize-space(cbc:PaymentMeansCode) = '30' and normalize-space(cac:PayeeFinancialAccount/cac:FinancialInstitutionBranch/cbc:ID) = 'SE:BANKGIRO']/cac:PayeeFinancialAccount/cbc:ID" mode="M29" priority="1002">
    <svrl:fired-rule context="//cac:PaymentMeans[//cac:AccountingSupplierParty/cac:Party[cac:PostalAddress/cac:Country/cbc:IdentificationCode = 'SE'] and normalize-space(cbc:PaymentMeansCode) = '30' and normalize-space(cac:PayeeFinancialAccount/cac:FinancialInstitutionBranch/cbc:ID) = 'SE:BANKGIRO']/cac:PayeeFinancialAccount/cbc:ID" />

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
    <xsl:apply-templates mode="M29" select="@*|*" />
  </xsl:template>

	<!--RULE -->
<xsl:template match="//cac:PaymentMeans[//cac:AccountingSupplierParty/cac:Party[cac:PostalAddress/cac:Country/cbc:IdentificationCode = 'SE'] and (cbc:PaymentMeansCode = normalize-space('50') or cbc:PaymentMeansCode = normalize-space('56'))]" mode="M29" priority="1001">
    <svrl:fired-rule context="//cac:PaymentMeans[//cac:AccountingSupplierParty/cac:Party[cac:PostalAddress/cac:Country/cbc:IdentificationCode = 'SE'] and (cbc:PaymentMeansCode = normalize-space('50') or cbc:PaymentMeansCode = normalize-space('56'))]" />

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
    <xsl:apply-templates mode="M29" select="@*|*" />
  </xsl:template>

	<!--RULE -->
<xsl:template match="//cac:PaymentMeans[//cac:AccountingSupplierParty/cac:Party[cac:PostalAddress/cac:Country/cbc:IdentificationCode = 'SE']  and //cac:AccountingCustomerParty/cac:Party[cac:PostalAddress/cac:Country/cbc:IdentificationCode = 'SE'] and (cbc:PaymentMeansCode = normalize-space('31'))]" mode="M29" priority="1000">
    <svrl:fired-rule context="//cac:PaymentMeans[//cac:AccountingSupplierParty/cac:Party[cac:PostalAddress/cac:Country/cbc:IdentificationCode = 'SE']  and //cac:AccountingCustomerParty/cac:Party[cac:PostalAddress/cac:Country/cbc:IdentificationCode = 'SE'] and (cbc:PaymentMeansCode = normalize-space('31'))]" />

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
          <svrl:text>For domestic transactions between Swedish trading partners, credit transfer should be indicated by PaymentMeansCode="30"</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:apply-templates mode="M29" select="@*|*" />
  </xsl:template>
  <xsl:template match="text()" mode="M29" priority="-1" />
  <xsl:template match="@*|node()" mode="M29" priority="-2">
    <xsl:apply-templates mode="M29" select="@*|*" />
  </xsl:template>
  <xsl:param name="isGreekSender" select="($supplierCountry ='GR') or ($supplierCountry ='EL')" />
  <xsl:param name="isGreekReceiver" select="($customerCountry ='GR') or ($customerCountry ='EL')" />
  <xsl:param name="isGreekSenderandReceiver" select="$isGreekSender and $isGreekReceiver" />
  <xsl:param name="accountingSupplierCountry" select="     if (/*/cac:AccountingSupplierParty/cac:Party/cac:PartyTaxScheme[cac:TaxScheme/cbc:ID = 'VAT']/substring(cbc:CompanyID, 1, 2)) then     upper-case(normalize-space(/*/cac:AccountingSupplierParty/cac:Party/cac:PartyTaxScheme[cac:TaxScheme/cbc:ID = 'VAT']/substring(cbc:CompanyID, 1, 2)))     else     if (/*/cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode) then     upper-case(normalize-space(/*/cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode))     else     'XX'" />

<!--PATTERN -->
<xsl:variable name="dateRegExp" select="'^(0?[1-9]|[12][0-9]|3[01])[-\\/ ]?(0?[1-9]|1[0-2])[-\\/ ]?(19|20)[0-9]{2}'" />
  <xsl:variable name="greekDocumentType" select="tokenize('1.1 1.6 2.1 2.4 5.1 5.2 ','\s')" />
  <xsl:variable name="tokenizedUblIssueDate" select="tokenize(/*/cbc:IssueDate,'-')" />

	<!--RULE -->
<xsl:template match="/ubl-invoice:Invoice/cbc:ID[$isGreekSender] | /ubl-creditnote:CreditNote/cbc:ID[$isGreekSender]" mode="M34" priority="1007">
    <svrl:fired-rule context="/ubl-invoice:Invoice/cbc:ID[$isGreekSender] | /ubl-creditnote:CreditNote/cbc:ID[$isGreekSender]" />
    <xsl:variable name="IdSegments" select="tokenize(.,'\|')" />

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="count($IdSegments) = 6" />
      <xsl:otherwise>
        <svrl:failed-assert test="count($IdSegments) = 6">
          <xsl:attribute name="id">GR-R-001-1</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text> When the Supplier is Greek, the Invoice Id should consist of 6 segments</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="string-length(normalize-space($IdSegments[1])) = 9                                   and u:TinVerification($IdSegments[1])                                  and ($IdSegments[1] = /*/cac:AccountingSupplierParty/cac:Party/cac:PartyTaxScheme[cac:TaxScheme/cbc:ID = 'VAT']/substring(cbc:CompanyID, 3, 9)                                  or $IdSegments[1] = /*/cac:TaxRepresentativeParty/cac:PartyTaxScheme[cac:TaxScheme/cbc:ID = 'VAT']/substring(cbc:CompanyID, 3, 9) )" />
      <xsl:otherwise>
        <svrl:failed-assert test="string-length(normalize-space($IdSegments[1])) = 9 and u:TinVerification($IdSegments[1]) and ($IdSegments[1] = /*/cac:AccountingSupplierParty/cac:Party/cac:PartyTaxScheme[cac:TaxScheme/cbc:ID = 'VAT']/substring(cbc:CompanyID, 3, 9) or $IdSegments[1] = /*/cac:TaxRepresentativeParty/cac:PartyTaxScheme[cac:TaxScheme/cbc:ID = 'VAT']/substring(cbc:CompanyID, 3, 9) )">
          <xsl:attribute name="id">GR-R-001-2</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>When the Supplier is Greek, the Invoice Id first segment must be a valid TIN Number and match either the Supplier's or the Tax Representative's Tin Number</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:variable name="tokenizedIdDate" select="tokenize($IdSegments[2],'/')" />

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="string-length(normalize-space($IdSegments[2]))>0                                   and matches($IdSegments[2],$dateRegExp)                                  and ($tokenizedIdDate[1] = $tokenizedUblIssueDate[3]                                     and $tokenizedIdDate[2] = $tokenizedUblIssueDate[2]                                    and $tokenizedIdDate[3] = $tokenizedUblIssueDate[1])" />
      <xsl:otherwise>
        <svrl:failed-assert test="string-length(normalize-space($IdSegments[2]))>0 and matches($IdSegments[2],$dateRegExp) and ($tokenizedIdDate[1] = $tokenizedUblIssueDate[3] and $tokenizedIdDate[2] = $tokenizedUblIssueDate[2] and $tokenizedIdDate[3] = $tokenizedUblIssueDate[1])">
          <xsl:attribute name="id">GR-R-001-3</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>When the Supplier is Greek, the Invoice Id second segment must be a valid Date that matches the invoice Issue Date</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="string-length(normalize-space($IdSegments[3]))>0 and string(number($IdSegments[3])) != 'NaN' and xs:integer($IdSegments[3]) >= 0" />
      <xsl:otherwise>
        <svrl:failed-assert test="string-length(normalize-space($IdSegments[3]))>0 and string(number($IdSegments[3])) != 'NaN' and xs:integer($IdSegments[3]) >= 0">
          <xsl:attribute name="id">GR-R-001-4</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>When Supplier is Greek, the Invoice Id third segment must be a positive integer</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="string-length(normalize-space($IdSegments[4]))>0 and (some $c in $greekDocumentType satisfies $IdSegments[4] = $c)" />
      <xsl:otherwise>
        <svrl:failed-assert test="string-length(normalize-space($IdSegments[4]))>0 and (some $c in $greekDocumentType satisfies $IdSegments[4] = $c)">
          <xsl:attribute name="id">GR-R-001-5</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>When Supplier is Greek, the Invoice Id in the fourth segment must be a valid greek document type</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="string-length($IdSegments[5]) > 0 " />
      <xsl:otherwise>
        <svrl:failed-assert test="string-length($IdSegments[5]) > 0">
          <xsl:attribute name="id">GR-R-001-6</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>When Supplier is Greek, the Invoice Id fifth segment must not be empty</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="string-length($IdSegments[6]) > 0 " />
      <xsl:otherwise>
        <svrl:failed-assert test="string-length($IdSegments[6]) > 0">
          <xsl:attribute name="id">GR-R-001-7</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>When Supplier is Greek, the Invoice Id sixth segment must not be empty</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:apply-templates mode="M34" select="@*|*" />
  </xsl:template>

	<!--RULE -->
<xsl:template match="cac:AccountingSupplierParty[$isGreekSender]/cac:Party" mode="M34" priority="1006">
    <svrl:fired-rule context="cac:AccountingSupplierParty[$isGreekSender]/cac:Party" />

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="string-length(./cac:PartyName/cbc:Name)>0" />
      <xsl:otherwise>
        <svrl:failed-assert test="string-length(./cac:PartyName/cbc:Name)>0">
          <xsl:attribute name="id">GR-R-002</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>Greek Suppliers must provide their full name as they are registered in the  Greek Business Registry (G.E.MH.) as a legal entity or in the Tax Registry as a natural person </svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="count(cac:PartyTaxScheme[normalize-space(cac:TaxScheme/cbc:ID) = 'VAT']/cbc:CompanyID)=1 and                             substring(cac:PartyTaxScheme[normalize-space(cac:TaxScheme/cbc:ID) = 'VAT']/cbc:CompanyID,1,2) = 'EL' and                             u:TinVerification(substring(cac:PartyTaxScheme[normalize-space(cac:TaxScheme/cbc:ID) = 'VAT']/cbc:CompanyID,3))" />
      <xsl:otherwise>
        <svrl:failed-assert test="count(cac:PartyTaxScheme[normalize-space(cac:TaxScheme/cbc:ID) = 'VAT']/cbc:CompanyID)=1 and substring(cac:PartyTaxScheme[normalize-space(cac:TaxScheme/cbc:ID) = 'VAT']/cbc:CompanyID,1,2) = 'EL' and u:TinVerification(substring(cac:PartyTaxScheme[normalize-space(cac:TaxScheme/cbc:ID) = 'VAT']/cbc:CompanyID,3))">
          <xsl:attribute name="id">GR-S-011</xsl:attribute>
          <xsl:attribute name="flag">warning</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>Greek suppliers must provide their Seller Tax Registration Number, prefixed by the country code</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:apply-templates mode="M34" select="@*|*" />
  </xsl:template>

	<!--RULE -->
<xsl:template match="cac:AccountingSupplierParty[$isGreekSender]/cac:Party/cac:PartyTaxScheme[normalize-space(cac:TaxScheme/cbc:ID) = 'VAT']/cbc:CompanyID" mode="M34" priority="1005">
    <svrl:fired-rule context="cac:AccountingSupplierParty[$isGreekSender]/cac:Party/cac:PartyTaxScheme[normalize-space(cac:TaxScheme/cbc:ID) = 'VAT']/cbc:CompanyID" />

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="substring(.,1,2) = 'EL' and u:TinVerification(substring(.,3))" />
      <xsl:otherwise>
        <svrl:failed-assert test="substring(.,1,2) = 'EL' and u:TinVerification(substring(.,3))">
          <xsl:attribute name="id">GR-R-003</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>For the Greek Suppliers, the VAT must start with 'EL' and must be a valid TIN number</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:apply-templates mode="M34" select="@*|*" />
  </xsl:template>

	<!--RULE -->
<xsl:template match="/ubl-invoice:Invoice[$isGreekSender and ( /*/cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode = 'GR')] | /ubl-creditnote:CreditNote[$isGreekSender and ( /*/cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode = 'GR')]" mode="M34" priority="1004">
    <svrl:fired-rule context="/ubl-invoice:Invoice[$isGreekSender and ( /*/cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode = 'GR')] | /ubl-creditnote:CreditNote[$isGreekSender and ( /*/cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode = 'GR')]" />

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="count(cac:AdditionalDocumentReference[cbc:DocumentDescription = '##M.AR.K##'])=1" />
      <xsl:otherwise>
        <svrl:failed-assert test="count(cac:AdditionalDocumentReference[cbc:DocumentDescription = '##M.AR.K##'])=1">
          <xsl:attribute name="id">GR-R-004-1</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text> When Supplier is Greek, there must be one MARK Number</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="count(cac:AdditionalDocumentReference[cbc:DocumentDescription = '##INVOICE|URL##'])=1" />
      <xsl:otherwise>
        <svrl:failed-assert test="count(cac:AdditionalDocumentReference[cbc:DocumentDescription = '##INVOICE|URL##'])=1">
          <xsl:attribute name="id">GR-S-008-1</xsl:attribute>
          <xsl:attribute name="flag">warning</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text> When Supplier is Greek, there should be one invoice url</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="(count(cac:AdditionalDocumentReference[cbc:DocumentDescription = '##INVOICE|URL##']) = 0 ) or (count(cac:AdditionalDocumentReference[cbc:DocumentDescription = '##INVOICE|URL##']) = 1 )" />
      <xsl:otherwise>
        <svrl:failed-assert test="(count(cac:AdditionalDocumentReference[cbc:DocumentDescription = '##INVOICE|URL##']) = 0 ) or (count(cac:AdditionalDocumentReference[cbc:DocumentDescription = '##INVOICE|URL##']) = 1 )">
          <xsl:attribute name="id">GR-R-008-2</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text> When Supplier is Greek, there should be no more than one invoice url</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:apply-templates mode="M34" select="@*|*" />
  </xsl:template>

	<!--RULE -->
<xsl:template match="cac:AdditionalDocumentReference[$isGreekSender and ( /*/cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode = 'GR') and cbc:DocumentDescription = '##M.AR.K##']/cbc:ID" mode="M34" priority="1003">
    <svrl:fired-rule context="cac:AdditionalDocumentReference[$isGreekSender and ( /*/cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode = 'GR') and cbc:DocumentDescription = '##M.AR.K##']/cbc:ID" />

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="matches(.,'^[1-9]([0-9]*)')" />
      <xsl:otherwise>
        <svrl:failed-assert test="matches(.,'^[1-9]([0-9]*)')">
          <xsl:attribute name="id">GR-R-004-2</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text> When Supplier is Greek, the MARK Number must be a positive integer</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:apply-templates mode="M34" select="@*|*" />
  </xsl:template>

	<!--RULE -->
<xsl:template match="cac:AdditionalDocumentReference[$isGreekSender and cbc:DocumentDescription = '##INVOICE|URL##']" mode="M34" priority="1002">
    <svrl:fired-rule context="cac:AdditionalDocumentReference[$isGreekSender and cbc:DocumentDescription = '##INVOICE|URL##']" />

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="string-length(normalize-space(cac:Attachment/cac:ExternalReference/cbc:URI))>0" />
      <xsl:otherwise>
        <svrl:failed-assert test="string-length(normalize-space(cac:Attachment/cac:ExternalReference/cbc:URI))>0">
          <xsl:attribute name="id">GR-R-008-3</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>When Supplier is Greek and the INVOICE URL Document reference exists, the External Reference URI should be present</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:apply-templates mode="M34" select="@*|*" />
  </xsl:template>

	<!--RULE -->
<xsl:template match="cac:AccountingCustomerParty[$isGreekSender]/cac:Party" mode="M34" priority="1001">
    <svrl:fired-rule context="cac:AccountingCustomerParty[$isGreekSender]/cac:Party" />

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="string-length(./cac:PartyName/cbc:Name)>0" />
      <xsl:otherwise>
        <svrl:failed-assert test="string-length(./cac:PartyName/cbc:Name)>0">
          <xsl:attribute name="id">GR-R-005</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>Greek Suppliers must provide the full name of the buyer</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:apply-templates mode="M34" select="@*|*" />
  </xsl:template>

	<!--RULE -->
<xsl:template match="cac:AccountingSupplierParty/cac:Party[$accountingSupplierCountry='GR' or $accountingSupplierCountry='EL']/cbc:EndpointID" mode="M34" priority="1000">
    <svrl:fired-rule context="cac:AccountingSupplierParty/cac:Party[$accountingSupplierCountry='GR' or $accountingSupplierCountry='EL']/cbc:EndpointID" />

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="./@schemeID='9933' and u:TinVerification(.)" />
      <xsl:otherwise>
        <svrl:failed-assert test="./@schemeID='9933' and u:TinVerification(.)">
          <xsl:attribute name="id">GR-R-009</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>Greek suppliers that send an invoice through the PEPPOL network must use a correct TIN number as an electronic address according to PEPPOL Electronic Address Identifier scheme (schemeID 9933).</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:apply-templates mode="M34" select="@*|*" />
  </xsl:template>
  <xsl:template match="text()" mode="M34" priority="-1" />
  <xsl:template match="@*|node()" mode="M34" priority="-2">
    <xsl:apply-templates mode="M34" select="@*|*" />
  </xsl:template>

<!--PATTERN -->


	<!--RULE -->
<xsl:template match="cac:AccountingCustomerParty[$isGreekSenderandReceiver]/cac:Party" mode="M35" priority="1001">
    <svrl:fired-rule context="cac:AccountingCustomerParty[$isGreekSenderandReceiver]/cac:Party" />

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="count(cac:PartyTaxScheme[normalize-space(cac:TaxScheme/cbc:ID) = 'VAT']/cbc:CompanyID)=1 and                             substring(cac:PartyTaxScheme[normalize-space(cac:TaxScheme/cbc:ID) = 'VAT']/cbc:CompanyID,1,2) = 'EL' and                             u:TinVerification(substring(cac:PartyTaxScheme[normalize-space(cac:TaxScheme/cbc:ID) = 'VAT']/cbc:CompanyID,3))" />
      <xsl:otherwise>
        <svrl:failed-assert test="count(cac:PartyTaxScheme[normalize-space(cac:TaxScheme/cbc:ID) = 'VAT']/cbc:CompanyID)=1 and substring(cac:PartyTaxScheme[normalize-space(cac:TaxScheme/cbc:ID) = 'VAT']/cbc:CompanyID,1,2) = 'EL' and u:TinVerification(substring(cac:PartyTaxScheme[normalize-space(cac:TaxScheme/cbc:ID) = 'VAT']/cbc:CompanyID,3))">
          <xsl:attribute name="id">GR-R-006</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>Greek Suppliers must provide the VAT number of the buyer, if the buyer is Greek </svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:apply-templates mode="M35" select="@*|*" />
  </xsl:template>

	<!--RULE -->
<xsl:template match="cac:AccountingCustomerParty[$isGreekSenderandReceiver]/cac:Party/cbc:EndpointID" mode="M35" priority="1000">
    <svrl:fired-rule context="cac:AccountingCustomerParty[$isGreekSenderandReceiver]/cac:Party/cbc:EndpointID" />

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="./@schemeID='9933' and u:TinVerification(.)" />
      <xsl:otherwise>
        <svrl:failed-assert test="./@schemeID='9933' and u:TinVerification(.)">
          <xsl:attribute name="id">GR-R-010</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>Greek Suppliers that send an invoice through the PEPPOL network to a greek buyer must use a correct TIN number as an electronic address according to PEPPOL Electronic Address Identifier scheme (SchemeID 9933)</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:apply-templates mode="M35" select="@*|*" />
  </xsl:template>
  <xsl:template match="text()" mode="M35" priority="-1" />
  <xsl:template match="@*|node()" mode="M35" priority="-2">
    <xsl:apply-templates mode="M35" select="@*|*" />
  </xsl:template>

<!--PATTERN -->
<xsl:variable name="SupplierCountry" select="concat(ubl-creditnote:CreditNote/cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode, ubl-invoice:Invoice/cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode)" />
  <xsl:variable name="CustomerCountry" select="concat(ubl-creditnote:CreditNote/cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode, ubl-invoice:Invoice/cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode)" />

	<!--RULE -->
<xsl:template match="ubl-creditnote:CreditNote[$SupplierCountry = 'IS'] | ubl-invoice:Invoice[$SupplierCountry = 'IS']" mode="M36" priority="1001">
    <svrl:fired-rule context="ubl-creditnote:CreditNote[$SupplierCountry = 'IS'] | ubl-invoice:Invoice[$SupplierCountry = 'IS']" />

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="( ( not(contains(normalize-space(cbc:InvoiceTypeCode),' ')) and contains( ' 380 381 ',concat(' ',normalize-space(cbc:InvoiceTypeCode),' ') ) ) ) or ( ( not(contains(normalize-space(cbc:CreditNoteTypeCode),' ')) and contains( ' 380 381 ',concat(' ',normalize-space(cbc:CreditNoteTypeCode),' ') ) ) )" />
      <xsl:otherwise>
        <svrl:failed-assert test="( ( not(contains(normalize-space(cbc:InvoiceTypeCode),' ')) and contains( ' 380 381 ',concat(' ',normalize-space(cbc:InvoiceTypeCode),' ') ) ) ) or ( ( not(contains(normalize-space(cbc:CreditNoteTypeCode),' ')) and contains( ' 380 381 ',concat(' ',normalize-space(cbc:CreditNoteTypeCode),' ') ) ) )">
          <xsl:attribute name="id">IS-R-001</xsl:attribute>
          <xsl:attribute name="flag">warning</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>[IS-R-001]-If seller is icelandic then invoice type should be 380 or 381 — Ef seljandi er íslenskur þá ætti gerð reiknings (BT-3) að vera sölureikningur (380) eða kreditreikningur (381).</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="exists(cac:AccountingSupplierParty/cac:Party/cac:PartyLegalEntity/cbc:CompanyID) and cac:AccountingSupplierParty/cac:Party/cac:PartyLegalEntity/cbc:CompanyID/@schemeID = '0196'" />
      <xsl:otherwise>
        <svrl:failed-assert test="exists(cac:AccountingSupplierParty/cac:Party/cac:PartyLegalEntity/cbc:CompanyID) and cac:AccountingSupplierParty/cac:Party/cac:PartyLegalEntity/cbc:CompanyID/@schemeID = '0196'">
          <xsl:attribute name="id">IS-R-002</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>[IS-R-002]-If seller is icelandic then it shall contain sellers legal id — Ef seljandi er íslenskur þá skal reikningur innihalda íslenska kennitölu seljanda (BT-30).</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="exists(cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cbc:StreetName) and exists(cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cbc:PostalZone)" />
      <xsl:otherwise>
        <svrl:failed-assert test="exists(cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cbc:StreetName) and exists(cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cbc:PostalZone)">
          <xsl:attribute name="id">IS-R-003</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>[IS-R-003]-If seller is icelandic then it shall contain his address with street name and zip code — Ef seljandi er íslenskur þá skal heimilisfang seljanda innihalda götuheiti og póstnúmer (BT-35 og BT-38).</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="exists(cac:PaymentMeans[cbc:PaymentMeansCode = '9']/cac:PayeeFinancialAccount/cbc:ID)         and string-length(normalize-space(cac:PaymentMeans[cbc:PaymentMeansCode = '9']/cac:PayeeFinancialAccount/cbc:ID)) = 12        or not(exists(cac:PaymentMeans[cbc:PaymentMeansCode = '9']))" />
      <xsl:otherwise>
        <svrl:failed-assert test="exists(cac:PaymentMeans[cbc:PaymentMeansCode = '9']/cac:PayeeFinancialAccount/cbc:ID) and string-length(normalize-space(cac:PaymentMeans[cbc:PaymentMeansCode = '9']/cac:PayeeFinancialAccount/cbc:ID)) = 12 or not(exists(cac:PaymentMeans[cbc:PaymentMeansCode = '9']))">
          <xsl:attribute name="id">IS-R-006</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>[IS-R-006]-If seller is icelandic and payment means code is 9 then a 12 digit account id must exist — Ef seljandi er íslenskur og greiðslumáti (BT-81) er krafa (kóti 9) þá skal koma fram 12 stafa númer (bankanúmer, höfuðbók 66 og reikningsnúmer) (BT-84)</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="exists(cac:PaymentMeans[cbc:PaymentMeansCode = '42']/cac:PayeeFinancialAccount/cbc:ID)         and string-length(normalize-space(cac:PaymentMeans[cbc:PaymentMeansCode = '42']/cac:PayeeFinancialAccount/cbc:ID)) = 12        or not(exists(cac:PaymentMeans[cbc:PaymentMeansCode = '42']))" />
      <xsl:otherwise>
        <svrl:failed-assert test="exists(cac:PaymentMeans[cbc:PaymentMeansCode = '42']/cac:PayeeFinancialAccount/cbc:ID) and string-length(normalize-space(cac:PaymentMeans[cbc:PaymentMeansCode = '42']/cac:PayeeFinancialAccount/cbc:ID)) = 12 or not(exists(cac:PaymentMeans[cbc:PaymentMeansCode = '42']))">
          <xsl:attribute name="id">IS-R-007</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>[IS-R-007]-If seller is icelandic and payment means code is 42 then a 12 digit account id must exist  — Ef seljandi er íslenskur og greiðslumáti (BT-81) er millifærsla (kóti 42) þá skal koma fram 12 stafa reikningnúmer (BT-84)</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="(exists(cac:AdditionalDocumentReference[cbc:DocumentDescription = 'EINDAGI']) and string-length(cac:AdditionalDocumentReference[cbc:DocumentDescription = 'EINDAGI']/cbc:ID) = 10 and (string(cac:AdditionalDocumentReference[cbc:DocumentDescription = 'EINDAGI']/cbc:ID) castable as xs:date)) or not(exists(cac:AdditionalDocumentReference[cbc:DocumentDescription = 'EINDAGI']))" />
      <xsl:otherwise>
        <svrl:failed-assert test="(exists(cac:AdditionalDocumentReference[cbc:DocumentDescription = 'EINDAGI']) and string-length(cac:AdditionalDocumentReference[cbc:DocumentDescription = 'EINDAGI']/cbc:ID) = 10 and (string(cac:AdditionalDocumentReference[cbc:DocumentDescription = 'EINDAGI']/cbc:ID) castable as xs:date)) or not(exists(cac:AdditionalDocumentReference[cbc:DocumentDescription = 'EINDAGI']))">
          <xsl:attribute name="id">IS-R-008</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>[IS-R-008]-If seller is icelandic and invoice contains supporting description EINDAGI then the id form must be YYYY-MM-DD — Ef seljandi er íslenskur þá skal eindagi (BT-122, DocumentDescription = EINDAGI) vera á forminu YYYY-MM-DD.</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="(exists(cac:AdditionalDocumentReference[cbc:DocumentDescription = 'EINDAGI']) and exists(cbc:DueDate)) or not(exists(cac:AdditionalDocumentReference[cbc:DocumentDescription = 'EINDAGI']))" />
      <xsl:otherwise>
        <svrl:failed-assert test="(exists(cac:AdditionalDocumentReference[cbc:DocumentDescription = 'EINDAGI']) and exists(cbc:DueDate)) or not(exists(cac:AdditionalDocumentReference[cbc:DocumentDescription = 'EINDAGI']))">
          <xsl:attribute name="id">IS-R-009</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>[IS-R-009]-If seller is icelandic and invoice contains supporting description EINDAGI invoice must have due date — Ef seljandi er íslenskur þá skal reikningur sem inniheldur eindaga (BT-122, DocumentDescription = EINDAGI) einnig hafa gjalddaga (BT-9).</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="(exists(cac:AdditionalDocumentReference[cbc:DocumentDescription = 'EINDAGI']) and (cbc:DueDate) &lt;= (cac:AdditionalDocumentReference[cbc:DocumentDescription = 'EINDAGI']/cbc:ID)) or not(exists(cac:AdditionalDocumentReference[cbc:DocumentDescription = 'EINDAGI']))" />
      <xsl:otherwise>
        <svrl:failed-assert test="(exists(cac:AdditionalDocumentReference[cbc:DocumentDescription = 'EINDAGI']) and (cbc:DueDate) &lt;= (cac:AdditionalDocumentReference[cbc:DocumentDescription = 'EINDAGI']/cbc:ID)) or not(exists(cac:AdditionalDocumentReference[cbc:DocumentDescription = 'EINDAGI']))">
          <xsl:attribute name="id">IS-R-010</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>[IS-R-010]-If seller is icelandic and invoice contains supporting description EINDAGI the id date must be same or later than due date — Ef seljandi er íslenskur þá skal eindagi (BT-122, DocumentDescription = EINDAGI) skal vera sami eða síðar en gjalddagi (BT-9) ef eindagi er til staðar.</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:apply-templates mode="M36" select="@*|*" />
  </xsl:template>

	<!--RULE -->
<xsl:template match="ubl-creditnote:CreditNote[$SupplierCountry = 'IS' and $CustomerCountry = 'IS']/cac:AccountingCustomerParty | ubl-invoice:Invoice[$SupplierCountry = 'IS' and $CustomerCountry = 'IS']/cac:AccountingCustomerParty" mode="M36" priority="1000">
    <svrl:fired-rule context="ubl-creditnote:CreditNote[$SupplierCountry = 'IS' and $CustomerCountry = 'IS']/cac:AccountingCustomerParty | ubl-invoice:Invoice[$SupplierCountry = 'IS' and $CustomerCountry = 'IS']/cac:AccountingCustomerParty" />

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="exists(cac:Party/cac:PartyLegalEntity/cbc:CompanyID) and cac:Party/cac:PartyLegalEntity/cbc:CompanyID/@schemeID = '0196'" />
      <xsl:otherwise>
        <svrl:failed-assert test="exists(cac:Party/cac:PartyLegalEntity/cbc:CompanyID) and cac:Party/cac:PartyLegalEntity/cbc:CompanyID/@schemeID = '0196'">
          <xsl:attribute name="id">IS-R-004</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>[IS-R-004]-If seller and buyer are icelandic then the invoice shall contain the buyers icelandic legal identifier — Ef seljandi og kaupandi eru íslenskir þá skal reikningurinn innihalda íslenska kennitölu kaupanda (BT-47).</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="exists(cac:Party/cac:PostalAddress/cbc:StreetName) and exists(cac:Party/cac:PostalAddress/cbc:PostalZone)" />
      <xsl:otherwise>
        <svrl:failed-assert test="exists(cac:Party/cac:PostalAddress/cbc:StreetName) and exists(cac:Party/cac:PostalAddress/cbc:PostalZone)">
          <xsl:attribute name="id">IS-R-005</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>[IS-R-005]-If seller and buyer are icelandic then the invoice shall contain the buyers address with street name and zip code  — Ef seljandi og kaupandi eru íslenskir þá skal heimilisfang kaupanda innihalda götuheiti og póstnúmer (BT-50 og BT-53)</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:apply-templates mode="M36" select="@*|*" />
  </xsl:template>
  <xsl:template match="text()" mode="M36" priority="-1" />
  <xsl:template match="@*|node()" mode="M36" priority="-2">
    <xsl:apply-templates mode="M36" select="@*|*" />
  </xsl:template>

<!--PATTERN -->
<xsl:variable name="supplierCountryIsNL" select="(upper-case(normalize-space(/*/cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode)) = 'NL')" />
  <xsl:variable name="customerCountryIsNL" select="(upper-case(normalize-space(/*/cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode)) = 'NL')" />
  <xsl:variable name="taxRepresentativeCountryIsNL" select="(upper-case(normalize-space(/*/cac:TaxRepresentativeParty/cac:PostalAddress/cac:Country/cbc:IdentificationCode)) = 'NL')" />

	<!--RULE -->
<xsl:template match="cbc:CreditNoteTypeCode[$supplierCountryIsNL]" mode="M37" priority="1008">
    <svrl:fired-rule context="cbc:CreditNoteTypeCode[$supplierCountryIsNL]" />

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="/*/cac:BillingReference/cac:InvoiceDocumentReference/cbc:ID" />
      <xsl:otherwise>
        <svrl:failed-assert test="/*/cac:BillingReference/cac:InvoiceDocumentReference/cbc:ID">
          <xsl:attribute name="id">NL-R-001</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>[NL-R-001] For suppliers in the Netherlands, if the document is a creditnote, the document MUST contain an invoice reference (cac:BillingReference/cac:InvoiceDocumentReference/cbc:ID)</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:apply-templates mode="M37" select="@*|*" />
  </xsl:template>

	<!--RULE -->
<xsl:template match="cac:AccountingSupplierParty/cac:Party/cac:PostalAddress[$supplierCountryIsNL]" mode="M37" priority="1007">
    <svrl:fired-rule context="cac:AccountingSupplierParty/cac:Party/cac:PostalAddress[$supplierCountryIsNL]" />

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="cbc:StreetName and cbc:CityName and cbc:PostalZone" />
      <xsl:otherwise>
        <svrl:failed-assert test="cbc:StreetName and cbc:CityName and cbc:PostalZone">
          <xsl:attribute name="id">NL-R-002</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>[NL-R-002] For suppliers in the Netherlands the supplier's address (cac:AccountingSupplierParty/cac:Party/cac:PostalAddress) MUST contain street name (cbc:StreetName), city (cbc:CityName) and post code (cbc:PostalZone)</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:apply-templates mode="M37" select="@*|*" />
  </xsl:template>

	<!--RULE -->
<xsl:template match="cac:AccountingSupplierParty/cac:Party/cac:PartyLegalEntity/cbc:CompanyID[$supplierCountryIsNL]" mode="M37" priority="1006">
    <svrl:fired-rule context="cac:AccountingSupplierParty/cac:Party/cac:PartyLegalEntity/cbc:CompanyID[$supplierCountryIsNL]" />

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
    <xsl:apply-templates mode="M37" select="@*|*" />
  </xsl:template>

	<!--RULE -->
<xsl:template match="cac:AccountingCustomerParty/cac:Party/cac:PostalAddress[$supplierCountryIsNL and $customerCountryIsNL]" mode="M37" priority="1005">
    <svrl:fired-rule context="cac:AccountingCustomerParty/cac:Party/cac:PostalAddress[$supplierCountryIsNL and $customerCountryIsNL]" />

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="cbc:StreetName and cbc:CityName and cbc:PostalZone" />
      <xsl:otherwise>
        <svrl:failed-assert test="cbc:StreetName and cbc:CityName and cbc:PostalZone">
          <xsl:attribute name="id">NL-R-004</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>[NL-R-004] For suppliers in the Netherlands, if the customer is in the Netherlands, the customer address (cac:AccountingCustomerParty/cac:Party/cac:PostalAddress) MUST contain the street name (cbc:StreetName), the city (cbc:CityName) and post code (cbc:PostalZone)</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:apply-templates mode="M37" select="@*|*" />
  </xsl:template>

	<!--RULE -->
<xsl:template match="cac:AccountingCustomerParty/cac:Party/cac:PartyLegalEntity/cbc:CompanyID[$supplierCountryIsNL and $customerCountryIsNL]" mode="M37" priority="1004">
    <svrl:fired-rule context="cac:AccountingCustomerParty/cac:Party/cac:PartyLegalEntity/cbc:CompanyID[$supplierCountryIsNL and $customerCountryIsNL]" />

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="(contains(concat(' ', string-join(@schemeID, ' '), ' '), ' 0106 ') or contains(concat(' ', string-join(@schemeID, ' '), ' '), ' 0190 ')) and (normalize-space(.) != '')" />
      <xsl:otherwise>
        <svrl:failed-assert test="(contains(concat(' ', string-join(@schemeID, ' '), ' '), ' 0106 ') or contains(concat(' ', string-join(@schemeID, ' '), ' '), ' 0190 ')) and (normalize-space(.) != '')">
          <xsl:attribute name="id">NL-R-005</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>[NL-R-005] For suppliers in the Netherlands, if the customer is in the Netherlands, the customer's legal entity identifier MUST be either a KVK or OIN number (schemeID 0106 or 0190)</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:apply-templates mode="M37" select="@*|*" />
  </xsl:template>

	<!--RULE -->
<xsl:template match="cac:TaxRepresentativeParty/cac:PostalAddress[$supplierCountryIsNL and $taxRepresentativeCountryIsNL]" mode="M37" priority="1003">
    <svrl:fired-rule context="cac:TaxRepresentativeParty/cac:PostalAddress[$supplierCountryIsNL and $taxRepresentativeCountryIsNL]" />

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="cbc:StreetName and cbc:CityName and cbc:PostalZone" />
      <xsl:otherwise>
        <svrl:failed-assert test="cbc:StreetName and cbc:CityName and cbc:PostalZone">
          <xsl:attribute name="id">NL-R-006</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>[NL-R-006] For suppliers in the Netherlands, if the fiscal representative is in the Netherlands, the representative's address (cac:TaxRepresentativeParty/cac:PostalAddress) MUST contain street name (cbc:StreetName), city (cbc:CityName) and post code (cbc:PostalZone)</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:apply-templates mode="M37" select="@*|*" />
  </xsl:template>

	<!--RULE -->
<xsl:template match="cac:LegalMonetaryTotal[$supplierCountryIsNL]" mode="M37" priority="1002">
    <svrl:fired-rule context="cac:LegalMonetaryTotal[$supplierCountryIsNL]" />

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="xs:decimal(cbc:PayableAmount) &lt;= 0.0 or (//cac:PaymentMeans)" />
      <xsl:otherwise>
        <svrl:failed-assert test="xs:decimal(cbc:PayableAmount) &lt;= 0.0 or (//cac:PaymentMeans)">
          <xsl:attribute name="id">NL-R-007</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>[NL-R-007] For suppliers in the Netherlands, the supplier MUST provide a means of payment (cac:PaymentMeans) if the payment is from customer to supplier</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:apply-templates mode="M37" select="@*|*" />
  </xsl:template>

	<!--RULE -->
<xsl:template match="cac:PaymentMeans[$supplierCountryIsNL]" mode="M37" priority="1001">
    <svrl:fired-rule context="cac:PaymentMeans[$supplierCountryIsNL]" />

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="normalize-space(cbc:PaymentMeansCode) = '30' or         normalize-space(cbc:PaymentMeansCode) = '48' or         normalize-space(cbc:PaymentMeansCode) = '49' or         normalize-space(cbc:PaymentMeansCode) = '57' or         normalize-space(cbc:PaymentMeansCode) = '58' or         normalize-space(cbc:PaymentMeansCode) = '59'" />
      <xsl:otherwise>
        <svrl:failed-assert test="normalize-space(cbc:PaymentMeansCode) = '30' or normalize-space(cbc:PaymentMeansCode) = '48' or normalize-space(cbc:PaymentMeansCode) = '49' or normalize-space(cbc:PaymentMeansCode) = '57' or normalize-space(cbc:PaymentMeansCode) = '58' or normalize-space(cbc:PaymentMeansCode) = '59'">
          <xsl:attribute name="id">NL-R-008</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>[NL-R-008] For suppliers in the Netherlands, the payment means code (cac:PaymentMeans/cbc:PaymentMeansCode) MUST be one of 30, 48, 49, 57, 58 or 59</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:apply-templates mode="M37" select="@*|*" />
  </xsl:template>

	<!--RULE -->
<xsl:template match="cac:OrderLineReference/cbc:LineID[$supplierCountryIsNL]" mode="M37" priority="1000">
    <svrl:fired-rule context="cac:OrderLineReference/cbc:LineID[$supplierCountryIsNL]" />

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="exists(/*/cac:OrderReference/cbc:ID)" />
      <xsl:otherwise>
        <svrl:failed-assert test="exists(/*/cac:OrderReference/cbc:ID)">
          <xsl:attribute name="id">NL-R-009</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>[NL-R-009] For suppliers in the Netherlands, if an order line reference (cac:OrderLineReference/cbc:LineID) is used, there must be an order reference on the document level (cac:OrderReference/cbc:ID)</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:apply-templates mode="M37" select="@*|*" />
  </xsl:template>
  <xsl:template match="text()" mode="M37" priority="-1" />
  <xsl:template match="@*|node()" mode="M37" priority="-2">
    <xsl:apply-templates mode="M37" select="@*|*" />
  </xsl:template>

<!--PATTERN -->
<xsl:variable name="ISO3166" select="tokenize('AD AE AF AG AI AL AM AO AQ AR AS AT AU AW AX AZ BA BB BD BE BF BG BH BI BJ BL BM BN BO BQ BR BS BT BV BW BY BZ CA CC CD CF CG CH CI CK CL CM CN CO CR CU CV CW CX CY CZ DE DJ DK DM DO DZ EC EE EG EH ER ES ET FI FJ FK FM FO FR GA GB GD GE GF GG GH GI GL GM GN GP GQ GR GS GT GU GW GY HK HM HN HR HT HU ID IE IL IM IN IO IQ IR IS IT JE JM JO JP KE KG KH KI KM KN KP KR KW KY KZ LA LB LC LI LK LR LS LT LU LV LY MA MC MD ME MF MG MH MK ML MM MN MO MP MQ MR MS MT MU MV MW MX MY MZ NA NC NE NF NG NI NL NO NP NR NU NZ OM PA PE PF PG PH PK PL PM PN PR PS PT PW PY QA RE RO RS RU RW SA SB SC SD SE SG SH SI SJ SK SL SM SN SO SR SS ST SV SX SY SZ TC TD TF TG TH TJ TK TL TM TN TO TR TT TV TW TZ UA UG UM US UY UZ VA VC VE VG VI VN VU WF WS YE YT ZA ZM ZW 1A XI', '\s')" />
  <xsl:variable name="ISO4217" select="tokenize('AED AFN ALL AMD ANG AOA ARS AUD AWG AZN BAM BBD BDT BGN BHD BIF BMD BND BOB BOV BRL BSD BTN BWP BYN BZD CAD CDF CHE CHF CHW CLF CLP CNY COP COU CRC CUC CUP CVE CZK DJF DKK DOP DZD EGP ERN ETB EUR FJD FKP GBP GEL GHS GIP GMD GNF GTQ GYD HKD HNL HRK HTG HUF IDR ILS INR IQD IRR ISK JMD JOD JPY KES KGS KHR KMF KPW KRW KWD KYD KZT LAK LBP LKR LRD LSL LYD MAD MDL MGA MKD MMK MNT MOP MRO MUR MVR MWK MXN MXV MYR MZN NAD NGN NIO NOK NPR NZD OMR PAB PEN PGK PHP PKR PLN PYG QAR RON RSD RUB RWF SAR SBD SCR SDG SEK SGD SHP SLL SOS SRD SSP STN SVC SYP SZL THB TJS TMT TND TOP TRY TTD TWD TZS UAH UGX USD USN UYI UYU UZS VEF VND VUV WST XAF XAG XAU XBA XBB XBC XBD XCD XDR XOF XPD XPF XPT XSU XTS XUA XXX YER ZAR ZMW ZWL', '\s')" />
  <xsl:variable name="MIMECODE" select="tokenize('application/pdf image/png image/jpeg text/csv application/vnd.openxmlformats-officedocument.spreadsheetml.sheet application/vnd.oasis.opendocument.spreadsheet', '\s')" />
  <xsl:variable name="UNCL2005" select="tokenize('3 35 432', '\s')" />
  <xsl:variable name="UNCL5189" select="tokenize('41 42 60 62 63 64 65 66 67 68 70 71 88 95 100 102 103 104 105', '\s')" />
  <xsl:variable name="UNCL7161" select="tokenize('AA AAA AAC AAD AAE AAF AAH AAI AAS AAT AAV AAY AAZ ABA ABB ABC ABD ABF ABK ABL ABN ABR ABS ABT ABU ACF ACG ACH ACI ACJ ACK ACL ACM ACS ADC ADE ADJ ADK ADL ADM ADN ADO ADP ADQ ADR ADT ADW ADY ADZ AEA AEB AEC AED AEF AEH AEI AEJ AEK AEL AEM AEN AEO AEP AES AET AEU AEV AEW AEX AEY AEZ AJ AU CA CAB CAD CAE CAF CAI CAJ CAK CAL CAM CAN CAO CAP CAQ CAR CAS CAT CAU CAV CAW CAX CAY CAZ CD CG CS CT DAB DAC DAD DAF DAG DAH DAI DAJ DAK DAL DAM DAN DAO DAP DAQ DL EG EP ER FAA FAB FAC FC FH FI GAA HAA HD HH IAA IAB ID IF IR IS KO L1 LA LAA LAB LF MAE MI ML NAA OA PA PAA PC PL RAB RAC RAD RAF RE RF RH RV SA SAA SAD SAE SAI SG SH SM SU TAB TAC TT TV V1 V2 WH XAA YY ZZZ', '\s')" />
  <xsl:variable name="UNCL5305" select="tokenize('AE E S Z G O K L M', '\s')" />
  <xsl:variable name="eaid" select="tokenize('0002 0007 0009 0037 0060 0088 0096 0097 0106 0130 0135 0142 0151 0183 0184 0188 0190 0191 0192 0193 0195 0196 0198 0199 0200 0201 0202 0204 0208 0209 0210 0211 0212 0213 0215 0216 0218 0221 0230 9901 9910 9913 9914 9915 9918 9919 9920 9922 9923 9924 9925 9926 9927 9928 9929 9930 9931 9932 9933 9934 9935 9936 9937 9938 9939 9940 9941 9942 9943 9944 9945 9946 9947 9948 9949 9950 9951 9952 9953 9957 9959', '\s')" />

	<!--RULE -->
<xsl:template match="cbc:EmbeddedDocumentBinaryObject[@mimeCode]" mode="M38" priority="1016">
    <svrl:fired-rule context="cbc:EmbeddedDocumentBinaryObject[@mimeCode]" />

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="           some $code in $MIMECODE             satisfies @mimeCode = $code" />
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
    <xsl:apply-templates mode="M38" select="@*|*" />
  </xsl:template>

	<!--RULE -->
<xsl:template match="cac:AllowanceCharge[cbc:ChargeIndicator = 'false']/cbc:AllowanceChargeReasonCode" mode="M38" priority="1015">
    <svrl:fired-rule context="cac:AllowanceCharge[cbc:ChargeIndicator = 'false']/cbc:AllowanceChargeReasonCode" />

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="           some $code in $UNCL5189             satisfies normalize-space(text()) = $code" />
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
    <xsl:apply-templates mode="M38" select="@*|*" />
  </xsl:template>

	<!--RULE -->
<xsl:template match="cac:AllowanceCharge[cbc:ChargeIndicator = 'true']/cbc:AllowanceChargeReasonCode" mode="M38" priority="1014">
    <svrl:fired-rule context="cac:AllowanceCharge[cbc:ChargeIndicator = 'true']/cbc:AllowanceChargeReasonCode" />

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="           some $code in $UNCL7161             satisfies normalize-space(text()) = $code" />
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
    <xsl:apply-templates mode="M38" select="@*|*" />
  </xsl:template>

	<!--RULE -->
<xsl:template match="cac:InvoicePeriod/cbc:DescriptionCode" mode="M38" priority="1013">
    <svrl:fired-rule context="cac:InvoicePeriod/cbc:DescriptionCode" />

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="           some $code in $UNCL2005             satisfies normalize-space(text()) = $code" />
      <xsl:otherwise>
        <svrl:failed-assert test="some $code in $UNCL2005 satisfies normalize-space(text()) = $code">
          <xsl:attribute name="id">PEPPOL-EN16931-CL006</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>Invoice period description code must be according to UNCL 2005 D.16B.</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:apply-templates mode="M38" select="@*|*" />
  </xsl:template>

	<!--RULE -->
<xsl:template match="cbc:Amount | cbc:BaseAmount | cbc:PriceAmount | cbc:TaxAmount | cbc:TaxableAmount | cbc:LineExtensionAmount | cbc:TaxExclusiveAmount | cbc:TaxInclusiveAmount | cbc:AllowanceTotalAmount | cbc:ChargeTotalAmount | cbc:PrepaidAmount | cbc:PayableRoundingAmount | cbc:PayableAmount" mode="M38" priority="1012">
    <svrl:fired-rule context="cbc:Amount | cbc:BaseAmount | cbc:PriceAmount | cbc:TaxAmount | cbc:TaxableAmount | cbc:LineExtensionAmount | cbc:TaxExclusiveAmount | cbc:TaxInclusiveAmount | cbc:AllowanceTotalAmount | cbc:ChargeTotalAmount | cbc:PrepaidAmount | cbc:PayableRoundingAmount | cbc:PayableAmount" />

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="           some $code in $ISO4217             satisfies @currencyID = $code" />
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
    <xsl:apply-templates mode="M38" select="@*|*" />
  </xsl:template>

	<!--RULE -->
<xsl:template match="cbc:InvoiceTypeCode" mode="M38" priority="1011">
    <svrl:fired-rule context="cbc:InvoiceTypeCode" />

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="           $profile != '01' or (some $code in tokenize('71 80 82 84 102 218 219 331 380 382 383 386 388 393 395 553 575 623 780 817 870 875 876 877', '\s')             satisfies normalize-space(text()) = $code)" />
      <xsl:otherwise>
        <svrl:failed-assert test="$profile != '01' or (some $code in tokenize('71 80 82 84 102 218 219 331 380 382 383 386 388 393 395 553 575 623 780 817 870 875 876 877', '\s') satisfies normalize-space(text()) = $code)">
          <xsl:attribute name="id">PEPPOL-EN16931-P0100</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>Invoice type code MUST be set according to the profile.</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:apply-templates mode="M38" select="@*|*" />
  </xsl:template>

	<!--RULE -->
<xsl:template match="cbc:CreditNoteTypeCode" mode="M38" priority="1010">
    <svrl:fired-rule context="cbc:CreditNoteTypeCode" />

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="           $profile != '01' or (some $code in tokenize('381 396 81 83 532', '\s')             satisfies normalize-space(text()) = $code)" />
      <xsl:otherwise>
        <svrl:failed-assert test="$profile != '01' or (some $code in tokenize('381 396 81 83 532', '\s') satisfies normalize-space(text()) = $code)">
          <xsl:attribute name="id">PEPPOL-EN16931-P0101</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>Credit note type code MUST be set according to the profile.</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:apply-templates mode="M38" select="@*|*" />
  </xsl:template>

	<!--RULE -->
<xsl:template match="cbc:IssueDate | cbc:DueDate | cbc:TaxPointDate | cbc:StartDate | cbc:EndDate | cbc:ActualDeliveryDate" mode="M38" priority="1009">
    <svrl:fired-rule context="cbc:IssueDate | cbc:DueDate | cbc:TaxPointDate | cbc:StartDate | cbc:EndDate | cbc:ActualDeliveryDate" />

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="string-length(text()) = 10 and (string(.) castable as xs:date)" />
      <xsl:otherwise>
        <svrl:failed-assert test="string-length(text()) = 10 and (string(.) castable as xs:date)">
          <xsl:attribute name="id">PEPPOL-EN16931-F001</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>A date
        MUST be formatted YYYY-MM-DD.</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:apply-templates mode="M38" select="@*|*" />
  </xsl:template>

	<!--RULE -->
<xsl:template match="cbc:EndpointID[@schemeID]" mode="M38" priority="1008">
    <svrl:fired-rule context="cbc:EndpointID[@schemeID]" />

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="         some $code in $eaid         satisfies @schemeID = $code" />
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
    <xsl:apply-templates mode="M38" select="@*|*" />
  </xsl:template>

	<!--RULE -->
<xsl:template match="cac:TaxCategory[upper-case(cbc:TaxExemptionReasonCode)='VATEX-EU-G']" mode="M38" priority="1007">
    <svrl:fired-rule context="cac:TaxCategory[upper-case(cbc:TaxExemptionReasonCode)='VATEX-EU-G']" />

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="normalize-space(cbc:ID)='G'" />
      <xsl:otherwise>
        <svrl:failed-assert test="normalize-space(cbc:ID)='G'">
          <xsl:attribute name="id">PEPPOL-EN16931-P0104</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>Tax Category G MUST be used when exemption reason code is VATEX-EU-G</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:apply-templates mode="M38" select="@*|*" />
  </xsl:template>

	<!--RULE -->
<xsl:template match="cac:TaxCategory[upper-case(cbc:TaxExemptionReasonCode)='VATEX-EU-O']" mode="M38" priority="1006">
    <svrl:fired-rule context="cac:TaxCategory[upper-case(cbc:TaxExemptionReasonCode)='VATEX-EU-O']" />

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="normalize-space(cbc:ID)='O'" />
      <xsl:otherwise>
        <svrl:failed-assert test="normalize-space(cbc:ID)='O'">
          <xsl:attribute name="id">PEPPOL-EN16931-P0105</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>Tax Category O MUST be used when exemption reason code is VATEX-EU-O</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:apply-templates mode="M38" select="@*|*" />
  </xsl:template>

	<!--RULE -->
<xsl:template match="cac:TaxCategory[upper-case(cbc:TaxExemptionReasonCode)='VATEX-EU-IC']" mode="M38" priority="1005">
    <svrl:fired-rule context="cac:TaxCategory[upper-case(cbc:TaxExemptionReasonCode)='VATEX-EU-IC']" />

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="normalize-space(cbc:ID)='K'" />
      <xsl:otherwise>
        <svrl:failed-assert test="normalize-space(cbc:ID)='K'">
          <xsl:attribute name="id">PEPPOL-EN16931-P0106</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>Tax Category K MUST be used when exemption reason code is VATEX-EU-IC</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:apply-templates mode="M38" select="@*|*" />
  </xsl:template>

	<!--RULE -->
<xsl:template match="cac:TaxCategory[upper-case(cbc:TaxExemptionReasonCode)='VATEX-EU-AE']" mode="M38" priority="1004">
    <svrl:fired-rule context="cac:TaxCategory[upper-case(cbc:TaxExemptionReasonCode)='VATEX-EU-AE']" />

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="normalize-space(cbc:ID)='AE'" />
      <xsl:otherwise>
        <svrl:failed-assert test="normalize-space(cbc:ID)='AE'">
          <xsl:attribute name="id">PEPPOL-EN16931-P0107</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>Tax Category AE MUST be used when exemption reason code is VATEX-EU-AE</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:apply-templates mode="M38" select="@*|*" />
  </xsl:template>

	<!--RULE -->
<xsl:template match="cac:TaxCategory[upper-case(cbc:TaxExemptionReasonCode)='VATEX-EU-D']" mode="M38" priority="1003">
    <svrl:fired-rule context="cac:TaxCategory[upper-case(cbc:TaxExemptionReasonCode)='VATEX-EU-D']" />

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="normalize-space(cbc:ID)='E'" />
      <xsl:otherwise>
        <svrl:failed-assert test="normalize-space(cbc:ID)='E'">
          <xsl:attribute name="id">PEPPOL-EN16931-P0108</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>Tax Category E MUST be used when exemption reason code is VATEX-EU-D</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:apply-templates mode="M38" select="@*|*" />
  </xsl:template>

	<!--RULE -->
<xsl:template match="cac:TaxCategory[upper-case(cbc:TaxExemptionReasonCode)='VATEX-EU-F']" mode="M38" priority="1002">
    <svrl:fired-rule context="cac:TaxCategory[upper-case(cbc:TaxExemptionReasonCode)='VATEX-EU-F']" />

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="normalize-space(cbc:ID)='E'" />
      <xsl:otherwise>
        <svrl:failed-assert test="normalize-space(cbc:ID)='E'">
          <xsl:attribute name="id">PEPPOL-EN16931-P0109</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>Tax Category E MUST be used when exemption reason code is VATEX-EU-F</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:apply-templates mode="M38" select="@*|*" />
  </xsl:template>

	<!--RULE -->
<xsl:template match="cac:TaxCategory[upper-case(cbc:TaxExemptionReasonCode)='VATEX-EU-I']" mode="M38" priority="1001">
    <svrl:fired-rule context="cac:TaxCategory[upper-case(cbc:TaxExemptionReasonCode)='VATEX-EU-I']" />

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="normalize-space(cbc:ID)='E'" />
      <xsl:otherwise>
        <svrl:failed-assert test="normalize-space(cbc:ID)='E'">
          <xsl:attribute name="id">PEPPOL-EN16931-P0110</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>Tax Category E MUST be used when exemption reason code is VATEX-EU-I</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:apply-templates mode="M38" select="@*|*" />
  </xsl:template>

	<!--RULE -->
<xsl:template match="cac:TaxCategory[upper-case(cbc:TaxExemptionReasonCode)='VATEX-EU-J']" mode="M38" priority="1000">
    <svrl:fired-rule context="cac:TaxCategory[upper-case(cbc:TaxExemptionReasonCode)='VATEX-EU-J']" />

		<!--ASSERT -->
<xsl:choose>
      <xsl:when test="normalize-space(cbc:ID)='E'" />
      <xsl:otherwise>
        <svrl:failed-assert test="normalize-space(cbc:ID)='E'">
          <xsl:attribute name="id">PEPPOL-EN16931-P0111</xsl:attribute>
          <xsl:attribute name="flag">fatal</xsl:attribute>
          <xsl:attribute name="location">
            <xsl:apply-templates mode="schematron-select-full-path" select="." />
          </xsl:attribute>
          <svrl:text>Tax Category E MUST be used when exemption reason code is VATEX-EU-J</svrl:text>
        </svrl:failed-assert>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:apply-templates mode="M38" select="@*|*" />
  </xsl:template>
  <xsl:template match="text()" mode="M38" priority="-1" />
  <xsl:template match="@*|node()" mode="M38" priority="-2">
    <xsl:apply-templates mode="M38" select="@*|*" />
  </xsl:template>
</xsl:stylesheet>
