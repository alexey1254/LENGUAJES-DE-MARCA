<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns="http://www.w3.org/1999/xhtml" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" />
    <xsl:template match="/">
        <html lang="es">
            <head>
                <meta charset="utf-8" />
                <title>Paises de habla alemana</title>
            </head>
            <body>
                <h2>Paises de habla alemana y alguna lengua mas</h2>
                <table border="1px">
                    <tr>
                        <th>Nombre</th>
                        <th>Numero lenguas</th>
                        <th>Numero habitantes</th>
                    </tr>
                    <tbody>
                        <xsl:for-each select="/countries/country[language='German'][count(language) &gt; 1]" >
                            <tr>
                                <td>
                                    <xsl:value-of select="@name"/>
                                </td>
                                <td>
                                    <xsl:value-of select="count(language)"/>
                                </td>
                                <td>
                                    <xsl:value-of select="@population * language[.='German']/@percentage div 100"/>
                                </td>
                            </tr>
                        </xsl:for-each>
                    </tbody>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
