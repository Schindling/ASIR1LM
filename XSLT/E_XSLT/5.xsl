<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <lugares>
      <xsl:apply-templates />
    </lugares>
  </xsl:template>


<xsl:template match="museo">
  <lugar>
    <xsl:attribute name="tipo">
      <xsl:text>museo</xsl:text>
    </xsl:attribute>
    <xsl:element name="ubicacion">
      <xsl:attribute name="nome">
        <xsl:text>cidade</xsl:text>
      </xsl:attribute>
      <xsl:value-of select="@cidade"/>
    </xsl:element>
    <xsl:element name="ubicacion">
      <xsl:attribute name="nome">
        <xsl:text>pais</xsl:text>
      </xsl:attribute>
      <xsl:value-of select="@pais"/>
    </xsl:element>
    <xsl:element name="nome">
      <xsl:value-of select="@nome"/>
    </xsl:element>
  </lugar>
</xsl:template>  
  
</xsl:stylesheet>
