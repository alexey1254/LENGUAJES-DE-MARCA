<?xml version="1.0" encoding="UTF-8"?>
<?xml version="1.0"  encoding ="UTF-8" ?>
<xsl:stylesheet version="1.0 " xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
   <xsl:template match="/">
   <xsl:variable name="maxDensidad" select="max(/countries/country(@population div @area))"/>
   <xsl:variable name="minDensidad" select="min(/countries/country(@population div @area))"/>
       <html>
           <meta charset="utf-8"/>
           <title>Paises con mayor y menor densidad</title>
           <body>
                <table>
                    <thead>
                        <tr>Paises</tr>
                        <tr>Densidad de poblacion</tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><xsl:value-of select="/countries/country[(@population div @area) = $maxDensidad]/@name"/></td>
                            <td><xsl:value-of select="$format-number(maxDensidad,'0.00')" /></td>
                        </tr>
                        <tr>
                            <td><xsl:value-of select="/countries/country[(@population div @area) = $minDensidad]/@name"/></td>
                            <td><xsl:value-of select="format-number($minDensidad,'0.00')" /></td>
                        </tr>
                    </tbody>
                </table>
           </body>
       </html>
   </xsl:template>
</xsl:stylesheet>