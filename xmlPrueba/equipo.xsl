<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <!-- Parámetro que recibe el estado a buscar -->
    <xsl:param name="estado" select="'Iniciada'" />

    <xsl:output method="html" indent="yes" encoding="UTF-8" />

    <!-- Plantilla principal -->
    <xsl:template match="/">
                    <!-- Buscar la temporada con estado "Iniciada" -->
                    <xsl:variable name="temporadaIniciada" select="/Temporadas/Temporada[Estado=$estado]" />

                    <!-- Iterar sobre los equipos de esa temporada -->
                    <xsl:for-each select="$temporadaIniciada/Equipos/Equipo">
                        <img src="img/escudos/{Imagen}" alt="{Nombre}" class="team-logo" style="
                            width: 70px;
                            height: 70px;
                        "/>
                    </xsl:for-each>

                    <!-- Mostrar mensaje si no hay temporada iniciada -->
                    <xsl:if test="not($temporadaIniciada)">
                        <p>No hay ninguna temporada en estado 'Iniciada' actualmente.</p>
                    </xsl:if>
    </xsl:template>
</xsl:stylesheet>
