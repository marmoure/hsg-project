<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    
    <xsl:param name="target" select="'development'"/>
    
    <xsl:template match="@* | node()">
        <xsl:copy>
            <xsl:apply-templates select="@* | node()"/>
        </xsl:copy>
    </xsl:template>
    
    <xsl:template match="serializer">
        <xsl:comment>indent=no set for hsg</xsl:comment>
        <xsl:copy>
            <xsl:apply-templates select="@* except @indent"/>
            <xsl:attribute name="indent">no</xsl:attribute>
            <xsl:apply-templates select="node()"/>
        </xsl:copy>        
    </xsl:template>

</xsl:stylesheet>