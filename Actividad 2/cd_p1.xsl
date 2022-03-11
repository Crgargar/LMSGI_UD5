<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
    <html>
    <body>
    <h1>Mi biblioteca personal de Cristian Garcia</h1>
        <table>
        <tr bgcolor="#887788">
            <th>Titulo_del_album</th>
            <th>Artista</th>
            <th>Titulo_cancion</th>
            <th>Sello_discografico</th>
            <th>Año_publicacion</th>
        </tr>
        <xsl:for-each select="libreria/libro">
        <tr>
            <td><xsl:value-of select="titulo"/></td>
            <td><xsl:value-of select="autor"/></td>
        </tr>
        </xsl:for-each>   
    </table>    
    </body>    
    </html>
</xsl:template>
</xsl:stylesheet>