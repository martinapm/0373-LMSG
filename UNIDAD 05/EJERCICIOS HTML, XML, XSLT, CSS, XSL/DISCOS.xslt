<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output method="html" doctype-public="XSLT-compat" omit-xml-declaration="yes" encoding="UTF-8" indent="yes" />

    <xsl:template match="/">
        <html>
            <head>
                <title>Listado de Discos</title>
                <link rel="stylesheet" type="text/css" href="DISCOS.CSS.CSS"/>
            </head>
            <body>
                <table>
                    <tr>
                        <th>Nombre</th>
                        <th>Grupo/Artista</th>
                        <th>Año</th>
                        <th>Discográfica</th>
                        <th>Formato</th>
                    </tr>
                    <xsl:for-each select="tienda/disco">
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
