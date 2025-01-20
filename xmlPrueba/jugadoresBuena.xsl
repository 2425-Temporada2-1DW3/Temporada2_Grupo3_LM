<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8" indent="yes" />

    <!-- Plantilla principal -->
    <xsl:template match="/">
        <html>
            <head>
                <title>Jugadores por Temporada y Equipo</title>
                <style>
                    table {
                        border-collapse: collapse;
                        width: 100%;
                    }
                    th, td {
                        border: 1px solid black;
                        padding: 8px;
                        text-align: left;
                    }
                    th {
                        background-color: #f2f2f2;
                    }
                </style>
            </head>
            <body>
                
                <!-- Formulario para seleccionar temporada -->
                <form id="filterForm">
                    <label for="temporada">Selecciona una Temporada:</label>
                    <select name="temporada" id="temporada" onchange="document.getElementById('filterForm').submit();">
                        <option value="">-- Selecciona --</option>
                        <xsl:for-each select="Temporadas/Temporada">
                            <option value="{Numero}">
                                Temporada <xsl:value-of select="Numero" />
                            </option>
                        </xsl:for-each>
                    </select>

                    <!-- Formulario para seleccionar equipo -->
                    <label for="equipo">Selecciona un Equipo:</label>
                    <select name="equipo" id="equipo" onchange="document.getElementById('filterForm').submit();">
                        <option value="">-- Selecciona --</option>
                        <xsl:for-each select="Temporadas/Temporada/Equipos/Equipo">
                            <option value="{Nombre}">
                                <xsl:value-of select="Nombre" />
                            </option>
                        </xsl:for-each>
                    </select>
                </form>

                <!-- Tabla de jugadores -->
                <table>
                    <thead>
                        <tr>
                            <th>Foto</th>
                            <th>Nombre</th>
                            <th>Fecha de Nacimiento</th>
                            <th>Nacionalidad</th>
                        </tr>
                    </thead>
                    <tbody>
                        <xsl:for-each select="Temporadas/Temporada[Numero=current()/@temporada]/Equipos/Equipo[Nombre=current()/@equipo]/Jugadores/Jugador">
                            <tr>
                                <td>
                                    <img src="{Imagen}" alt="{Nombre}" width="50" height="50" />
                                </td>
                                <td>
                                    <xsl:value-of select="Nombre" />
                                </td>
                                <td>
                                    <xsl:value-of select="Nacimiento" />
                                </td>
                                <td>
                                    <xsl:value-of select="Nacionalidad" />
                                </td>
                            </tr>
                        </xsl:for-each>
                    </tbody>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
