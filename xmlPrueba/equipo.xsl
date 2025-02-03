<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:param name="estado" select="'En Curso'" />

    <xsl:output method="html" indent="yes" encoding="UTF-8" />

    <xsl:template match="/">
        <html>
            <head>
                <title>Equipos en Temporada</title>
            </head>
            <body>

                <xsl:variable name="temporadaIniciada" 
                    select="/Temporadas/Temporada[normalize-space(Estado)=$estado]" />

                <xsl:choose>
                    <xsl:when test="$temporadaIniciada">
                        <div>
                            <xsl:for-each select="$temporadaIniciada/Equipos/Equipo">
                                <div style="display: inline-block; margin: 10px; text-align: center;">
                                    <img src="img/{translate(translate(normalize-space(Nombre), ' ', '_'), 
                                         'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz')}/{normalize-space(Imagen)}" 
                                         alt="{normalize-space(Nombre)}"
                                         class="team-logo"
                                         width="70"
                                         height="70" />
                                    <p><xsl:value-of select="normalize-space(Nombre)"/></p>
                                </div>
                            </xsl:for-each>
                        </div>
                    </xsl:when>
                    <xsl:otherwise>
                        <p>No hay ninguna temporada en estado "<xsl:value-of select="$estado"/>" actualmente.</p>
                    </xsl:otherwise>
                </xsl:choose>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
