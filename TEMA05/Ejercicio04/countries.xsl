<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns="http://www.w3.org/1999/xhtml" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" />
    <xsl:template match="/">
        <html>
            <span>
                
            </span>
            <body>
                <h2>Paises de habla española</h2>
                <table border="1px">
                    <tr>
                        <th>Nombre del Pais</th>
                        <th>Numero de Lenguas</th>
                        <th>Numero de Habitantes</th>
                        <th>Densidad</th>
                    </tr>
                    <tr>
                        <td>
                            <xsl:variable name="lengua" select="countries/country/language"/>
                            <xsl:if test="contains($lengua,'spanish')">
                                <xsl:for-each select="../country">
                                    <td>
                                        <xsl:value-of select="@name"/>
                                    </td>
                                </xsl:for-each>
                            </xsl:if>
                        </td>
                    </tr>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>