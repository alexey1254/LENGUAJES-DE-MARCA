<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns="http://www.w3.org/1999/xhtml" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" />
    <xsl:template match="/">
        <html lang="es">
            <head>
                <meta charset="utf-8" />
                <title>Paises de habla hispana</title>
            </head>
            <body>
                <h2>Paises de habla hispana</h2>
                <table border="1px">
                    <thead>
                        <tr>
                            <th>Pais</th>
                            <th>Ciudad</th>
                            <th>Población</th>
                        </tr>
                    </thead>
                    <tbody>
                        <xsl:for-each select="countries/country[language='Spanish']" />
                            <xsl:sort select="@population" data-type="number" order="descending"/>
                            <tr>
                                <td>
                                    <xsl:value-of select="position()"/> <!-- Devuelve la posicion del nodo actual-->
                                </td>
                                <td>
                                    <xsl:value-of select="@name" />
                                </td>
                                <td>
                                    <xsl:for-each select="city">
                                        <xsl:choose>
                                            <xsl:when test="position() = 1">
                                                <td>
                                                    <xsl:value-of select="name"/>
                                                </td>
                                                <td>
                                                    <xsl:value-of select="population"/>
                                                </td>
                                                <xsl:otherwise>
                                                    <td></td>
                                                    <td></td>
                                                    <td>
                                                        <xsl:value-of select="name"/>
                                                    </td>
                                                    <td>
                                                        <xsl:value-of select="population"/>
                                                    </td>
                                                </xsl:otherwise>
                                            </xsl:when>
                                        </xsl:choose>
                                    </xsl:for-each>
                                    <tr>
                                        <td></td>
                                        <td colspan="2">Total poblacion Ciudades:</td>
                                        <td><xsl:value-of select="sum(/countries/country[language='Spanish']/city/population"/></td>
                                    </tr>
                                </td>
                            </tr>
                        </xsl:for-each>
                    </tbody>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>