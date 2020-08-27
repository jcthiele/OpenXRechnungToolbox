<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:fo="http://www.w3.org/1999/XSL/Format" 
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
	        xmlns:axf="http://www.antennahouse.com/names/XSL/Extensions"
	        xmlns:xr="urn:ce.eu:en16931:2017:xoev-de:kosit:standard:xrechnung-1"
	        xmlns:xs="http://www.w3.org/2001/XMLSchema"
	        xmlns:xrv="http://www.example.org/XRechnung-Viewer"
	        version="2.0">


  <!-- ==========================================================================
       == Imports
       =========================================================================== -->
  
  <xsl:import href="xr-mapping.xsl"/>
  <xsl:import href="xr-content.xsl"/>

  <xsl:import href="xr-pdf/lib/konstanten.xsl"/>
  <xsl:import href="xr-pdf/lib/structure/layout-master-set.xsl"/>
  <xsl:import href="xr-pdf/lib/structure/content-templates.xsl"/>
  <xsl:import href="xr-pdf/lib/structure/page-sequence.xsl"/>


  <xsl:output method="xml" version="1.0" encoding="utf-8" /> 

  <!-- FO engine used can be specified. Specific extensions will be then enabled. 
       Supported values are: 
            axf - Antenna House XSL Formatter
            fop - Apache FOP
       -->
  <xsl:param name="foengine"/>
  
  <xsl:param name="axf.extensions" select="if ($foengine eq 'axf') then true() else false()"/>
  <xsl:param name="fop.extensions" select="if ($foengine eq 'fop') then true() else false()"/>

  <!-- ==========================================================================
       == Grundaufbau
       =========================================================================== -->
  <xsl:template match="xr:invoice">
    <fo:root language="de">
      <xsl:call-template name="generiere-layout-master-set"/>
      <xsl:call-template name="generiere-page-sequence"/>
    </fo:root>
  </xsl:template>
  
  <xsl:template name="betragsUebersicht">
    <xsl:param name="betraege"/>
    <xsl:param name="gruende"/>
    <!-- TODO -->
  </xsl:template>
  
</xsl:stylesheet>
