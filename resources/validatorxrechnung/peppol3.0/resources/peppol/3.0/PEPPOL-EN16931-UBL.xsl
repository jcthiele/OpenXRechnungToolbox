<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<xsl:stylesheet xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                xmlns:saxon="http://saxon.sf.net/"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:schold="http://www.ascc.net/xml/schematron"
                xmlns:iso="http://purl.oclc.org/dsdl/schematron"
                xmlns:xhtml="http://www.w3.org/1999/xhtml"
                xmlns:cbc="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2"
                xmlns:cac="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2"
                xmlns:ubl-creditnote="urn:oasis:names:specification:ubl:schema:xsd:CreditNote-2"
                xmlns:ubl-invoice="urn:oasis:names:specification:ubl:schema:xsd:Invoice-2"
                xmlns:u="utils"
                version="2.0"><!--Implementers: please note that overriding process-prolog or process-root is 
    the preferred method for meta-stylesheets to use where possible. -->
   <xsl:param name="archiveDirParameter"/>
   <xsl:param name="archiveNameParameter"/>
   <xsl:param name="fileNameParameter"/>
   <xsl:param name="fileDirParameter"/>
   <xsl:variable name="document-uri">
      <xsl:value-of select="document-uri(/)"/>
   </xsl:variable>

   <!--PHASES-->


   <!--PROLOG-->
   <xsl:output xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
               method="xml"
               omit-xml-declaration="no"
               standalone="yes"
               indent="yes"/>

   <!--XSD TYPES FOR XSLT2-->


   <!--KEYS AND FUNCTIONS-->
   <function xmlns="http://www.w3.org/1999/XSL/Transform"
             name="u:gln"
             as="xs:boolean">
		    <param name="val"/>
		    <variable name="length" select="string-length($val) - 1"/>
		    <variable name="digits"
                select="reverse(for $i in string-to-codepoints(substring($val, 0, $length + 1)) return $i - 48)"/>
		    <variable name="weightedSum"
                select="sum(for $i in (0 to $length - 1) return $digits[$i + 1] * (1 + ((($i + 1) mod 2) * 2)))"/>
		    <value-of select="(10 - ($weightedSum mod 10)) mod 10 = number(substring($val, $length + 1, 1))"/>
	  </function>
   <function xmlns="http://www.w3.org/1999/XSL/Transform"
             name="u:slack"
             as="xs:boolean">
		    <param name="exp" as="xs:decimal"/>
		    <param name="val" as="xs:decimal"/>
		    <param name="slack" as="xs:decimal"/>
		    <value-of select="xs:decimal($exp + $slack) &gt;= $val and xs:decimal($exp - $slack) &lt;= $val"/>
	  </function>
   <function xmlns="http://www.w3.org/1999/XSL/Transform"
             name="u:mod11"
             as="xs:boolean">
		    <param name="val"/>
		    <variable name="length" select="string-length($val) - 1"/>
		    <variable name="digits"
                select="reverse(for $i in string-to-codepoints(substring($val, 0, $length + 1)) return $i - 48)"/>
		    <variable name="weightedSum"
                select="sum(for $i in (0 to $length - 1) return $digits[$i + 1] * (($i mod 6) + 2))"/>
		    <value-of select="number($val) &gt; 0 and (11 - ($weightedSum mod 11)) mod 11 = number(substring($val, $length + 1, 1))"/>
	  </function>

   <!--DEFAULT RULES-->


   <!--MODE: SCHEMATRON-SELECT-FULL-PATH-->
   <!--This mode can be used to generate an ugly though full XPath for locators-->
   <xsl:template match="*" mode="schematron-select-full-path">
      <xsl:apply-templates select="." mode="schematron-get-full-path"/>
   </xsl:template>

   <!--MODE: SCHEMATRON-FULL-PATH-->
   <!--This mode can be used to generate an ugly though full XPath for locators-->
   <xsl:template match="*" mode="schematron-get-full-path">
      <xsl:apply-templates select="parent::*" mode="schematron-get-full-path"/>
      <xsl:text>/</xsl:text>
      <xsl:choose>
         <xsl:when test="namespace-uri()=''">
            <xsl:value-of select="name()"/>
         </xsl:when>
         <xsl:otherwise>
            <xsl:text>*:</xsl:text>
            <xsl:value-of select="local-name()"/>
            <xsl:text>[namespace-uri()='</xsl:text>
            <xsl:value-of select="namespace-uri()"/>
            <xsl:text>']</xsl:text>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:variable name="preceding"
                    select="count(preceding-sibling::*[local-name()=local-name(current())                                   and namespace-uri() = namespace-uri(current())])"/>
      <xsl:text>[</xsl:text>
      <xsl:value-of select="1+ $preceding"/>
      <xsl:text>]</xsl:text>
   </xsl:template>
   <xsl:template match="@*" mode="schematron-get-full-path">
      <xsl:apply-templates select="parent::*" mode="schematron-get-full-path"/>
      <xsl:text>/</xsl:text>
      <xsl:choose>
         <xsl:when test="namespace-uri()=''">@<xsl:value-of select="name()"/>
         </xsl:when>
         <xsl:otherwise>
            <xsl:text>@*[local-name()='</xsl:text>
            <xsl:value-of select="local-name()"/>
            <xsl:text>' and namespace-uri()='</xsl:text>
            <xsl:value-of select="namespace-uri()"/>
            <xsl:text>']</xsl:text>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>

   <!--MODE: SCHEMATRON-FULL-PATH-2-->
   <!--This mode can be used to generate prefixed XPath for humans-->
   <xsl:template match="node() | @*" mode="schematron-get-full-path-2">
      <xsl:for-each select="ancestor-or-self::*">
         <xsl:text>/</xsl:text>
         <xsl:value-of select="name(.)"/>
         <xsl:if test="preceding-sibling::*[name(.)=name(current())]">
            <xsl:text>[</xsl:text>
            <xsl:value-of select="count(preceding-sibling::*[name(.)=name(current())])+1"/>
            <xsl:text>]</xsl:text>
         </xsl:if>
      </xsl:for-each>
      <xsl:if test="not(self::*)">
         <xsl:text/>/@<xsl:value-of select="name(.)"/>
      </xsl:if>
   </xsl:template>
   <!--MODE: SCHEMATRON-FULL-PATH-3-->
   <!--This mode can be used to generate prefixed XPath for humans 
	(Top-level element has index)-->
   <xsl:template match="node() | @*" mode="schematron-get-full-path-3">
      <xsl:for-each select="ancestor-or-self::*">
         <xsl:text>/</xsl:text>
         <xsl:value-of select="name(.)"/>
         <xsl:if test="parent::*">
            <xsl:text>[</xsl:text>
            <xsl:value-of select="count(preceding-sibling::*[name(.)=name(current())])+1"/>
            <xsl:text>]</xsl:text>
         </xsl:if>
      </xsl:for-each>
      <xsl:if test="not(self::*)">
         <xsl:text/>/@<xsl:value-of select="name(.)"/>
      </xsl:if>
   </xsl:template>

   <!--MODE: GENERATE-ID-FROM-PATH -->
   <xsl:template match="/" mode="generate-id-from-path"/>
   <xsl:template match="text()" mode="generate-id-from-path">
      <xsl:apply-templates select="parent::*" mode="generate-id-from-path"/>
      <xsl:value-of select="concat('.text-', 1+count(preceding-sibling::text()), '-')"/>
   </xsl:template>
   <xsl:template match="comment()" mode="generate-id-from-path">
      <xsl:apply-templates select="parent::*" mode="generate-id-from-path"/>
      <xsl:value-of select="concat('.comment-', 1+count(preceding-sibling::comment()), '-')"/>
   </xsl:template>
   <xsl:template match="processing-instruction()" mode="generate-id-from-path">
      <xsl:apply-templates select="parent::*" mode="generate-id-from-path"/>
      <xsl:value-of select="concat('.processing-instruction-', 1+count(preceding-sibling::processing-instruction()), '-')"/>
   </xsl:template>
   <xsl:template match="@*" mode="generate-id-from-path">
      <xsl:apply-templates select="parent::*" mode="generate-id-from-path"/>
      <xsl:value-of select="concat('.@', name())"/>
   </xsl:template>
   <xsl:template match="*" mode="generate-id-from-path" priority="-0.5">
      <xsl:apply-templates select="parent::*" mode="generate-id-from-path"/>
      <xsl:text>.</xsl:text>
      <xsl:value-of select="concat('.',name(),'-',1+count(preceding-sibling::*[name()=name(current())]),'-')"/>
   </xsl:template>

   <!--MODE: GENERATE-ID-2 -->
   <xsl:template match="/" mode="generate-id-2">U</xsl:template>
   <xsl:template match="*" mode="generate-id-2" priority="2">
      <xsl:text>U</xsl:text>
      <xsl:number level="multiple" count="*"/>
   </xsl:template>
   <xsl:template match="node()" mode="generate-id-2">
      <xsl:text>U.</xsl:text>
      <xsl:number level="multiple" count="*"/>
      <xsl:text>n</xsl:text>
      <xsl:number count="node()"/>
   </xsl:template>
   <xsl:template match="@*" mode="generate-id-2">
      <xsl:text>U.</xsl:text>
      <xsl:number level="multiple" count="*"/>
      <xsl:text>_</xsl:text>
      <xsl:value-of select="string-length(local-name(.))"/>
      <xsl:text>_</xsl:text>
      <xsl:value-of select="translate(name(),':','.')"/>
   </xsl:template>
   <!--Strip characters-->
   <xsl:template match="text()" priority="-1"/>

   <!--SCHEMA SETUP-->
   <xsl:template match="/">
      <svrl:schematron-output xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                              title="Rules for PEPPOL BIS 3.0 Billing"
                              schemaVersion="iso">
         <xsl:comment>
            <xsl:value-of select="$archiveDirParameter"/>   
		 <xsl:value-of select="$archiveNameParameter"/>  
		 <xsl:value-of select="$fileNameParameter"/>  
		 <xsl:value-of select="$fileDirParameter"/>
         </xsl:comment>
         <svrl:ns-prefix-in-attribute-values uri="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2"
                                             prefix="cbc"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2"
                                             prefix="cac"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:oasis:names:specification:ubl:schema:xsd:CreditNote-2"
                                             prefix="ubl-creditnote"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:oasis:names:specification:ubl:schema:xsd:Invoice-2"
                                             prefix="ubl-invoice"/>
         <svrl:ns-prefix-in-attribute-values uri="http://www.w3.org/2001/XMLSchema" prefix="xs"/>
         <svrl:ns-prefix-in-attribute-values uri="utils" prefix="u"/>
         <svrl:active-pattern>
            <xsl:attribute name="document">
               <xsl:value-of select="document-uri(/)"/>
            </xsl:attribute>
            <xsl:apply-templates/>
         </svrl:active-pattern>
         <xsl:apply-templates select="/" mode="M13"/>
         <svrl:active-pattern>
            <xsl:attribute name="document">
               <xsl:value-of select="document-uri(/)"/>
            </xsl:attribute>
            <xsl:apply-templates/>
         </svrl:active-pattern>
         <xsl:apply-templates select="/" mode="M14"/>
         <svrl:active-pattern>
            <xsl:attribute name="document">
               <xsl:value-of select="document-uri(/)"/>
            </xsl:attribute>
            <xsl:apply-templates/>
         </svrl:active-pattern>
         <xsl:apply-templates select="/" mode="M15"/>
         <svrl:active-pattern>
            <xsl:attribute name="document">
               <xsl:value-of select="document-uri(/)"/>
            </xsl:attribute>
            <xsl:apply-templates/>
         </svrl:active-pattern>
         <xsl:apply-templates select="/" mode="M16"/>
         <svrl:active-pattern>
            <xsl:attribute name="document">
               <xsl:value-of select="document-uri(/)"/>
            </xsl:attribute>
            <xsl:apply-templates/>
         </svrl:active-pattern>
         <xsl:apply-templates select="/" mode="M17"/>
         <svrl:active-pattern>
            <xsl:attribute name="document">
               <xsl:value-of select="document-uri(/)"/>
            </xsl:attribute>
            <xsl:apply-templates/>
         </svrl:active-pattern>
         <xsl:apply-templates select="/" mode="M18"/>
         <svrl:active-pattern>
            <xsl:attribute name="document">
               <xsl:value-of select="document-uri(/)"/>
            </xsl:attribute>
            <xsl:apply-templates/>
         </svrl:active-pattern>
         <xsl:apply-templates select="/" mode="M19"/>
      </svrl:schematron-output>
   </xsl:template>

   <!--SCHEMATRON PATTERNS-->
   <svrl:text xmlns:svrl="http://purl.oclc.org/dsdl/svrl">Rules for PEPPOL BIS 3.0 Billing</svrl:text>
   <xsl:param name="profile"
              select="       if (/*/cbc:ProfileID and matches(normalize-space(/*/cbc:ProfileID), 'urn:fdc:peppol.eu:2017:poacc:billing:([0-9]{2}):1.0')) then         tokenize(normalize-space(/*/cbc:ProfileID), ':')[7]       else         'Unknown'"/>
   <xsl:param name="supplierCountry"
              select="       if (/*/cac:AccountingSupplierParty/cac:Party/cac:PartyTaxScheme[cac:TaxScheme/cbc:ID = 'VAT']/substring(cbc:CompanyID, 1, 2)) then         upper-case(normalize-space(/*/cac:AccountingSupplierParty/cac:Party/cac:PartyTaxScheme[cac:TaxScheme/cbc:ID = 'VAT']/substring(cbc:CompanyID, 1, 2)))       else         if (/*/cac:TaxRepresentativeParty/cac:PartyTaxScheme[cac:TaxScheme/cbc:ID = 'VAT']/substring(cbc:CompanyID, 1, 2)) then           upper-case(normalize-space(/*/cac:TaxRepresentativeParty/cac:PartyTaxScheme[cac:TaxScheme/cbc:ID = 'VAT']/substring(cbc:CompanyID, 1, 2)))         else           if (/*/cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode) then             upper-case(normalize-space(/*/cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode))           else             'XX'"/>
   <xsl:param name="documentCurrencyCode" select="/*/cbc:DocumentCurrencyCode"/>

   <!--PATTERN -->


	  <!--RULE -->
   <xsl:template match="//*[not(*) and not(normalize-space())]"
                 priority="1000"
                 mode="M13">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="//*[not(*) and not(normalize-space())]"/>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="false()"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="false()">
               <xsl:attribute name="id">PEPPOL-EN16931-R008</xsl:attribute>
               <xsl:attribute name="flag">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>Document MUST not contain empty elements.</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M13"/>
   </xsl:template>
   <xsl:template match="text()" priority="-1" mode="M13"/>
   <xsl:template match="@*|node()" priority="-2" mode="M13">
      <xsl:apply-templates select="*" mode="M13"/>
   </xsl:template>

   <!--PATTERN -->


	  <!--RULE -->
   <xsl:template match="ubl-creditnote:CreditNote | ubl-invoice:Invoice"
                 priority="1016"
                 mode="M14">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="ubl-creditnote:CreditNote | ubl-invoice:Invoice"/>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="cbc:ProfileID"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="cbc:ProfileID">
               <xsl:attribute name="id">PEPPOL-EN16931-R001</xsl:attribute>
               <xsl:attribute name="flag">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>Business process MUST be provided.</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="$profile != 'Unknown'"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="$profile != 'Unknown'">
               <xsl:attribute name="id">PEPPOL-EN16931-R007</xsl:attribute>
               <xsl:attribute name="flag">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>Business process MUST be in the format 'urn:fdc:peppol.eu:2017:poacc:billing:NN:1.0' where NN indicates the process number.</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="count(cbc:Note) &lt;= 1"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="count(cbc:Note) &lt;= 1">
               <xsl:attribute name="id">PEPPOL-EN16931-R002</xsl:attribute>
               <xsl:attribute name="flag">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>No more than one note is allowed on document level.</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="cbc:BuyerReference or cac:OrderReference/cbc:ID"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="cbc:BuyerReference or cac:OrderReference/cbc:ID">
               <xsl:attribute name="id">PEPPOL-EN16931-R003</xsl:attribute>
               <xsl:attribute name="flag">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>A buyer reference or purchase order reference MUST be provided.</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="starts-with(normalize-space(cbc:CustomizationID/text()), 'urn:cen.eu:en16931:2017#compliant#urn:fdc:peppol.eu:2017:poacc:billing:3.0')"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="starts-with(normalize-space(cbc:CustomizationID/text()), 'urn:cen.eu:en16931:2017#compliant#urn:fdc:peppol.eu:2017:poacc:billing:3.0')">
               <xsl:attribute name="id">PEPPOL-EN16931-R004</xsl:attribute>
               <xsl:attribute name="flag">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>Specification identifier MUST have the value 'urn:cen.eu:en16931:2017#compliant#urn:fdc:peppol.eu:2017:poacc:billing:3.0'.</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="count(cac:TaxTotal[cac:TaxSubtotal]) = 1"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="count(cac:TaxTotal[cac:TaxSubtotal]) = 1">
               <xsl:attribute name="id">PEPPOL-EN16931-R053</xsl:attribute>
               <xsl:attribute name="flag">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>Only one tax total with tax subtotals MUST be provided.</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="count(cac:TaxTotal[not(cac:TaxSubtotal)]) = (if (cbc:TaxCurrencyCode) then 1 else 0)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="count(cac:TaxTotal[not(cac:TaxSubtotal)]) = (if (cbc:TaxCurrencyCode) then 1 else 0)">
               <xsl:attribute name="id">PEPPOL-EN16931-R054</xsl:attribute>
               <xsl:attribute name="flag">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>Only one tax total without tax subtotals MUST be provided when tax currency code is provided.</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="not(cbc:TaxCurrencyCode) or (cac:TaxTotal/cbc:TaxAmount[@currencyID=normalize-space(../../cbc:TaxCurrencyCode)] &lt;= 0 and cac:TaxTotal/cbc:TaxAmount[@currencyID=normalize-space(../../cbc:DocumentCurrencyCode)] &lt;= 0) or (cac:TaxTotal/cbc:TaxAmount[@currencyID=normalize-space(../../cbc:TaxCurrencyCode)] &gt;= 0 and cac:TaxTotal/cbc:TaxAmount[@currencyID=normalize-space(../../cbc:DocumentCurrencyCode)] &gt;= 0) "/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(cbc:TaxCurrencyCode) or (cac:TaxTotal/cbc:TaxAmount[@currencyID=normalize-space(../../cbc:TaxCurrencyCode)] &lt;= 0 and cac:TaxTotal/cbc:TaxAmount[@currencyID=normalize-space(../../cbc:DocumentCurrencyCode)] &lt;= 0) or (cac:TaxTotal/cbc:TaxAmount[@currencyID=normalize-space(../../cbc:TaxCurrencyCode)] &gt;= 0 and cac:TaxTotal/cbc:TaxAmount[@currencyID=normalize-space(../../cbc:DocumentCurrencyCode)] &gt;= 0)">
               <xsl:attribute name="id">PEPPOL-EN16931-R055</xsl:attribute>
               <xsl:attribute name="flag">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>Invoice total VAT amount and Invoice total VAT amount in accounting currency MUST have the same operational sign</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="(count(cac:AdditionalDocumentReference[cbc:DocumentTypeCode='130']) &lt;= 1)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="(count(cac:AdditionalDocumentReference[cbc:DocumentTypeCode='130']) &lt;= 1)">
               <xsl:attribute name="id">PEPPOL-EN16931-R006</xsl:attribute>
               <xsl:attribute name="flag">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>Only one invoiced object is allowed on document level</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="(count(cac:AdditionalDocumentReference[cbc:DocumentTypeCode='50']) &lt;= 1)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="(count(cac:AdditionalDocumentReference[cbc:DocumentTypeCode='50']) &lt;= 1)">
               <xsl:attribute name="id">PEPPOL-EN16931-R080</xsl:attribute>
               <xsl:attribute name="flag">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>Only one project reference is allowed on document level</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M14"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="cbc:TaxCurrencyCode" priority="1015" mode="M14">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" context="cbc:TaxCurrencyCode"/>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="not(normalize-space(text()) = normalize-space(../cbc:DocumentCurrencyCode/text()))"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(normalize-space(text()) = normalize-space(../cbc:DocumentCurrencyCode/text()))">
               <xsl:attribute name="id">PEPPOL-EN16931-R005</xsl:attribute>
               <xsl:attribute name="flag">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>VAT accounting currency code MUST be different from invoice currency code when provided.</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M14"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="cac:AccountingCustomerParty/cac:Party"
                 priority="1014"
                 mode="M14">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="cac:AccountingCustomerParty/cac:Party"/>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="cbc:EndpointID"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="cbc:EndpointID">
               <xsl:attribute name="id">PEPPOL-EN16931-R010</xsl:attribute>
               <xsl:attribute name="flag">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>Buyer electronic address MUST be provided</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M14"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="cac:AccountingSupplierParty/cac:Party"
                 priority="1013"
                 mode="M14">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="cac:AccountingSupplierParty/cac:Party"/>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="cbc:EndpointID"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="cbc:EndpointID">
               <xsl:attribute name="id">PEPPOL-EN16931-R020</xsl:attribute>
               <xsl:attribute name="flag">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>Seller electronic address MUST be provided</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M14"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="ubl-invoice:Invoice/cac:AllowanceCharge[cbc:MultiplierFactorNumeric and not(cbc:BaseAmount)] | ubl-invoice:Invoice/cac:InvoiceLine/cac:AllowanceCharge[cbc:MultiplierFactorNumeric and not(cbc:BaseAmount)] | ubl-creditnote:CreditNote/cac:AllowanceCharge[cbc:MultiplierFactorNumeric and not(cbc:BaseAmount)] | ubl-creditnote:CreditNote/cac:CreditNoteLine/cac:AllowanceCharge[cbc:MultiplierFactorNumeric and not(cbc:BaseAmount)]"
                 priority="1012"
                 mode="M14">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="ubl-invoice:Invoice/cac:AllowanceCharge[cbc:MultiplierFactorNumeric and not(cbc:BaseAmount)] | ubl-invoice:Invoice/cac:InvoiceLine/cac:AllowanceCharge[cbc:MultiplierFactorNumeric and not(cbc:BaseAmount)] | ubl-creditnote:CreditNote/cac:AllowanceCharge[cbc:MultiplierFactorNumeric and not(cbc:BaseAmount)] | ubl-creditnote:CreditNote/cac:CreditNoteLine/cac:AllowanceCharge[cbc:MultiplierFactorNumeric and not(cbc:BaseAmount)]"/>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="false()"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="false()">
               <xsl:attribute name="id">PEPPOL-EN16931-R041</xsl:attribute>
               <xsl:attribute name="flag">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>Allowance/charge base amount MUST be provided when allowance/charge percentage is provided.</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M14"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="ubl-invoice:Invoice/cac:AllowanceCharge[not(cbc:MultiplierFactorNumeric) and cbc:BaseAmount] | ubl-invoice:Invoice/cac:InvoiceLine/cac:AllowanceCharge[not(cbc:MultiplierFactorNumeric) and cbc:BaseAmount] | ubl-creditnote:CreditNote/cac:AllowanceCharge[not(cbc:MultiplierFactorNumeric) and cbc:BaseAmount] | ubl-creditnote:CreditNote/cac:CreditNoteLine/cac:AllowanceCharge[not(cbc:MultiplierFactorNumeric) and cbc:BaseAmount]"
                 priority="1011"
                 mode="M14">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="ubl-invoice:Invoice/cac:AllowanceCharge[not(cbc:MultiplierFactorNumeric) and cbc:BaseAmount] | ubl-invoice:Invoice/cac:InvoiceLine/cac:AllowanceCharge[not(cbc:MultiplierFactorNumeric) and cbc:BaseAmount] | ubl-creditnote:CreditNote/cac:AllowanceCharge[not(cbc:MultiplierFactorNumeric) and cbc:BaseAmount] | ubl-creditnote:CreditNote/cac:CreditNoteLine/cac:AllowanceCharge[not(cbc:MultiplierFactorNumeric) and cbc:BaseAmount]"/>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="false()"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="false()">
               <xsl:attribute name="id">PEPPOL-EN16931-R042</xsl:attribute>
               <xsl:attribute name="flag">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>Allowance/charge percentage MUST be provided when allowance/charge base amount is provided.</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M14"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="ubl-invoice:Invoice/cac:AllowanceCharge | ubl-invoice:Invoice/cac:InvoiceLine/cac:AllowanceCharge | ubl-creditnote:CreditNote/cac:AllowanceCharge | ubl-creditnote:CreditNote/cac:CreditNoteLine/cac:AllowanceCharge"
                 priority="1010"
                 mode="M14">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="ubl-invoice:Invoice/cac:AllowanceCharge | ubl-invoice:Invoice/cac:InvoiceLine/cac:AllowanceCharge | ubl-creditnote:CreditNote/cac:AllowanceCharge | ubl-creditnote:CreditNote/cac:CreditNoteLine/cac:AllowanceCharge"/>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="           not(cbc:MultiplierFactorNumeric and cbc:BaseAmount) or u:slack(if (cbc:Amount) then             cbc:Amount           else             0, (xs:decimal(cbc:BaseAmount) * xs:decimal(cbc:MultiplierFactorNumeric)) div 100, 0.02)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(cbc:MultiplierFactorNumeric and cbc:BaseAmount) or u:slack(if (cbc:Amount) then cbc:Amount else 0, (xs:decimal(cbc:BaseAmount) * xs:decimal(cbc:MultiplierFactorNumeric)) div 100, 0.02)">
               <xsl:attribute name="id">PEPPOL-EN16931-R040</xsl:attribute>
               <xsl:attribute name="flag">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>Allowance/charge amount must equal base amount * percentage/100 if base amount and percentage exists</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="normalize-space(cbc:ChargeIndicator/text()) = 'true' or normalize-space(cbc:ChargeIndicator/text()) = 'false'"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="normalize-space(cbc:ChargeIndicator/text()) = 'true' or normalize-space(cbc:ChargeIndicator/text()) = 'false'">
               <xsl:attribute name="id">PEPPOL-EN16931-R043</xsl:attribute>
               <xsl:attribute name="flag">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>Allowance/charge ChargeIndicator value MUST equal 'true' or 'false'</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M14"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="         cac:PaymentMeans[some $code in tokenize('49 59', '\s')           satisfies normalize-space(cbc:PaymentMeansCode) = $code]"
                 priority="1009"
                 mode="M14">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="         cac:PaymentMeans[some $code in tokenize('49 59', '\s')           satisfies normalize-space(cbc:PaymentMeansCode) = $code]"/>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="cac:PaymentMandate/cbc:ID"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="cac:PaymentMandate/cbc:ID">
               <xsl:attribute name="id">PEPPOL-EN16931-R061</xsl:attribute>
               <xsl:attribute name="flag">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>Mandate reference MUST be provided for direct debit.</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M14"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="cbc:Amount | cbc:BaseAmount | cbc:PriceAmount | cac:TaxTotal[cac:TaxSubtotal]/cbc:TaxAmount | cbc:TaxableAmount | cbc:LineExtensionAmount | cbc:TaxExclusiveAmount | cbc:TaxInclusiveAmount | cbc:AllowanceTotalAmount | cbc:ChargeTotalAmount | cbc:PrepaidAmount | cbc:PayableRoundingAmount | cbc:PayableAmount"
                 priority="1008"
                 mode="M14">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="cbc:Amount | cbc:BaseAmount | cbc:PriceAmount | cac:TaxTotal[cac:TaxSubtotal]/cbc:TaxAmount | cbc:TaxableAmount | cbc:LineExtensionAmount | cbc:TaxExclusiveAmount | cbc:TaxInclusiveAmount | cbc:AllowanceTotalAmount | cbc:ChargeTotalAmount | cbc:PrepaidAmount | cbc:PayableRoundingAmount | cbc:PayableAmount"/>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="@currencyID = $documentCurrencyCode"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="@currencyID = $documentCurrencyCode">
               <xsl:attribute name="id">PEPPOL-EN16931-R051</xsl:attribute>
               <xsl:attribute name="flag">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>All currencyID attributes must have the same value as the invoice currency code (BT-5), except for the invoice total VAT amount in accounting currency (BT-111).</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M14"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="ubl-invoice:Invoice[cac:InvoicePeriod/cbc:StartDate]/cac:InvoiceLine/cac:InvoicePeriod/cbc:StartDate | ubl-creditnote:CreditNote[cac:InvoicePeriod/cbc:StartDate]/cac:CreditNoteLine/cac:InvoicePeriod/cbc:StartDate"
                 priority="1007"
                 mode="M14">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="ubl-invoice:Invoice[cac:InvoicePeriod/cbc:StartDate]/cac:InvoiceLine/cac:InvoicePeriod/cbc:StartDate | ubl-creditnote:CreditNote[cac:InvoicePeriod/cbc:StartDate]/cac:CreditNoteLine/cac:InvoicePeriod/cbc:StartDate"/>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="xs:date(text()) &gt;= xs:date(../../../cac:InvoicePeriod/cbc:StartDate)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="xs:date(text()) &gt;= xs:date(../../../cac:InvoicePeriod/cbc:StartDate)">
               <xsl:attribute name="id">PEPPOL-EN16931-R110</xsl:attribute>
               <xsl:attribute name="flag">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>Start date of line period MUST be within invoice period.</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M14"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="ubl-invoice:Invoice[cac:InvoicePeriod/cbc:EndDate]/cac:InvoiceLine/cac:InvoicePeriod/cbc:EndDate | ubl-creditnote:CreditNote[cac:InvoicePeriod/cbc:EndDate]/cac:CreditNoteLine/cac:InvoicePeriod/cbc:EndDate"
                 priority="1006"
                 mode="M14">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="ubl-invoice:Invoice[cac:InvoicePeriod/cbc:EndDate]/cac:InvoiceLine/cac:InvoicePeriod/cbc:EndDate | ubl-creditnote:CreditNote[cac:InvoicePeriod/cbc:EndDate]/cac:CreditNoteLine/cac:InvoicePeriod/cbc:EndDate"/>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="xs:date(text()) &lt;= xs:date(../../../cac:InvoicePeriod/cbc:EndDate)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="xs:date(text()) &lt;= xs:date(../../../cac:InvoicePeriod/cbc:EndDate)">
               <xsl:attribute name="id">PEPPOL-EN16931-R111</xsl:attribute>
               <xsl:attribute name="flag">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>End date of line period MUST be within invoice period.</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M14"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="cac:InvoiceLine | cac:CreditNoteLine"
                 priority="1005"
                 mode="M14">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="cac:InvoiceLine | cac:CreditNoteLine"/>
      <xsl:variable name="lineExtensionAmount"
                    select="           if (cbc:LineExtensionAmount) then             xs:decimal(cbc:LineExtensionAmount)           else             0"/>
      <xsl:variable name="quantity"
                    select="           if (/ubl-invoice:Invoice) then             (if (cbc:InvoicedQuantity) then               xs:decimal(cbc:InvoicedQuantity)             else               1)           else             (if (cbc:CreditedQuantity) then               xs:decimal(cbc:CreditedQuantity)             else               1)"/>
      <xsl:variable name="priceAmount"
                    select="           if (cac:Price/cbc:PriceAmount) then             xs:decimal(cac:Price/cbc:PriceAmount)           else             0"/>
      <xsl:variable name="baseQuantity"
                    select="           if (cac:Price/cbc:BaseQuantity and xs:decimal(cac:Price/cbc:BaseQuantity) != 0) then             xs:decimal(cac:Price/cbc:BaseQuantity)           else             1"/>
      <xsl:variable name="allowancesTotal"
                    select="           if (cac:AllowanceCharge[normalize-space(cbc:ChargeIndicator) = 'false']) then             round(sum(cac:AllowanceCharge[normalize-space(cbc:ChargeIndicator) = 'false']/cbc:Amount/xs:decimal(.)) * 10 * 10) div 100           else             0"/>
      <xsl:variable name="chargesTotal"
                    select="           if (cac:AllowanceCharge[normalize-space(cbc:ChargeIndicator) = 'true']) then             round(sum(cac:AllowanceCharge[normalize-space(cbc:ChargeIndicator) = 'true']/cbc:Amount/xs:decimal(.)) * 10 * 10) div 100           else             0"/>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="u:slack($lineExtensionAmount, ($quantity * ($priceAmount div $baseQuantity)) + $chargesTotal - $allowancesTotal, 0.02)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="u:slack($lineExtensionAmount, ($quantity * ($priceAmount div $baseQuantity)) + $chargesTotal - $allowancesTotal, 0.02)">
               <xsl:attribute name="id">PEPPOL-EN16931-R120</xsl:attribute>
               <xsl:attribute name="flag">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>Invoice line net amount MUST equal (Invoiced quantity * (Item net price/item price base quantity) + Sum of invoice line charge amount - sum of invoice line allowance amount</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="not(cac:Price/cbc:BaseQuantity) or xs:decimal(cac:Price/cbc:BaseQuantity) &gt; 0"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(cac:Price/cbc:BaseQuantity) or xs:decimal(cac:Price/cbc:BaseQuantity) &gt; 0">
               <xsl:attribute name="id">PEPPOL-EN16931-R121</xsl:attribute>
               <xsl:attribute name="flag">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>Base quantity MUST be a positive number above zero.</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="(count(cac:DocumentReference) &lt;= 1)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="(count(cac:DocumentReference) &lt;= 1)">
               <xsl:attribute name="id">PEPPOL-EN16931-R100</xsl:attribute>
               <xsl:attribute name="flag">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>Only one invoiced object is allowed pr line</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="(not(cac:DocumentReference) or (cac:DocumentReference/cbc:DocumentTypeCode='130'))"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="(not(cac:DocumentReference) or (cac:DocumentReference/cbc:DocumentTypeCode='130'))">
               <xsl:attribute name="id">PEPPOL-EN16931-R101</xsl:attribute>
               <xsl:attribute name="flag">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>Element Document reference can only be used for Invoice line object</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M14"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="cac:Price/cac:AllowanceCharge" priority="1004" mode="M14">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="cac:Price/cac:AllowanceCharge"/>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="normalize-space(cbc:ChargeIndicator) = 'false'"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="normalize-space(cbc:ChargeIndicator) = 'false'">
               <xsl:attribute name="id">PEPPOL-EN16931-R044</xsl:attribute>
               <xsl:attribute name="flag">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>Charge on price level is NOT allowed. Only value 'false' allowed.</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="not(cbc:BaseAmount) or xs:decimal(../cbc:PriceAmount) = xs:decimal(cbc:BaseAmount) - xs:decimal(cbc:Amount)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(cbc:BaseAmount) or xs:decimal(../cbc:PriceAmount) = xs:decimal(cbc:BaseAmount) - xs:decimal(cbc:Amount)">
               <xsl:attribute name="id">PEPPOL-EN16931-R046</xsl:attribute>
               <xsl:attribute name="flag">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>Item net price MUST equal (Gross price - Allowance amount) when gross price is provided.</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M14"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="cac:Price/cbc:BaseQuantity[@unitCode]"
                 priority="1003"
                 mode="M14">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="cac:Price/cbc:BaseQuantity[@unitCode]"/>
      <xsl:variable name="hasQuantity"
                    select="../../cbc:InvoicedQuantity or ../../cbc:CreditedQuantity"/>
      <xsl:variable name="quantity"
                    select="           if (/ubl-invoice:Invoice) then             ../../cbc:InvoicedQuantity           else             ../../cbc:CreditedQuantity"/>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="not($hasQuantity) or @unitCode = $quantity/@unitCode"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not($hasQuantity) or @unitCode = $quantity/@unitCode">
               <xsl:attribute name="id">PEPPOL-EN16931-R130</xsl:attribute>
               <xsl:attribute name="flag">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>Unit code of price base quantity MUST be same as invoiced quantity.</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M14"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="cbc:EndpointID[@schemeID = '0088'] | cac:PartyIdentification/cbc:ID[@schemeID = '0088'] | cbc:CompanyID[@schemeID = '0088']"
                 priority="1002"
                 mode="M14">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="cbc:EndpointID[@schemeID = '0088'] | cac:PartyIdentification/cbc:ID[@schemeID = '0088'] | cbc:CompanyID[@schemeID = '0088']"/>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="matches(normalize-space(), '^[0-9]+$') and u:gln(normalize-space())"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="matches(normalize-space(), '^[0-9]+$') and u:gln(normalize-space())">
               <xsl:attribute name="id">PEPPOL-COMMON-R040</xsl:attribute>
               <xsl:attribute name="flag">warning</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>GLN must have a valid format according to GS1 rules.</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M14"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="cbc:EndpointID[@schemeID = '0192'] | cac:PartyIdentification/cbc:ID[@schemeID = '0192'] | cbc:CompanyID[@schemeID = '0192']"
                 priority="1001"
                 mode="M14">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="cbc:EndpointID[@schemeID = '0192'] | cac:PartyIdentification/cbc:ID[@schemeID = '0192'] | cbc:CompanyID[@schemeID = '0192']"/>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="matches(normalize-space(), '^[0-9]{9}$') and u:mod11(normalize-space())"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="matches(normalize-space(), '^[0-9]{9}$') and u:mod11(normalize-space())">
               <xsl:attribute name="id">PEPPOL-COMMON-R041</xsl:attribute>
               <xsl:attribute name="flag">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>Norwegian organization number MUST be stated in the correct format.</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M14"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="cbc:EndpointID[@schemeID = '0184'] | cac:PartyIdentification/cbc:ID[@schemeID = '0184'] | cbc:CompanyID[@schemeID = '0184']"
                 priority="1000"
                 mode="M14">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="cbc:EndpointID[@schemeID = '0184'] | cac:PartyIdentification/cbc:ID[@schemeID = '0184'] | cbc:CompanyID[@schemeID = '0184']"/>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="(string-length(text()) = 10) and (substring(text(), 1, 2) = 'DK') and (string-length(translate(substring(text(), 3, 8), '1234567890', '')) = 0)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="(string-length(text()) = 10) and (substring(text(), 1, 2) = 'DK') and (string-length(translate(substring(text(), 3, 8), '1234567890', '')) = 0)">
               <xsl:attribute name="id">PEPPOL-COMMON-R042</xsl:attribute>
               <xsl:attribute name="flag">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>Danish organization number (CVR) MUST be stated in the correct format.</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M14"/>
   </xsl:template>
   <xsl:template match="text()" priority="-1" mode="M14"/>
   <xsl:template match="@*|node()" priority="-2" mode="M14">
      <xsl:apply-templates select="*" mode="M14"/>
   </xsl:template>

   <!--PATTERN -->


	  <!--RULE -->
   <xsl:template match="cac:AccountingSupplierParty/cac:Party[$supplierCountry = 'NO']"
                 priority="1000"
                 mode="M15">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="cac:AccountingSupplierParty/cac:Party[$supplierCountry = 'NO']"/>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="normalize-space(cac:PartyTaxScheme[normalize-space(cac:TaxScheme/cbc:ID) = 'TAX']/cbc:CompanyID) = 'Foretaksregisteret'"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="normalize-space(cac:PartyTaxScheme[normalize-space(cac:TaxScheme/cbc:ID) = 'TAX']/cbc:CompanyID) = 'Foretaksregisteret'">
               <xsl:attribute name="id">NO-R-002</xsl:attribute>
               <xsl:attribute name="flag">warning</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
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
         <xsl:when test="cac:PartyTaxScheme[normalize-space(cac:TaxScheme/cbc:ID) = 'VAT']/substring(cbc:CompanyID, 1, 2)='NO' and matches(cac:PartyTaxScheme[normalize-space(cac:TaxScheme/cbc:ID) = 'VAT']/substring(cbc:CompanyID,3), '^[0-9]{9}MVA$')            and u:mod11(substring(cac:PartyTaxScheme[normalize-space(cac:TaxScheme/cbc:ID) = 'VAT']/cbc:CompanyID, 3, 9)) or not(cac:PartyTaxScheme[normalize-space(cac:TaxScheme/cbc:ID) = 'VAT']/substring(cbc:CompanyID, 1, 2)='NO')"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="cac:PartyTaxScheme[normalize-space(cac:TaxScheme/cbc:ID) = 'VAT']/substring(cbc:CompanyID, 1, 2)='NO' and matches(cac:PartyTaxScheme[normalize-space(cac:TaxScheme/cbc:ID) = 'VAT']/substring(cbc:CompanyID,3), '^[0-9]{9}MVA$') and u:mod11(substring(cac:PartyTaxScheme[normalize-space(cac:TaxScheme/cbc:ID) = 'VAT']/cbc:CompanyID, 3, 9)) or not(cac:PartyTaxScheme[normalize-space(cac:TaxScheme/cbc:ID) = 'VAT']/substring(cbc:CompanyID, 1, 2)='NO')">
               <xsl:attribute name="id">NO-R-001</xsl:attribute>
               <xsl:attribute name="flag">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>For Norwegian suppliers, a VAT number MUST be the country code prefix NO followed by a valid Norwegian organization number (nine numbers) followed by the letters MVA.</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M15"/>
   </xsl:template>
   <xsl:template match="text()" priority="-1" mode="M15"/>
   <xsl:template match="@*|node()" priority="-2" mode="M15">
      <xsl:apply-templates select="*" mode="M15"/>
   </xsl:template>

   <!--PATTERN -->
   <xsl:variable name="DKSupplierCountry"
                 select="concat(ubl-creditnote:CreditNote/cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode, ubl-invoice:Invoice/cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode)"/>
   <xsl:variable name="DKCustomerCountry"
                 select="concat(ubl-creditnote:CreditNote/cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode, ubl-invoice:Invoice/cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode)"/>

	  <!--RULE -->
   <xsl:template match="ubl-creditnote:CreditNote[$DKSupplierCountry = 'DK'] | ubl-invoice:Invoice[$DKSupplierCountry = 'DK']"
                 priority="1004"
                 mode="M16">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="ubl-creditnote:CreditNote[$DKSupplierCountry = 'DK'] | ubl-invoice:Invoice[$DKSupplierCountry = 'DK']"/>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="(normalize-space(cac:AccountingSupplierParty/cac:Party/cac:PartyLegalEntity/cbc:CompanyID/text()) != '')"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="(normalize-space(cac:AccountingSupplierParty/cac:Party/cac:PartyLegalEntity/cbc:CompanyID/text()) != '')">
               <xsl:attribute name="id">DK-R-002</xsl:attribute>
               <xsl:attribute name="flag">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>Danish suppliers MUST provide legal entity (CVR-number)</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="not(((boolean(cac:AccountingSupplierParty/cac:Party/cac:PartyLegalEntity/cbc:CompanyID))           and (normalize-space(cac:AccountingSupplierParty/cac:Party/cac:PartyLegalEntity/cbc:CompanyID/@schemeID) != '0184'))       )"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(((boolean(cac:AccountingSupplierParty/cac:Party/cac:PartyLegalEntity/cbc:CompanyID)) and (normalize-space(cac:AccountingSupplierParty/cac:Party/cac:PartyLegalEntity/cbc:CompanyID/@schemeID) != '0184')) )">
               <xsl:attribute name="id">DK-R-014</xsl:attribute>
               <xsl:attribute name="flag">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>For Danish Suppliers it is mandatory to specify schemeID as "0184" (DK CVR-number) when PartyLegalEntity/CompanyID is used for AccountingSupplierParty</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="not((normalize-space(cac:AccountingSupplierParty/cac:Party/cac:PartyTaxScheme[1]/cac:TaxScheme/cbc:ID/text()) = 'VAT')       and not ((string-length(cac:AccountingSupplierParty/cac:Party/cac:PartyTaxScheme[1]/cbc:CompanyID/text()) = 10)          and (substring(cac:AccountingSupplierParty/cac:Party/cac:PartyTaxScheme[1]/cbc:CompanyID/text(), 1, 2) = 'DK')          and (string-length(translate(substring(cac:AccountingSupplierParty/cac:Party/cac:PartyTaxScheme[1]/cbc:CompanyID/text(), 3, 8), '1234567890', '')) = 0))       or       (normalize-space(cac:AccountingSupplierParty/cac:Party/cac:PartyTaxScheme[2]/cac:TaxScheme/cbc:ID/text()) = 'VAT')       and not ((string-length(cac:AccountingSupplierParty/cac:Party/cac:PartyTaxScheme[2]/cbc:CompanyID/text()) = 10)          and (substring(cac:AccountingSupplierParty/cac:Party/cac:PartyTaxScheme[2]/cbc:CompanyID/text(), 1, 2) = 'DK')          and (string-length(translate(substring(cac:AccountingSupplierParty/cac:Party/cac:PartyTaxScheme[2]/cbc:CompanyID/text(), 3, 8), '1234567890', '')) = 0))       )"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not((normalize-space(cac:AccountingSupplierParty/cac:Party/cac:PartyTaxScheme[1]/cac:TaxScheme/cbc:ID/text()) = 'VAT') and not ((string-length(cac:AccountingSupplierParty/cac:Party/cac:PartyTaxScheme[1]/cbc:CompanyID/text()) = 10) and (substring(cac:AccountingSupplierParty/cac:Party/cac:PartyTaxScheme[1]/cbc:CompanyID/text(), 1, 2) = 'DK') and (string-length(translate(substring(cac:AccountingSupplierParty/cac:Party/cac:PartyTaxScheme[1]/cbc:CompanyID/text(), 3, 8), '1234567890', '')) = 0)) or (normalize-space(cac:AccountingSupplierParty/cac:Party/cac:PartyTaxScheme[2]/cac:TaxScheme/cbc:ID/text()) = 'VAT') and not ((string-length(cac:AccountingSupplierParty/cac:Party/cac:PartyTaxScheme[2]/cbc:CompanyID/text()) = 10) and (substring(cac:AccountingSupplierParty/cac:Party/cac:PartyTaxScheme[2]/cbc:CompanyID/text(), 1, 2) = 'DK') and (string-length(translate(substring(cac:AccountingSupplierParty/cac:Party/cac:PartyTaxScheme[2]/cbc:CompanyID/text(), 3, 8), '1234567890', '')) = 0)) )">
               <xsl:attribute name="id">DK-R-015</xsl:attribute>
               <xsl:attribute name="flag">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>For Danish Suppliers, if specified, AccountingSupplierParty/PartyTaxScheme/CompanyID (DK VAT number) must start with DK followed by 8 digits</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="not((boolean(/ubl-creditnote:CreditNote) and ($DKCustomerCountry = 'DK'))       and (number(cac:LegalMonetaryTotal/cbc:PayableAmount/text()) &lt; 0)       )"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not((boolean(/ubl-creditnote:CreditNote) and ($DKCustomerCountry = 'DK')) and (number(cac:LegalMonetaryTotal/cbc:PayableAmount/text()) &lt; 0) )">
               <xsl:attribute name="id">DK-R-016</xsl:attribute>
               <xsl:attribute name="flag">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>For Danish Suppliers, a Credit note cannot have a negative total (PayableAmount)</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M16"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="ubl-creditnote:CreditNote[$DKSupplierCountry = 'DK' and $DKCustomerCountry = 'DK']/cac:AccountingSupplierParty/cac:Party/cac:PartyIdentification | ubl-creditnote:CreditNote[$DKSupplierCountry = 'DK' and $DKCustomerCountry = 'DK']/cac:AccountingCustomerParty/cac:Party/cac:PartyIdentification | ubl-invoice:Invoice[$DKSupplierCountry = 'DK' and $DKCustomerCountry = 'DK']/cac:AccountingSupplierParty/cac:Party/cac:PartyIdentification | ubl-invoice:Invoice[$DKSupplierCountry = 'DK' and $DKCustomerCountry = 'DK']/cac:AccountingCustomerParty/cac:Party/cac:PartyIdentification"
                 priority="1003"
                 mode="M16">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="ubl-creditnote:CreditNote[$DKSupplierCountry = 'DK' and $DKCustomerCountry = 'DK']/cac:AccountingSupplierParty/cac:Party/cac:PartyIdentification | ubl-creditnote:CreditNote[$DKSupplierCountry = 'DK' and $DKCustomerCountry = 'DK']/cac:AccountingCustomerParty/cac:Party/cac:PartyIdentification | ubl-invoice:Invoice[$DKSupplierCountry = 'DK' and $DKCustomerCountry = 'DK']/cac:AccountingSupplierParty/cac:Party/cac:PartyIdentification | ubl-invoice:Invoice[$DKSupplierCountry = 'DK' and $DKCustomerCountry = 'DK']/cac:AccountingCustomerParty/cac:Party/cac:PartyIdentification"/>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="not((boolean(cbc:ID))        and (normalize-space(cbc:ID/@schemeID) = '')       )"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not((boolean(cbc:ID)) and (normalize-space(cbc:ID/@schemeID) = '') )">
               <xsl:attribute name="id">DK-R-013</xsl:attribute>
               <xsl:attribute name="flag">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>For Danish Suppliers it is mandatory to use schemeID when PartyIdentification/ID is used for AccountingCustomerParty or AccountingSupplierParty</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M16"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="ubl-invoice:Invoice[$DKSupplierCountry = 'DK' and $DKCustomerCountry = 'DK']/cac:PaymentMeans"
                 priority="1002"
                 mode="M16">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="ubl-invoice:Invoice[$DKSupplierCountry = 'DK' and $DKCustomerCountry = 'DK']/cac:PaymentMeans"/>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="contains(' 1 10 31 42 48 49 50 58 59 93 97 ', concat(' ', cbc:PaymentMeansCode, ' '))"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="contains(' 1 10 31 42 48 49 50 58 59 93 97 ', concat(' ', cbc:PaymentMeansCode, ' '))">
               <xsl:attribute name="id">DK-R-005</xsl:attribute>
               <xsl:attribute name="flag">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>For Danish suppliers the following Payment means codes are allowed: 1, 10, 31, 42, 48, 49, 50, 58, 59, 93 and 97</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="not(((cbc:PaymentMeansCode = '31') or (cbc:PaymentMeansCode = '42'))       and not((normalize-space(cac:PayeeFinancialAccount/cbc:ID/text()) != '') and (normalize-space(cac:PayeeFinancialAccount/cac:FinancialInstitutionBranch/cbc:ID/text()) != ''))       )"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(((cbc:PaymentMeansCode = '31') or (cbc:PaymentMeansCode = '42')) and not((normalize-space(cac:PayeeFinancialAccount/cbc:ID/text()) != '') and (normalize-space(cac:PayeeFinancialAccount/cac:FinancialInstitutionBranch/cbc:ID/text()) != '')) )">
               <xsl:attribute name="id">DK-R-006</xsl:attribute>
               <xsl:attribute name="flag">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>For Danish suppliers bank account and registration account is mandatory if payment means is 31 or 42</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="not((cbc:PaymentMeansCode = '49')       and not((normalize-space(cac:PaymentMandate/cbc:ID/text()) != '')           and (normalize-space(cac:PaymentMandate/cac:PayerFinancialAccount/cbc:ID/text()) != ''))       )"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not((cbc:PaymentMeansCode = '49') and not((normalize-space(cac:PaymentMandate/cbc:ID/text()) != '') and (normalize-space(cac:PaymentMandate/cac:PayerFinancialAccount/cbc:ID/text()) != '')) )">
               <xsl:attribute name="id">DK-R-007</xsl:attribute>
               <xsl:attribute name="flag">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>For Danish suppliers PaymentMandate/ID and PayerFinancialAccount/ID are mandatory when payment means is 49</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="not((cbc:PaymentMeansCode = '50')       and not(((substring(cbc:PaymentID, 1, 3) = '01#')           or (substring(cbc:PaymentID, 1, 3) = '04#')           or (substring(cbc:PaymentID, 1, 3) = '15#'))         and (string-length(cac:PayeeFinancialAccount/cbc:ID/text()) = 7)         )       )"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not((cbc:PaymentMeansCode = '50') and not(((substring(cbc:PaymentID, 1, 3) = '01#') or (substring(cbc:PaymentID, 1, 3) = '04#') or (substring(cbc:PaymentID, 1, 3) = '15#')) and (string-length(cac:PayeeFinancialAccount/cbc:ID/text()) = 7) ) )">
               <xsl:attribute name="id">DK-R-008</xsl:attribute>
               <xsl:attribute name="flag">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>For Danish Suppliers PaymentID is mandatory and MUST start with 01#, 04# or 15# (kortartkode), and PayeeFinancialAccount/ID (Giro kontonummer) is mandatory and must be 7 characters long, when payment means equals 50 (Giro)</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="not((cbc:PaymentMeansCode = '50')       and ((substring(cbc:PaymentID, 1, 3) = '04#')          or (substring(cbc:PaymentID, 1, 3)  = '15#'))       and not(string-length(cbc:PaymentID) = 19)       )"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not((cbc:PaymentMeansCode = '50') and ((substring(cbc:PaymentID, 1, 3) = '04#') or (substring(cbc:PaymentID, 1, 3) = '15#')) and not(string-length(cbc:PaymentID) = 19) )">
               <xsl:attribute name="id">DK-R-009</xsl:attribute>
               <xsl:attribute name="flag">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>For Danish Suppliers if the PaymentID is prefixed with 04# or 15# the 16 digits instruction Id must be added to the PaymentID eg. "04#1234567890123456" when Payment means equals 50 (Giro)</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="not((cbc:PaymentMeansCode = '93')       and not(((substring(cbc:PaymentID, 1, 3) = '71#')           or (substring(cbc:PaymentID, 1, 3) = '73#')           or (substring(cbc:PaymentID, 1, 3) = '75#'))         and (string-length(cac:PayeeFinancialAccount/cbc:ID/text()) = 8)         )       )"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not((cbc:PaymentMeansCode = '93') and not(((substring(cbc:PaymentID, 1, 3) = '71#') or (substring(cbc:PaymentID, 1, 3) = '73#') or (substring(cbc:PaymentID, 1, 3) = '75#')) and (string-length(cac:PayeeFinancialAccount/cbc:ID/text()) = 8) ) )">
               <xsl:attribute name="id">DK-R-010</xsl:attribute>
               <xsl:attribute name="flag">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>For Danish Suppliers the PaymentID is mandatory and MUST start with 71#, 73# or 75# (kortartkode) and PayeeFinancialAccount/ID (Kreditornummer) is mandatory and must be exactly 8 characters long, when Payment means equals 93 (FIK)</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="not((cbc:PaymentMeansCode = '93')       and ((substring(cbc:PaymentID, 1, 3) = '71#')          or (substring(cbc:PaymentID, 1, 3)  = '75#'))       and not((string-length(cbc:PaymentID) = 18)          or (string-length(cbc:PaymentID) = 19))       )"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not((cbc:PaymentMeansCode = '93') and ((substring(cbc:PaymentID, 1, 3) = '71#') or (substring(cbc:PaymentID, 1, 3) = '75#')) and not((string-length(cbc:PaymentID) = 18) or (string-length(cbc:PaymentID) = 19)) )">
               <xsl:attribute name="id">DK-R-011</xsl:attribute>
               <xsl:attribute name="flag">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>For Danish Suppliers if the PaymentID is prefixed with 71# or 75# the 15-16 digits instruction Id must be added to the PaymentID eg. "71#1234567890123456" when payment Method equals 93 (FIK)</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M16"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="ubl-creditnote:CreditNote[$DKSupplierCountry = 'DK' and $DKCustomerCountry = 'DK']/cac:CreditNoteLine | ubl-invoice:Invoice[$DKSupplierCountry = 'DK' and $DKCustomerCountry = 'DK']/cac:InvoiceLine"
                 priority="1001"
                 mode="M16">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="ubl-creditnote:CreditNote[$DKSupplierCountry = 'DK' and $DKCustomerCountry = 'DK']/cac:CreditNoteLine | ubl-invoice:Invoice[$DKSupplierCountry = 'DK' and $DKCustomerCountry = 'DK']/cac:InvoiceLine"/>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="not((cac:Item/cac:CommodityClassification/cbc:ItemClassificationCode/@listID = 'TST')       and not((cac:Item/cac:CommodityClassification/cbc:ItemClassificationCode/@listVersionID = '19.05.01')           or (cac:Item/cac:CommodityClassification/cbc:ItemClassificationCode/@listVersionID = '19.0501')           )       )"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not((cac:Item/cac:CommodityClassification/cbc:ItemClassificationCode/@listID = 'TST') and not((cac:Item/cac:CommodityClassification/cbc:ItemClassificationCode/@listVersionID = '19.05.01') or (cac:Item/cac:CommodityClassification/cbc:ItemClassificationCode/@listVersionID = '19.0501') ) )">
               <xsl:attribute name="id">DK-R-003</xsl:attribute>
               <xsl:attribute name="flag">warning</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>If ItemClassification is provided from Danish suppliers, UNSPSC version 19.0501 should be used.</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M16"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="cac:AllowanceCharge[$DKSupplierCountry = 'DK' and $DKCustomerCountry = 'DK']"
                 priority="1000"
                 mode="M16">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="cac:AllowanceCharge[$DKSupplierCountry = 'DK' and $DKCustomerCountry = 'DK']"/>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="not((cbc:AllowanceChargeReasonCode = 'ZZZ')       and not((string-length(normalize-space(cbc:AllowanceChargeReason/text())) = 4)         and (number(cbc:AllowanceChargeReason) &gt;= 0)         and (number(cbc:AllowanceChargeReason) &lt;= 9999))       )"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not((cbc:AllowanceChargeReasonCode = 'ZZZ') and not((string-length(normalize-space(cbc:AllowanceChargeReason/text())) = 4) and (number(cbc:AllowanceChargeReason) &gt;= 0) and (number(cbc:AllowanceChargeReason) &lt;= 9999)) )">
               <xsl:attribute name="id">DK-R-004</xsl:attribute>
               <xsl:attribute name="flag">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>When specifying non-VAT Taxes, Danish suppliers MUST use the AllowanceChargeReasonCode="ZZZ" and the 4-digit Tax category MUST be specified in 'AllowanceChargeReason'</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M16"/>
   </xsl:template>
   <xsl:template match="text()" priority="-1" mode="M16"/>
   <xsl:template match="@*|node()" priority="-2" mode="M16">
      <xsl:apply-templates select="*" mode="M16"/>
   </xsl:template>

   <!--PATTERN -->


	  <!--RULE -->
   <xsl:template match="cac:AccountingSupplierParty/cac:Party[$supplierCountry = 'IT']/cac:PartyTaxScheme[normalize-space(cac:TaxScheme/cbc:ID) != 'VAT']"
                 priority="1001"
                 mode="M17">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="cac:AccountingSupplierParty/cac:Party[$supplierCountry = 'IT']/cac:PartyTaxScheme[normalize-space(cac:TaxScheme/cbc:ID) != 'VAT']"/>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="matches(normalize-space(cbc:CompanyID),'^[A-Z0-9]{11,16}$')"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="matches(normalize-space(cbc:CompanyID),'^[A-Z0-9]{11,16}$')">
               <xsl:attribute name="id">IT-R-001</xsl:attribute>
               <xsl:attribute name="flag">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text> [IT-R-001] BT-32 (Seller tax registration identifier) - For Italian suppliers BT-32 minimum length 11 and maximum length shall be 16.  Per i fornitori italiani il BT-32 deve avere una lunghezza tra 11 e 16 caratteri</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M17"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="cac:AccountingSupplierParty/cac:Party[$supplierCountry = 'IT']"
                 priority="1000"
                 mode="M17">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="cac:AccountingSupplierParty/cac:Party[$supplierCountry = 'IT']"/>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="cac:PostalAddress/cbc:StreetName"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="cac:PostalAddress/cbc:StreetName">
               <xsl:attribute name="id">IT-R-002</xsl:attribute>
               <xsl:attribute name="flag">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>[IT-R-002] BT-35 (Seller address line 1) - Italian suppliers MUST provide the postal address line 1 - I fornitori italiani devono indicare l'indirizzo postale.</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="cac:PostalAddress/cbc:CityName"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="cac:PostalAddress/cbc:CityName">
               <xsl:attribute name="id">IT-R-003</xsl:attribute>
               <xsl:attribute name="flag">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>[IT-R-003] BT-37 (Seller city) - Italian suppliers MUST provide the postal address city - I fornitori italiani devono indicare la città di residenza.</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="cac:PostalAddress/cbc:PostalZone"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="cac:PostalAddress/cbc:PostalZone">
               <xsl:attribute name="id">IT-R-004</xsl:attribute>
               <xsl:attribute name="flag">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>"&gt; [IT-R-004] BT-38 (Seller post code) - Italian suppliers MUST provide the postal address post code - I fornitori italiani devono indicare il CAP di residenza.</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M17"/>
   </xsl:template>
   <xsl:template match="text()" priority="-1" mode="M17"/>
   <xsl:template match="@*|node()" priority="-2" mode="M17">
      <xsl:apply-templates select="*" mode="M17"/>
   </xsl:template>

   <!--PATTERN -->


	  <!--RULE -->
   <xsl:template match="//cac:AccountingSupplierParty/cac:Party[cac:PostalAddress/cac:Country/cbc:IdentificationCode = 'SE' and cac:PartyTaxScheme[cac:TaxScheme/cbc:ID = 'VAT']/substring(cbc:CompanyID, 1, 2) = 'SE']"
                 priority="1006"
                 mode="M18">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="//cac:AccountingSupplierParty/cac:Party[cac:PostalAddress/cac:Country/cbc:IdentificationCode = 'SE' and cac:PartyTaxScheme[cac:TaxScheme/cbc:ID = 'VAT']/substring(cbc:CompanyID, 1, 2) = 'SE']"/>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="string-length(normalize-space(cac:PartyTaxScheme[cac:TaxScheme/cbc:ID = 'VAT']/cbc:CompanyID)) = 14"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="string-length(normalize-space(cac:PartyTaxScheme[cac:TaxScheme/cbc:ID = 'VAT']/cbc:CompanyID)) = 14">
               <xsl:attribute name="id">SE-R-001</xsl:attribute>
               <xsl:attribute name="flag">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>For Swedish suppliers, Swedish VAT-numbers must consist of 14 characters.</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="string(number(substring(cac:PartyTaxScheme[cac:TaxScheme/cbc:ID = 'VAT']/cbc:CompanyID, 3, 12))) != 'NaN'"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="string(number(substring(cac:PartyTaxScheme[cac:TaxScheme/cbc:ID = 'VAT']/cbc:CompanyID, 3, 12))) != 'NaN'">
               <xsl:attribute name="id">SE-R-002</xsl:attribute>
               <xsl:attribute name="flag">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>For Swedish suppliers, the Swedish VAT-numbers must have the trailing 12 characters in numeric form</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M18"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="//cac:AccountingSupplierParty/cac:Party/cac:PartyLegalEntity[../cac:PostalAddress/cac:Country/cbc:IdentificationCode = 'SE' and cbc:CompanyID]"
                 priority="1005"
                 mode="M18">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="//cac:AccountingSupplierParty/cac:Party/cac:PartyLegalEntity[../cac:PostalAddress/cac:Country/cbc:IdentificationCode = 'SE' and cbc:CompanyID]"/>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="string(number(cbc:CompanyID)) != 'NaN'"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="string(number(cbc:CompanyID)) != 'NaN'">
               <xsl:attribute name="id">SE-R-003</xsl:attribute>
               <xsl:attribute name="flag">warning</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>Swedish organisation numbers should be numeric.</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="string-length(normalize-space(cbc:CompanyID)) = 10"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="string-length(normalize-space(cbc:CompanyID)) = 10">
               <xsl:attribute name="id">SE-R-004</xsl:attribute>
               <xsl:attribute name="flag">warning</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>Swedish organisation numbers consist of 10 characters.</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M18"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="//cac:AccountingSupplierParty/cac:Party[cac:PostalAddress/cac:Country/cbc:IdentificationCode = 'SE' and exists(cac:PartyLegalEntity/cbc:CompanyID)]/cac:PartyTaxScheme[normalize-space(upper-case(cac:TaxScheme/cbc:ID)) != 'VAT']/cbc:CompanyID"
                 priority="1004"
                 mode="M18">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="//cac:AccountingSupplierParty/cac:Party[cac:PostalAddress/cac:Country/cbc:IdentificationCode = 'SE' and exists(cac:PartyLegalEntity/cbc:CompanyID)]/cac:PartyTaxScheme[normalize-space(upper-case(cac:TaxScheme/cbc:ID)) != 'VAT']/cbc:CompanyID"/>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="normalize-space(upper-case(.)) = 'GODKÄND FÖR F-SKATT'"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="normalize-space(upper-case(.)) = 'GODKÄND FÖR F-SKATT'">
               <xsl:attribute name="id">SE-R-005</xsl:attribute>
               <xsl:attribute name="flag">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>For Swedish suppliers, when using Seller tax registration identifier, 'Godkänd för F-skatt' must be stated</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M18"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="//cac:TaxCategory[//cac:AccountingSupplierParty/cac:Party[cac:PostalAddress/cac:Country/cbc:IdentificationCode = 'SE' and cac:PartyTaxScheme[cac:TaxScheme/cbc:ID = 'VAT']/substring(cbc:CompanyID, 1, 2) = 'SE'] and cbc:ID = 'S'] | //cac:ClassifiedTaxCategory[//cac:AccountingSupplierParty/cac:Party[cac:PostalAddress/cac:Country/cbc:IdentificationCode = 'SE' and cac:PartyTaxScheme[cac:TaxScheme/cbc:ID = 'VAT']/substring(cbc:CompanyID, 1, 2) = 'SE'] and cbc:ID = 'S']"
                 priority="1003"
                 mode="M18">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="//cac:TaxCategory[//cac:AccountingSupplierParty/cac:Party[cac:PostalAddress/cac:Country/cbc:IdentificationCode = 'SE' and cac:PartyTaxScheme[cac:TaxScheme/cbc:ID = 'VAT']/substring(cbc:CompanyID, 1, 2) = 'SE'] and cbc:ID = 'S'] | //cac:ClassifiedTaxCategory[//cac:AccountingSupplierParty/cac:Party[cac:PostalAddress/cac:Country/cbc:IdentificationCode = 'SE' and cac:PartyTaxScheme[cac:TaxScheme/cbc:ID = 'VAT']/substring(cbc:CompanyID, 1, 2) = 'SE'] and cbc:ID = 'S']"/>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="number(cbc:Percent) = 25 or number(cbc:Percent) = 12 or number(cbc:Percent) = 6"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="number(cbc:Percent) = 25 or number(cbc:Percent) = 12 or number(cbc:Percent) = 6">
               <xsl:attribute name="id">SE-R-006</xsl:attribute>
               <xsl:attribute name="flag">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>For Swedish suppliers, only standard VAT rate of 6, 12 or 25 are used</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M18"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="//cac:PaymentMeans[//cac:AccountingSupplierParty/cac:Party[cac:PostalAddress/cac:Country/cbc:IdentificationCode = 'SE'] and normalize-space(cbc:PaymentMeansCode) = '30' and normalize-space(cac:PayeeFinancialAccount/cac:FinancialInstitutionBranch/cbc:ID) = 'SE:PLUSGIRO']/cac:PayeeFinancialAccount/cbc:ID"
                 priority="1002"
                 mode="M18">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="//cac:PaymentMeans[//cac:AccountingSupplierParty/cac:Party[cac:PostalAddress/cac:Country/cbc:IdentificationCode = 'SE'] and normalize-space(cbc:PaymentMeansCode) = '30' and normalize-space(cac:PayeeFinancialAccount/cac:FinancialInstitutionBranch/cbc:ID) = 'SE:PLUSGIRO']/cac:PayeeFinancialAccount/cbc:ID"/>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="string(number(normalize-space(.))) != 'NaN'"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="string(number(normalize-space(.))) != 'NaN'">
               <xsl:attribute name="id">SE-R-007</xsl:attribute>
               <xsl:attribute name="flag">warning</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>For Swedish suppliers using Plusgiro, the Account ID must be numeric </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="string-length(normalize-space(.)) &gt;= 2 and string-length(normalize-space(.)) &lt;= 8"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="string-length(normalize-space(.)) &gt;= 2 and string-length(normalize-space(.)) &lt;= 8">
               <xsl:attribute name="id">SE-R-010</xsl:attribute>
               <xsl:attribute name="flag">warning</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>For Swedish suppliers using Plusgiro, the Account ID must have 2-8 characters</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M18"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="//cac:PaymentMeans[//cac:AccountingSupplierParty/cac:Party[cac:PostalAddress/cac:Country/cbc:IdentificationCode = 'SE'] and normalize-space(cbc:PaymentMeansCode) = '30' and normalize-space(cac:PayeeFinancialAccount/cac:FinancialInstitutionBranch/cbc:ID) = 'SE:BANKGIRO']/cac:PayeeFinancialAccount/cbc:ID"
                 priority="1001"
                 mode="M18">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="//cac:PaymentMeans[//cac:AccountingSupplierParty/cac:Party[cac:PostalAddress/cac:Country/cbc:IdentificationCode = 'SE'] and normalize-space(cbc:PaymentMeansCode) = '30' and normalize-space(cac:PayeeFinancialAccount/cac:FinancialInstitutionBranch/cbc:ID) = 'SE:BANKGIRO']/cac:PayeeFinancialAccount/cbc:ID"/>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="string(number(normalize-space(.))) != 'NaN'"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="string(number(normalize-space(.))) != 'NaN'">
               <xsl:attribute name="id">SE-R-008</xsl:attribute>
               <xsl:attribute name="flag">warning</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>For Swedish suppliers using Bankgiro, the Account ID must be numeric </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="string-length(normalize-space(.)) = 7 or string-length(normalize-space(.)) = 8"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="string-length(normalize-space(.)) = 7 or string-length(normalize-space(.)) = 8">
               <xsl:attribute name="id">SE-R-009</xsl:attribute>
               <xsl:attribute name="flag">warning</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>For Swedish suppliers using Bankgiro, the Account ID must have 7-8 characters</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M18"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="//cac:PaymentMeans[//cac:AccountingSupplierParty/cac:Party[cac:PostalAddress/cac:Country/cbc:IdentificationCode = 'SE'] and (cbc:PaymentMeansCode = normalize-space('50') or cbc:PaymentMeansCode = normalize-space('56'))]"
                 priority="1000"
                 mode="M18">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="//cac:PaymentMeans[//cac:AccountingSupplierParty/cac:Party[cac:PostalAddress/cac:Country/cbc:IdentificationCode = 'SE'] and (cbc:PaymentMeansCode = normalize-space('50') or cbc:PaymentMeansCode = normalize-space('56'))]"/>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="false()"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="false()">
               <xsl:attribute name="id">SE-R-011</xsl:attribute>
               <xsl:attribute name="flag">warning</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>For Swedish suppliers using Swedish Bankgiro or Plusgiro, the proper way to indicate this is to use Code 30 for PaymentMeans and FinancialInstitutionBranch ID with code SE:BANKGIRO or SE:PLUSGIRO</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M18"/>
   </xsl:template>
   <xsl:template match="text()" priority="-1" mode="M18"/>
   <xsl:template match="@*|node()" priority="-2" mode="M18">
      <xsl:apply-templates select="*" mode="M18"/>
   </xsl:template>

   <!--PATTERN -->
   <xsl:variable name="ISO3166"
                 select="tokenize('AD AE AF AG AI AL AM AO AQ AR AS AT AU AW AX AZ BA BB BD BE BF BG BH BI BJ BL BM BN BO BQ BR BS BT BV BW BY BZ CA CC CD CF CG CH CI CK CL CM CN CO CR CU CV CW CX CY CZ DE DJ DK DM DO DZ EC EE EG EH ER ES ET FI FJ FK FM FO FR GA GB GD GE GF GG GH GI GL GM GN GP GQ GR GS GT GU GW GY HK HM HN HR HT HU ID IE IL IM IN IO IQ IR IS IT JE JM JO JP KE KG KH KI KM KN KP KR KW KY KZ LA LB LC LI LK LR LS LT LU LV LY MA MC MD ME MF MG MH MK ML MM MN MO MP MQ MR MS MT MU MV MW MX MY MZ NA NC NE NF NG NI NL NO NP NR NU NZ OM PA PE PF PG PH PK PL PM PN PR PS PT PW PY QA RE RO RS RU RW SA SB SC SD SE SG SH SI SJ SK SL SM SN SO SR SS ST SV SX SY SZ TC TD TF TG TH TJ TK TL TM TN TO TR TT TV TW TZ UA UG UM US UY UZ VA VC VE VG VI VN VU WF WS YE YT ZA ZM ZW', '\s')"/>
   <xsl:variable name="ISO4217"
                 select="tokenize('AFN EUR ALL DZD USD AOA XCD XCD ARS AMD AWG AUD AZN BSD BHD BDT BBD BYN BZD XOF BMD INR BTN BOB BOV USD BAM BWP NOK BRL USD BND BGN XOF BIF CVE KHR XAF CAD KYD XAF XAF CLP CLF CNY AUD AUD COP COU KMF CDF XAF NZD CRC XOF HRK CUP CUC ANG CZK DKK DJF XCD DOP USD EGP SVC USD XAF ERN ETB FKP DKK FJD XPF XAF GMD GEL GHS GIP DKK XCD USD GTQ GBP GNF XOF GYD HTG USD AUD HNL HKD HUF ISK INR IDR XDR IRR IQD GBP ILS JMD JPY GBP JOD KZT KES AUD KPW KRW KWD KGS LAK LBP LSL ZAR LRD LYD CHF MOP MKD MGA MWK MYR MVR XOF USD MRO MUR XUA MXN MXV USD MDL MNT XCD MAD MZN MMK NAD ZAR AUD NPR XPF NZD NIO XOF NGN NZD AUD USD NOK OMR PKR USD PAB USD PGK PYG PEN PHP NZD PLN USD QAR RON RUB RWF SHP XCD XCD XCD WST STD SAR XOF RSD SCR SLL SGD ANG XSU SBD SOS ZAR SSP LKR SDG SRD NOK SZL SEK CHF CHE CHW SYP TWD TJS TZS THB USD XOF NZD TOP TTD TND TRY TMT USD AUD UGX UAH AED GBP USD USD USN UYU UYI UZS VUV VEF VND USD USD XPF MAD YER ZMW ZWL XBA XBB XBC XBD XTS XXX XAU XPD XPT XAG', '\s')"/>
   <xsl:variable name="MIMECODE"
                 select="tokenize('application/pdf image/png image/jpeg text/csv application/vnd.openxmlformats-officedocument.spreadsheetml.sheet application/vnd.oasis.opendocument.spreadsheet', '\s')"/>
   <xsl:variable name="UNCL2005" select="tokenize('3 35 432', '\s')"/>
   <xsl:variable name="UNCL5189"
                 select="tokenize('41 42 60 62 63 64 65 66 67 68 70 71 88 95 100 102 103 104 105', '\s')"/>
   <xsl:variable name="UNCL7161"
                 select="tokenize('AA AAA AAC AAD AAE AAF AAH AAI AAS AAT AAV AAY AAZ ABA ABB ABC ABD ABF ABK ABL ABN ABR ABS ABT ABU ACF ACG ACH ACI ACJ ACK ACL ACM ACS ADC ADE ADJ ADK ADL ADM ADN ADO ADP ADQ ADR ADT ADW ADY ADZ AEA AEB AEC AED AEF AEH AEI AEJ AEK AEL AEM AEN AEO AEP AES AET AEU AEV AEW AEX AEY AEZ AJ AU CA CAB CAD CAE CAF CAI CAJ CAK CAL CAM CAN CAO CAP CAQ CAR CAS CAT CAU CAV CAW CD CG CS CT DAB DAD DL EG EP ER FAA FAB FAC FC FH FI GAA HAA HD HH IAA IAB ID IF IR IS KO L1 LA LAA LAB LF MAE MI ML NAA OA PA PAA PC PL RAB RAC RAD RAF RE RF RH RV SA SAA SAD SAE SAI SG SH SM SU TAB TAC TT TV V1 V2 WH XAA YY ZZZ', '\s')"/>
   <xsl:variable name="UNCL5305" select="tokenize('AE E S Z G O K L M', '\s')"/>
   <xsl:variable name="eaid"
                 select="tokenize('0002 0007 0009 0037 0060 0088 0096 0097 0106 0130 0135 0142 0151 0183 0184 0190 0191 0192 0193 0195 0196 0198 0199 0200 0201 0202 0204 0208 9901 9906 9907 9910 9913 9914 9915 9918 9919 9920 9922 9923 9924 9925 9926 9927 9928 9929 9930 9931 9932 9933 9934 9935 9936 9937 9938 9939 9940 9941 9942 9943 9944 9945 9946 9947 9948 9949 9950 9951 9952 9953 9955 9956 9957 9958', '\s')"/>

	  <!--RULE -->
   <xsl:template match="cbc:EmbeddedDocumentBinaryObject[@mimeCode]"
                 priority="1016"
                 mode="M19">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="cbc:EmbeddedDocumentBinaryObject[@mimeCode]"/>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="           some $code in $MIMECODE             satisfies @mimeCode = $code"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="some $code in $MIMECODE satisfies @mimeCode = $code">
               <xsl:attribute name="id">PEPPOL-EN16931-CL001</xsl:attribute>
               <xsl:attribute name="flag">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>Mime code must be according to subset of IANA code list.</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M19"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="cac:AllowanceCharge[cbc:ChargeIndicator = 'false']/cbc:AllowanceChargeReasonCode"
                 priority="1015"
                 mode="M19">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="cac:AllowanceCharge[cbc:ChargeIndicator = 'false']/cbc:AllowanceChargeReasonCode"/>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="           some $code in $UNCL5189             satisfies normalize-space(text()) = $code"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="some $code in $UNCL5189 satisfies normalize-space(text()) = $code">
               <xsl:attribute name="id">PEPPOL-EN16931-CL002</xsl:attribute>
               <xsl:attribute name="flag">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>Reason code MUST be according to subset of UNCL 5189 D.16B.</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M19"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="cac:AllowanceCharge[cbc:ChargeIndicator = 'true']/cbc:AllowanceChargeReasonCode"
                 priority="1014"
                 mode="M19">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="cac:AllowanceCharge[cbc:ChargeIndicator = 'true']/cbc:AllowanceChargeReasonCode"/>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="           some $code in $UNCL7161             satisfies normalize-space(text()) = $code"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="some $code in $UNCL7161 satisfies normalize-space(text()) = $code">
               <xsl:attribute name="id">PEPPOL-EN16931-CL003</xsl:attribute>
               <xsl:attribute name="flag">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>Reason code MUST be according to UNCL 7161 D.16B.</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M19"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="cac:InvoicePeriod/cbc:DescriptionCode"
                 priority="1013"
                 mode="M19">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="cac:InvoicePeriod/cbc:DescriptionCode"/>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="           some $code in $UNCL2005             satisfies normalize-space(text()) = $code"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="some $code in $UNCL2005 satisfies normalize-space(text()) = $code">
               <xsl:attribute name="id">PEPPOL-EN16931-CL006</xsl:attribute>
               <xsl:attribute name="flag">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>Invoice period description code must be according to UNCL 2005 D.16B.</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M19"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="cbc:Amount | cbc:BaseAmount | cbc:PriceAmount | cbc:TaxAmount | cbc:TaxableAmount | cbc:LineExtensionAmount | cbc:TaxExclusiveAmount | cbc:TaxInclusiveAmount | cbc:AllowanceTotalAmount | cbc:ChargeTotalAmount | cbc:PrepaidAmount | cbc:PayableRoundingAmount | cbc:PayableAmount"
                 priority="1012"
                 mode="M19">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="cbc:Amount | cbc:BaseAmount | cbc:PriceAmount | cbc:TaxAmount | cbc:TaxableAmount | cbc:LineExtensionAmount | cbc:TaxExclusiveAmount | cbc:TaxInclusiveAmount | cbc:AllowanceTotalAmount | cbc:ChargeTotalAmount | cbc:PrepaidAmount | cbc:PayableRoundingAmount | cbc:PayableAmount"/>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="           some $code in $ISO4217             satisfies @currencyID = $code"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="some $code in $ISO4217 satisfies @currencyID = $code">
               <xsl:attribute name="id">PEPPOL-EN16931-CL007</xsl:attribute>
               <xsl:attribute name="flag">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>Currency code must be according to ISO 4217:2005</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M19"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="cbc:InvoiceTypeCode" priority="1011" mode="M19">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" context="cbc:InvoiceTypeCode"/>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="           $profile != '01' or (some $code in tokenize('380 383 386 393 82 80 84 395 575 623 780', '\s')             satisfies normalize-space(text()) = $code)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="$profile != '01' or (some $code in tokenize('380 383 386 393 82 80 84 395 575 623 780', '\s') satisfies normalize-space(text()) = $code)">
               <xsl:attribute name="id">PEPPOL-EN16931-P0100</xsl:attribute>
               <xsl:attribute name="flag">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>Invoice type code MUST be set according to the profile.</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M19"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="cbc:CreditNoteTypeCode" priority="1010" mode="M19">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="cbc:CreditNoteTypeCode"/>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="           $profile != '01' or (some $code in tokenize('381 396 81 83 532', '\s')             satisfies normalize-space(text()) = $code)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="$profile != '01' or (some $code in tokenize('381 396 81 83 532', '\s') satisfies normalize-space(text()) = $code)">
               <xsl:attribute name="id">PEPPOL-EN16931-P0101</xsl:attribute>
               <xsl:attribute name="flag">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>Credit note type code MUST be set according to the profile.</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M19"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="cbc:IssueDate | cbc:DueDate | cbc:TaxPointDate | cbc:StartDate | cbc:EndDate | cbc:ActualDeliveryDate"
                 priority="1009"
                 mode="M19">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="cbc:IssueDate | cbc:DueDate | cbc:TaxPointDate | cbc:StartDate | cbc:EndDate | cbc:ActualDeliveryDate"/>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="string-length(text()) = 10 and (string(.) castable as xs:date)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="string-length(text()) = 10 and (string(.) castable as xs:date)">
               <xsl:attribute name="id">PEPPOL-EN16931-F001</xsl:attribute>
               <xsl:attribute name="flag">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>A date
        MUST be formatted YYYY-MM-DD.</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M19"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="cbc:EndpointID[@schemeID]" priority="1008" mode="M19">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="cbc:EndpointID[@schemeID]"/>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="         some $code in $eaid         satisfies @schemeID = $code"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="some $code in $eaid satisfies @schemeID = $code">
               <xsl:attribute name="id">PEPPOL-EN16931-CL008</xsl:attribute>
               <xsl:attribute name="flag">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>Electronic address identifier scheme must be from the codelist "Electronic Address Identifier Scheme"</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M19"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="cac:TaxCategory[upper-case(cbc:TaxExemptionReasonCode)='VATEX-EU-G']"
                 priority="1007"
                 mode="M19">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="cac:TaxCategory[upper-case(cbc:TaxExemptionReasonCode)='VATEX-EU-G']"/>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="normalize-space(cbc:ID)='G'"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="normalize-space(cbc:ID)='G'">
               <xsl:attribute name="id">PEPPOL-EN16931-P0104</xsl:attribute>
               <xsl:attribute name="flag">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>Tax Category G MUST be used when exemption reason code is VATEX-EU-G</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M19"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="cac:TaxCategory[upper-case(cbc:TaxExemptionReasonCode)='VATEX-EU-O']"
                 priority="1006"
                 mode="M19">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="cac:TaxCategory[upper-case(cbc:TaxExemptionReasonCode)='VATEX-EU-O']"/>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="normalize-space(cbc:ID)='O'"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="normalize-space(cbc:ID)='O'">
               <xsl:attribute name="id">PEPPOL-EN16931-P0105</xsl:attribute>
               <xsl:attribute name="flag">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>Tax Category O MUST be used when exemption reason code is VATEX-EU-O</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M19"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="cac:TaxCategory[upper-case(cbc:TaxExemptionReasonCode)='VATEX-EU-IC']"
                 priority="1005"
                 mode="M19">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="cac:TaxCategory[upper-case(cbc:TaxExemptionReasonCode)='VATEX-EU-IC']"/>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="normalize-space(cbc:ID)='K'"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="normalize-space(cbc:ID)='K'">
               <xsl:attribute name="id">PEPPOL-EN16931-P0106</xsl:attribute>
               <xsl:attribute name="flag">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>Tax Category K MUST be used when exemption reason code is VATEX-EU-IC</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M19"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="cac:TaxCategory[upper-case(cbc:TaxExemptionReasonCode)='VATEX-EU-AE']"
                 priority="1004"
                 mode="M19">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="cac:TaxCategory[upper-case(cbc:TaxExemptionReasonCode)='VATEX-EU-AE']"/>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="normalize-space(cbc:ID)='AE'"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="normalize-space(cbc:ID)='AE'">
               <xsl:attribute name="id">PEPPOL-EN16931-P0107</xsl:attribute>
               <xsl:attribute name="flag">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>Tax Category AE MUST be used when exemption reason code is VATEX-EU-AE</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M19"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="cac:TaxCategory[upper-case(cbc:TaxExemptionReasonCode)='VATEX-EU-D']"
                 priority="1003"
                 mode="M19">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="cac:TaxCategory[upper-case(cbc:TaxExemptionReasonCode)='VATEX-EU-D']"/>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="normalize-space(cbc:ID)='E'"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="normalize-space(cbc:ID)='E'">
               <xsl:attribute name="id">PEPPOL-EN16931-P0108</xsl:attribute>
               <xsl:attribute name="flag">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>Tax Category E MUST be used when exemption reason code is VATEX-EU-D</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M19"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="cac:TaxCategory[upper-case(cbc:TaxExemptionReasonCode)='VATEX-EU-F']"
                 priority="1002"
                 mode="M19">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="cac:TaxCategory[upper-case(cbc:TaxExemptionReasonCode)='VATEX-EU-F']"/>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="normalize-space(cbc:ID)='E'"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="normalize-space(cbc:ID)='E'">
               <xsl:attribute name="id">PEPPOL-EN16931-P0109</xsl:attribute>
               <xsl:attribute name="flag">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>Tax Category E MUST be used when exemption reason code is VATEX-EU-F</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M19"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="cac:TaxCategory[upper-case(cbc:TaxExemptionReasonCode)='VATEX-EU-I']"
                 priority="1001"
                 mode="M19">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="cac:TaxCategory[upper-case(cbc:TaxExemptionReasonCode)='VATEX-EU-I']"/>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="normalize-space(cbc:ID)='E'"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="normalize-space(cbc:ID)='E'">
               <xsl:attribute name="id">PEPPOL-EN16931-P0110</xsl:attribute>
               <xsl:attribute name="flag">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>Tax Category E MUST be used when exemption reason code is VATEX-EU-I</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M19"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="cac:TaxCategory[upper-case(cbc:TaxExemptionReasonCode)='VATEX-EU-J']"
                 priority="1000"
                 mode="M19">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="cac:TaxCategory[upper-case(cbc:TaxExemptionReasonCode)='VATEX-EU-J']"/>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="normalize-space(cbc:ID)='E'"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="normalize-space(cbc:ID)='E'">
               <xsl:attribute name="id">PEPPOL-EN16931-P0111</xsl:attribute>
               <xsl:attribute name="flag">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>Tax Category E MUST be used when exemption reason code is VATEX-EU-J</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M19"/>
   </xsl:template>
   <xsl:template match="text()" priority="-1" mode="M19"/>
   <xsl:template match="@*|node()" priority="-2" mode="M19">
      <xsl:apply-templates select="*" mode="M19"/>
   </xsl:template>
</xsl:stylesheet>
