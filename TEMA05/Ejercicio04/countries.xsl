<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns="http://www.w3.org/1999/xhtml" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" />
    <xsl:template match="/">
        <html>
            <style></style>
            <body>
                <h2>Paises</h2>
                <table border="1">
                    <tr>
                        <th>Nombre del Pais</th>
                        <th>Poblacion</th>
                        <th>Area</th>
                        <th>Lenguas</th>
                    </tr>
                    <xsl:for-each select="countries/country">
                        <tr>
                            <td>
                                <xsl:value-of select="@name" />
                            </td>
                            <td>
                                <xsl:value-of select="@population" />
                            </td>
                            <td>
                                <xsl:value-of select="@area" />
                            </td>
                            <td></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>