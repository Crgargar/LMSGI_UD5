<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
    <html>
    <body>
    <h1>Mi biblioteca personal de Cristian Garcia</h1>
        <table boder="1">
        <tr bgcolor="#887788">
            <th>Titulo_del_album</th>
            <th>Artista</th>
            <th>Sello_discografico</th>
            <th>Año_publicacion</th>
            <th>Titulo_cancion</th>
        </tr>
        <xsl:for-each select="CDs/CD">
        <tr>
            <td>
                <xsl:value-of select="Titulo_del_album"/>
            </td>
            <td>
                <xsl:value-of select="Artista"/>
            </td>
            <td>
                <xsl:value-of select="Sello_discografico"/>
            </td>
            <td>
                <xsl:value-of select="Año_publicacion"/>
            </td>
            <td>
            <xsl:for-each select="Titulo_cancion">
            <xsl:if test="@tiempo &lt; 110">    
            <xsl:value-of select="."/>
            </xsl:if>
            </xsl:for-each>
            </td>
        </tr>
        </xsl:for-each>   
        </table>    
    </body>    
    </html>
</xsl:template>
</xsl:stylesheet>