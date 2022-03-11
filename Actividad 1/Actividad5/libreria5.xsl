<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
    <body>
        <h1>Mi biblioteca personal de Cristian Garcia Garrido</h1>
        <xsl:apply-templates/>
    </body>
</html>
</xsl:template>

<xsl:template match="libreria">
    <table>
        <tr bgcolor="#FFFF00">
            <th>Isbn</th>
            <th>Título</th>
            <th>Autor</th>
            <th>Precio</th>
            <th>num_Páginas</th>
        </tr>
    </table>
</xsl:template>

<xsl:template match="libro">
        <tr>
           <td><xsl:apply-templates select="Isbn"/></td>
           <xsl:apply-templates select="titulo"/>
           <xsl:apply-templates select="autor"/>
           <td><xsl:value-of select="precio"/></td>
            <xsl:choose>
                <xsl:when test="num_Paginas &gt; 150">
                    <xsl:apply-templates select="num_Paginas"/>
            </xsl:when>
            <xsl:otherwise>
                <td>
                    <xsl:value-of select = "num_Paginas"/>
                </td>  
               </xsl:otherwise>
            </xsl:choose>
         </tr>
    </xsl:template>
<xsl:template match="titulo">
        <td bgcolor="#0000ff"><xsl:value-of select="."/></td>
</xsl:template>
<xsl:template match="autor">
        <td bgcolor="#FF0000"><xsl:value-of select="."/></td>
</xsl:template>
<xsl:template match="num_Paginas">
            <td bgcolor="#00ff00">
                <xsl:value-of select="."/>
            </td>
</xsl:template>
</xsl:stylesheet>