<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:param name="temporada" />
    <xsl:param name="equipo" />

    <xsl:template match="/">
        <table border="1">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Nombre</th>
                    <th>Nacimiento</th>
                    <th>Nacionalidad</th>
                    <th>Número de Camiseta</th>
                    <th>Posición</th>
                </tr>
            </thead>
            <tbody>
                <!-- Filtrar por temporada y equipo -->
                <xsl:for-each select="Temporadas/Temporada[Numero=$temporada]/Equipos/Equipo[Nombre=$equipo]/Jugadores/Jugador">
                    <tr>
                        <!-- <td><xsl:value-of select="IDju" /></td> -->
                        <td><xsl:value-of select="Imagen" /></td>
                        <td><xsl:value-of select="Nombre" /></td>
                        <td><xsl:value-of select="Edad" /></td>
                        <td><xsl:value-of select="Posicion" /></td>
                    </tr>
                </xsl:for-each>
            </tbody>
        </table>
    </xsl:template>
</xsl:stylesheet>
