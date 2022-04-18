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
                        <th>Densidad</th>
                        <th>Numero de Habitantes</th>
                        <th>Numero de Lenguas</th>
                    </tr>
                    <xsl:for-each select="//language[.='Spanish']">
                        <tr>
                        <td>
                            <xsl:value-of select="../@name"/>
                        </td>
                        </tr>
                    </xsl:for-each>
                    <xsl:for-each select="//language[.='Spanish']">
                        <tr>
                            <td>
                                <xsl:value-of select="/[(@population div @area)]"/>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>