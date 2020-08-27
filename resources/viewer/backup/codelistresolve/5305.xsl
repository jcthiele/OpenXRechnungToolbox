<?xml version="1.0"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template name="code.UNTDID.5305">
		<xsl:param name="myparam"/>
		<xsl:choose>
      		<xsl:when test="$myparam='A'"><xsl:value-of select="$myparam"/> (Mixed tax rate)</xsl:when>
      		<xsl:when test="$myparam='AA'"><xsl:value-of select="$myparam"/> (Lower rate)</xsl:when>
      		<xsl:when test="$myparam='AB'"><xsl:value-of select="$myparam"/> (Exempt for resale)</xsl:when>
      		<xsl:when test="$myparam='AC'"><xsl:value-of select="$myparam"/> (Value Added Tax (VAT) not now due for payment)</xsl:when>
      		<xsl:when test="$myparam='AD'"><xsl:value-of select="$myparam"/> (Value Added Tax (VAT) due from a previous invoice)</xsl:when>
      		<xsl:when test="$myparam='AE'"><xsl:value-of select="$myparam"/> (VAT Reverse Charge)</xsl:when>
      		<xsl:when test="$myparam='B'"><xsl:value-of select="$myparam"/> (Transferred (VAT))</xsl:when>
      		<xsl:when test="$myparam='C'"><xsl:value-of select="$myparam"/> (Duty paid by supplier)</xsl:when>
      		<xsl:when test="$myparam='D'"><xsl:value-of select="$myparam"/> (Value Added Tax (VAT) margin scheme - travel agents)</xsl:when>
      		<xsl:when test="$myparam='E'"><xsl:value-of select="$myparam"/> (Exempt from tax)</xsl:when>
      		<xsl:when test="$myparam='F'"><xsl:value-of select="$myparam"/> (Value Added Tax (VAT) margin scheme - second-hand goods)</xsl:when>
      		<xsl:when test="$myparam='G'"><xsl:value-of select="$myparam"/> (Free export item, tax not charged)</xsl:when>
      		<xsl:when test="$myparam='H'"><xsl:value-of select="$myparam"/> (Higher rate)</xsl:when>
      		<xsl:when test="$myparam='I'"><xsl:value-of select="$myparam"/> (Value Added Tax (VAT) margin scheme - works of art Margin scheme — Works of art)</xsl:when>
      		<xsl:when test="$myparam='J'"><xsl:value-of select="$myparam"/> (Value Added Tax (VAT) margin scheme - collector’s items and antiques)</xsl:when>
      		<xsl:when test="$myparam='K'"><xsl:value-of select="$myparam"/> (VAT exempt for EEA intra-community supply of goods and services)</xsl:when>
      		<xsl:when test="$myparam='L'"><xsl:value-of select="$myparam"/> (Canary Islands general indirect tax)</xsl:when>
      		<xsl:when test="$myparam='M'"><xsl:value-of select="$myparam"/> (Tax for production, services and importation in Ceuta and Melilla)</xsl:when>
      		<xsl:when test="$myparam='O'"><xsl:value-of select="$myparam"/> (Services outside scope of tax)</xsl:when>
      		<xsl:when test="$myparam='S'"><xsl:value-of select="$myparam"/> (Standard rate)</xsl:when>
      		<xsl:when test="$myparam='Z'"><xsl:value-of select="$myparam"/> (Zero rated goods)</xsl:when>
   			<xsl:otherwise><xsl:value-of select="$myparam"/></xsl:otherwise>
		</xsl:choose>
	</xsl:template>

</xsl:stylesheet>