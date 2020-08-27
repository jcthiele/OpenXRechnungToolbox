<?xml version="1.0"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template name="code.VATEX">
		<xsl:param name="myparam"/>
		<xsl:choose>
      		<xsl:when test="$myparam='vatex-eu-132'"><xsl:value-of select="$myparam"/> (Exempt based on article 132 of Council Directive 2006/112/EC)</xsl:when>
      		<xsl:when test="$myparam='vatex-eu-132-1a'"><xsl:value-of select="$myparam"/> (Exempt based on article 132, section 1 (a) of Council Directive 2006/112/EC)</xsl:when>
      		<xsl:when test="$myparam='vatex-eu-132-1b'"><xsl:value-of select="$myparam"/> (Exempt based on article 132, section 1 (b) of Council Directive 2006/112/EC)</xsl:when>
      		<xsl:when test="$myparam='vatex-eu-132-1c'"><xsl:value-of select="$myparam"/> (Exempt based on article 132, section 1 (c) of Council Directive 2006/112/EC)</xsl:when>
      		<xsl:when test="$myparam='vatex-eu-132-1d'"><xsl:value-of select="$myparam"/> (Exempt based on article 132, section 1 (d) of Council Directive 2006/112/EC)</xsl:when>
      		<xsl:when test="$myparam='vatex-eu-132-1e'"><xsl:value-of select="$myparam"/> (Exempt based on article 132, section 1 (e) of Council Directive 2006/112/EC)</xsl:when>
      		<xsl:when test="$myparam='vatex-eu-132-1f'"><xsl:value-of select="$myparam"/> (Exempt based on article 132, section 1 (f) of Council Directive 2006/112/EC)</xsl:when>
      		<xsl:when test="$myparam='vatex-eu-132-1g'"><xsl:value-of select="$myparam"/> (Exempt based on article 132, section 1 (g) of Council Directive 2006/112/EC)</xsl:when>
      		<xsl:when test="$myparam='vatex-eu-132-1h'"><xsl:value-of select="$myparam"/> (Exempt based on article 132, section 1 (h) of Council Directive 2006/112/EC)</xsl:when>
      		<xsl:when test="$myparam='vatex-eu-132-1i'"><xsl:value-of select="$myparam"/> (Exempt based on article 132, section 1 (i) of Council Directive 2006/112/EC)</xsl:when>
      		<xsl:when test="$myparam='vatex-eu-132-1j'"><xsl:value-of select="$myparam"/> (Exempt based on article 132, section 1 (j) of Council Directive 2006/112/EC)</xsl:when>
      		<xsl:when test="$myparam='vatex-eu-132-1k'"><xsl:value-of select="$myparam"/> (Exempt based on article 132, section 1 (k) of Council Directive 2006/112/EC)</xsl:when>
      		<xsl:when test="$myparam='vatex-eu-132-1l'"><xsl:value-of select="$myparam"/> (Exempt based on article 132, section 1 (l) of Council Directive 2006/112/EC)</xsl:when>
      		<xsl:when test="$myparam='vatex-eu-132-1m'"><xsl:value-of select="$myparam"/> (Exempt based on article 132, section 1 (m) of Council Directive 2006/112/EC)</xsl:when>
      		<xsl:when test="$myparam='vatex-eu-132-1n'"><xsl:value-of select="$myparam"/> (Exempt based on article 132, section 1 (n) of Council Directive 2006/112/EC)</xsl:when>
      		<xsl:when test="$myparam='vatex-eu-132-1o'"><xsl:value-of select="$myparam"/> (Exempt based on article 132, section 1 (o) of Council Directive 2006/112/EC)</xsl:when>
      		<xsl:when test="$myparam='vatex-eu-132-1p'"><xsl:value-of select="$myparam"/> (Exempt based on article 132, section 1 (p) of Council Directive 2006/112/EC)</xsl:when>
      		<xsl:when test="$myparam='vatex-eu-132-1q'"><xsl:value-of select="$myparam"/> (Exempt based on article 132, section 1 (q) of Council Directive 2006/112/EC)</xsl:when>
      		<xsl:when test="$myparam='vatex-eu-143'"><xsl:value-of select="$myparam"/> (Exempt based on article 143 of Council Directive 2006/112/EC)</xsl:when>
      		<xsl:when test="$myparam='vatex-eu-143-1a'"><xsl:value-of select="$myparam"/> (Exempt based on article 143, section 1 (a) of Council Directive 2006/112/EC)</xsl:when>
      		<xsl:when test="$myparam='vatex-eu-143-1b'"><xsl:value-of select="$myparam"/> (Exempt based on article 143, section 1 (b) of Council Directive 2006/112/EC)</xsl:when>
      		<xsl:when test="$myparam='vatex-eu-143-1c'"><xsl:value-of select="$myparam"/> (Exempt based on article 143, section 1 (c) of Council Directive 2006/112/EC)</xsl:when>
      		<xsl:when test="$myparam='vatex-eu-143-1d'"><xsl:value-of select="$myparam"/> (Exempt based on article 143, section 1 (d) of Council Directive 2006/112/EC)</xsl:when>
      		<xsl:when test="$myparam='vatex-eu-143-1e'"><xsl:value-of select="$myparam"/> (Exempt based on article 143, section 1 (e) of Council Directive 2006/112/EC)</xsl:when>
      		<xsl:when test="$myparam='vatex-eu-143-1f'"><xsl:value-of select="$myparam"/> (Exempt based on article 143, section 1 (f) of Council Directive 2006/112/EC)</xsl:when>
      		<xsl:when test="$myparam='vatex-eu-143-1fa'"><xsl:value-of select="$myparam"/> (Exempt based on article 143, section 1 (fa) of Council Directive 2006/112/EC)</xsl:when>
      		<xsl:when test="$myparam='vatex-eu-143-1g'"><xsl:value-of select="$myparam"/> (Exempt based on article 143, section 1 (g) of Council Directive 2006/112/EC)</xsl:when>
      		<xsl:when test="$myparam='vatex-eu-143-1h'"><xsl:value-of select="$myparam"/> (Exempt based on article 143, section 1 (h) of Council Directive 2006/112/EC)</xsl:when>
      		<xsl:when test="$myparam='vatex-eu-143-1i'"><xsl:value-of select="$myparam"/> (Exempt based on article 143, section 1 (i) of Council Directive 2006/112/EC)</xsl:when>
      		<xsl:when test="$myparam='vatex-eu-143-1j'"><xsl:value-of select="$myparam"/> (Exempt based on article 143, section 1 (j) of Council Directive 2006/112/EC)</xsl:when>
      		<xsl:when test="$myparam='vatex-eu-143-1k'"><xsl:value-of select="$myparam"/> (Exempt based on article 143, section 1 (k) of Council Directive 2006/112/EC)</xsl:when>
      		<xsl:when test="$myparam='vatex-eu-143-1l'"><xsl:value-of select="$myparam"/> (Exempt based on article 143, section 1 (l) of Council Directive 2006/112/EC)</xsl:when>
      		<xsl:when test="$myparam='vatex-eu-148'"><xsl:value-of select="$myparam"/> (Exempt based on article 148 of Council Directive 2006/112/EC)</xsl:when>
      		<xsl:when test="$myparam='vatex-eu-148-a'"><xsl:value-of select="$myparam"/> (Exempt based on article 148, section (a) of Council Directive 2006/112/EC)</xsl:when>
      		<xsl:when test="$myparam='vatex-eu-148-b'"><xsl:value-of select="$myparam"/> (Exempt based on article 148, section (b) of Council Directive 2006/112/EC)</xsl:when>
      		<xsl:when test="$myparam='vatex-eu-148-c'"><xsl:value-of select="$myparam"/> (Exempt based on article 148, section (c) of Council Directive 2006/112/EC)</xsl:when>
      		<xsl:when test="$myparam='vatex-eu-148-d'"><xsl:value-of select="$myparam"/> (Exempt based on article 148, section (d) of Council Directive 2006/112/EC)</xsl:when>
      		<xsl:when test="$myparam='vatex-eu-148-e'"><xsl:value-of select="$myparam"/> (Exempt based on article 148, section (e) of Council Directive 2006/112/EC)</xsl:when>
      		<xsl:when test="$myparam='vatex-eu-148-f'"><xsl:value-of select="$myparam"/> (Exempt based on article 148, section (f) of Council Directive 2006/112/EC)</xsl:when>
      		<xsl:when test="$myparam='vatex-eu-148-g'"><xsl:value-of select="$myparam"/> (Exempt based on article 148, section (g) of Council Directive 2006/112/EC)</xsl:when>
      		<xsl:when test="$myparam='vatex-eu-151'"><xsl:value-of select="$myparam"/> (Exempt based on article 151 of Council Directive 2006/112/EC)</xsl:when>
      		<xsl:when test="$myparam='vatex-eu-151-1a'"><xsl:value-of select="$myparam"/> (Exempt based on article 151, section 1 (a) of Council Directive 2006/112/EC)</xsl:when>
      		<xsl:when test="$myparam='vatex-eu-151-1aa'"><xsl:value-of select="$myparam"/> (Exempt based on article 151, section 1 (aa) of Council Directive 2006/112/EC)</xsl:when>
      		<xsl:when test="$myparam='vatex-eu-151-1b'"><xsl:value-of select="$myparam"/> (Exempt based on article 151, section 1 (b) of Council Directive 2006/112/EC)</xsl:when>
      		<xsl:when test="$myparam='vatex-eu-151-1c'"><xsl:value-of select="$myparam"/> (Exempt based on article 151, section 1 (c) of Council Directive 2006/112/EC)</xsl:when>
      		<xsl:when test="$myparam='vatex-eu-151-1d'"><xsl:value-of select="$myparam"/> (Exempt based on article 151, section 1 (d) of Council Directive 2006/112/EC)</xsl:when>
      		<xsl:when test="$myparam='vatex-eu-151-1e'"><xsl:value-of select="$myparam"/> (Exempt based on article 151, section 1 (e) of Council Directive 2006/112/EC)</xsl:when>
      		<xsl:when test="$myparam='vatex-eu-309'"><xsl:value-of select="$myparam"/> (Exempt based on article 309 of Council Directive 2006/112/EC)</xsl:when>
      		<xsl:when test="$myparam='vatex-eu-ae'"><xsl:value-of select="$myparam"/> (Reverse charge)</xsl:when>
      		<xsl:when test="$myparam='vatex-eu-d'"><xsl:value-of select="$myparam"/> (Intra-Community acquisition from second hand means of transport)</xsl:when>
      		<xsl:when test="$myparam='vatex-eu-f'"><xsl:value-of select="$myparam"/> (Intra-Community acquisition of second hand goods)</xsl:when>
      		<xsl:when test="$myparam='vatex-eu-g'"><xsl:value-of select="$myparam"/> (Export outside the EU)</xsl:when>
      		<xsl:when test="$myparam='vatex-eu-i'"><xsl:value-of select="$myparam"/> (Intra-Community acquisition of works of art)</xsl:when>
      		<xsl:when test="$myparam='vatex-eu-ic'"><xsl:value-of select="$myparam"/> (Intra-Community supply)</xsl:when>
      		<xsl:when test="$myparam='vatex-eu-j'"><xsl:value-of select="$myparam"/> (Intra-Community acquisition of collectors items and antiques)</xsl:when>
      		<xsl:when test="$myparam='vatex-eu-o'"><xsl:value-of select="$myparam"/> (Not subject to VAT)</xsl:when>
   			<xsl:otherwise><xsl:value-of select="$myparam"/></xsl:otherwise>
		</xsl:choose>
	</xsl:template>

</xsl:stylesheet>