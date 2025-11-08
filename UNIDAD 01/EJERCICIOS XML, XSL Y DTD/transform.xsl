<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" doctype-public="XSLT-compat" omit-xml-declaration="yes" encoding="UTF-8" indent="yes" />
    <xsl:template match="/">
        <html>
            <head>
                <title>Lista de Productos</title>
                <style>
                    table {
                        width: 50%;
                        border-collapse: collapse;
                        text-align: center;
                        margin: 20px;
                    }
                    th, td {
                        border: 1px solid black;
                        padding: 8px;
                    }
                    th {
                        background-color: #f2f2f2;
                    }
                </style>
            </head>
            <body>
                <h2>Lista de Productos</h2>
                <table>
                    <tr>
                        <th>Nombre del Producto</th>
                        <th>Precio</th>
                        <th>Categoría</th>
                    </tr>
                    <xsl:for-each select="products/product">
                        <tr>
                            <td><xsl:value-of select="name"/></td>
                            <td><xsl:value-of select="price"/></td>
                            <td><xsl:value-of select="category"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>