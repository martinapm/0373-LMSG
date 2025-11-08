<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" doctype-public="XSLT-compat" omit-xml-declaration="yes" encoding="UTF-8" indent="yes" />

    <xsl:template match="/">
        <html>
            <head>
                <title>Discos anteriores a 1979</title>
                <link rel="stylesheet" type="text/css" href="DISCOS.css"/>
            </head>
            <body>
                <h2>Discos anteriores a 1979</h2>
                <table>
                    <tr>
                        <th>Nombre</th>
                        <th>Grupo/Artista</th>
                        <th>Año</th>
                        <th>Discográfica</th>
                        <th>Formato</th>
                    </tr>
                    <!-- Filtro: Año anterior a 1979 -->
                    <xsl:for-each select="tienda/disco[año &lt; 1979]">
                        <tr>
                            <td><xsl:value-of select="nombre"/></td>
                            <td><xsl:value-of select="grupo"/></td>
                            <td><xsl:value-of select="año"/></td>
                            <td><xsl:value-of select="discografica"/></td>
                            <td><xsl:value-of select="formato"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>