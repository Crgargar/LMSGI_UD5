<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
        <html>
            <body>
                <h1>Mi biblioteca personal de Cristian Garcia</h1>
                <table border="1">
                    <tr bgcolor="#887788">
                        <th>Titulo_del_album</th>
                        <th>Artista</th>
                        <th>Sello_discografico</th>
                        <th>Año_publicacion</th>
                        <th>Titulo_cancion</th>
                    </tr>
                    <xsl:for-each select="CDs/CD">      
                        <xsl:variable name="Titulo_del_album">
                            <xsl:value-of select="Titulo_del_album"/>
                        </xsl:variable>
                        <xsl:variable name="Artista">
                            <xsl:value-of select="Artista"/>
                        </xsl:variable>
                        <xsl:variable name="Sello_discografico">
                            <xsl:value-of select="Sello_discografico"/>
                        </xsl:variable>
                        <xsl:variable name="Año_publicacion">
                            <xsl:value-of select="Año_publicacion"/>
                        </xsl:variable>
                        <xsl:for-each select="Titulo_cancion">
                            <xsl:if test="@tiempo &lt; 280">
                                <tr>                                    
                                    <td>
                                        <xsl:value-of select="$Titulo_del_album"/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="$Artista"/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="$Sello_discografico"/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="$Año_publicacion"/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="."/>
                                        <br/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="@tiempo"/>
                                    </td>
                                </tr>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>