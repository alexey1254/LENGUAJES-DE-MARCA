<?xml version="1.0" encoding="UTF-8"?>
<xsl:output method="xml"/>
<xsl:stylesheet>
    <xsl:template match="/">
        <countries>
            <xsl:for-each select="countries/country">
                <name><xsl:value-of select="@name"/></name>
                <population><xsl:value-of select="@population"/></population>
                <area><xsl:value-of select="@area"/></area>
                
            </xsl:for-each>
        </countries>
    </xsl:template>
</xsl:stylesheet>