<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

 <xsl:output method="xml" indent="yes"/>
  
  <xsl:template match="node()">
    <xsl:copy>
      <xsl:apply-templates select="node()"/>
    </xsl:copy>
  </xsl:template>

  <xsl:template match="//museo">
    <museo>
       <xsl:attribute name="Ubicacion">
        <xsl:value-of select="@cidade" /> (<xsl:value-of select="@pais" />)
      </xsl:attribute>
      <xsl:value-of select="@nome"/>
    </museo>
  </xsl:template>
  
  

</xsl:stylesheet>
