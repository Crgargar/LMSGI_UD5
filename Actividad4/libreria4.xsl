<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
    <html>
    <body>
    <h1>Mi biblioteca personal de Cristian Garcia Garrido</h1>
        <table>
        <tr bgcolor="#FFFF00">
            <th>ISBN</th>
            <th>Titulo</th>
            <th>Autor</th>
            <th>Precio</th>
        </tr>
        <xsl:for-each select="libreria/libro">
        <tr>     
            <td><xsl:value-of select="isbn"/></td>
            <td><xsl:value-of select="titulo"/></td>
            <xsl:choose>
                <xsl:when test="autor!='lucas'">
                    <td bgcolor="">
                        <xsl:value-of select="autor"/>
                    </td>
                </xsl:when>
                <xsl:when test="autor='lucas'">
                    <td bgcolor="#0000ff">
                        <xsl:value-of select="autor"/>
                    </td>
                </xsl:when>
            </xsl:choose>
            <xsl:choose>
                <xsl:when test="precio &lt; 25">
                    <td bgcolor="FF0000">
                        <xsl:value-of select="precio"/>
                    </td>
                </xsl:when>
                <xsl:when test="precio &gt; 25">
                    <td bgcolor="00ff00">
                        <xsl:value-of select="precio"/>
                    </td>
                </xsl:when>     
            </xsl:choose>
        </tr>
        </xsl:for-each>
        </table>
    </body>
    </html>
</xsl:template>
</xsl:stylesheet>