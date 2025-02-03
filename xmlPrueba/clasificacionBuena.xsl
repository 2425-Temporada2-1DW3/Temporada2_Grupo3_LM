<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8" indent="yes" />

    <!-- Definir parámetro para la temporada seleccionada -->
    <xsl:param name="temporadaSeleccionada" select="'2025'" />

    <!-- Plantilla principal -->
    <xsl:template match="/">
        <html>
            <head>
                <!-- Vincular archivo CSS -->
                <link rel="stylesheet" type="text/css" href="../css/index.css" />
                <title>Clasificación de Temporada</title>
            </head>
            <body>
                <table class="tabla-clasificacion">
                    <thead>
                        <tr>
                            <th>Posición</th>
                            <th>Escudo</th>
                            <th>Nombre</th>
                            <th>Partidos Jugados</th>
                            <th>Puntos</th>
                        </tr>
                    </thead>
                    <tbody>
                        <!-- Seleccionar temporada elegida -->
                        <xsl:for-each select="Temporadas/Temporada">
                            <xsl:if test="Numero=$temporadaSeleccionada">
                                <!-- Iterar sobre equipos -->
                                <xsl:for-each select="Equipos/Equipo">
                                    <!-- Ordenar por puntos -->
                                    <xsl:sort 
                                        select="count(ancestor::Temporada/Jornadas/Jornada/Partidos/Partido[
                                            (EquipoLocal=current()/Nombre and GolesLocal &gt; GolesVisitante) or
                                            (EquipoVisitante=current()/Nombre and GolesVisitante &gt; GolesLocal)
                                        ]) * 3 +
                                        count(ancestor::Temporada/Jornadas/Jornada/Partidos/Partido[
                                            (EquipoLocal=current()/Nombre or EquipoVisitante=current()/Nombre) and 
                                            GolesLocal=GolesVisitante
                                        ])" 
                                        data-type="number" 
                                        order="descending" 
                                    />

                                    <!-- Crear una variable para la posición -->
                                    <xsl:variable name="posicion" select="position()" />

                                    <tr>
                                        <td>
                                            <!-- Mostrar la posición -->
                                            <xsl:value-of select="$posicion" />
                                        </td>
                                        <td>
                                            <!-- Extraer directamente el nombre de la imagen desde el XML -->
                                         <img src="img/{translate(translate(normalize-space(Nombre), ' ', '_'), 
'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 
'abcdefghijklmnopqrstuvwxyz')}/{normalize-space(Imagen)}" 
alt="{Nombre}" width="50" height="50" />

                                        </td>
                                        <td>
                                            <xsl:value-of select="Nombre" />
                                        </td>
                                        <td>
                                            <!-- Contar partidos jugados -->
                                            <xsl:variable name="partidosJugados">
                                                <xsl:value-of 
                                                    select="count(ancestor::Temporada/Jornadas/Jornada/Partidos/Partido[
                                                        EquipoLocal=current()/Nombre or 
                                                        EquipoVisitante=current()/Nombre
                                                    ])" 
                                                />
                                            </xsl:variable>
                                            <xsl:value-of select="$partidosJugados" />
                                        </td>
                                        <td>
                                            <!-- Calcular puntos -->
                                            <xsl:variable name="victorias">
                                                <xsl:value-of 
                                                    select="count(ancestor::Temporada/Jornadas/Jornada/Partidos/Partido[
                                                        (EquipoLocal=current()/Nombre and GolesLocal &gt; GolesVisitante) or
                                                        (EquipoVisitante=current()/Nombre and GolesVisitante &gt; GolesLocal)
                                                    ])" 
                                                />
                                            </xsl:variable>
                                            <xsl:variable name="empates">
                                                <xsl:value-of 
                                                    select="count(ancestor::Temporada/Jornadas/Jornada/Partidos/Partido[
                                                        (EquipoLocal=current()/Nombre or EquipoVisitante=current()/Nombre) and 
                                                        GolesLocal=GolesVisitante
                                                    ])" 
                                                />
                                            </xsl:variable>
                                            <xsl:value-of select="($victorias * 3) + $empates" />
                                        </td>
                                    </tr>
                                </xsl:for-each>
                            </xsl:if>
                        </xsl:for-each>
                    </tbody>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
