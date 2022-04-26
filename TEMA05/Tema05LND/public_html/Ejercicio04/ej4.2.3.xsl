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
                    <xsl:param name="orden"/>
                    <tr>
                        <th>Nombre</th>
                        <th>Poblacion</th>
                        <th>% Resp. TIerra</th>
                    </tr>
                    <tbody>
                        <xsl:for-each select="/countries/country" >
                        <xsl:sort select="@population" data-type="number" order="{$orden}"/>
                        <xsl:if test="position() &lt;=10"></xsl:if>

                        </xsl:for-each>
                    </tbody>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
