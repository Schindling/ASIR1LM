<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:output method="xml" indent="yes"/>

  <xsl:template match="/">
    <paises>
      <xsl:apply-templates />
    </paises>
  </xsl:template>
  
<xsl:template match="museo">
  <pais>
    <xsl:attribute name="nombre">
      <xsl:value-of select="@pais"/>
    </xsl:attribute>
    <cidade>
      <xsl:attribute name="nome">
        <xsl:value-of select="@cidade"/>
      </xsl:attribute>
      <xsl:element name="museo">
        <xsl:attribute name="nome">
          <xsl:value-of select="@nome"/>
        </xsl:attribute>
      </xsl:element>
    </cidade>
  </pais>
</xsl:template>
  
</xsl:stylesheet>
