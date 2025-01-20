<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="html" encoding="UTF-8" indent="yes" />
  
  <!-- Template principal -->
  <xsl:template match="/">
    <table border="1">
      <thead>
        <tr>
          <th>ID</th>
          <th>Nombre</th>
          <th>Fecha de Nacimiento</th>
          <th>Nacionalidad</th>
          <th>Número de Camiseta</th>
          <th>Retirado</th>
          <th>Posición</th>
          <th>Imagen</th>
        </tr>
      </thead>
      <tbody>
        <!-- Iterar por cada jugador dentro de una temporada -->
        <xsl:for-each select="Temporadas/Temporada/Equipos/Equipo/Jugadores/Jugador">
          <tr>
            <td><xsl:value-of select="IDju" /></td>
            <td><xsl:value-of select="Nombre" /></td>
            <td><xsl:value-of select="Nacimiento" /></td>
            <td><xsl:value-of select="Nacionalidad" /></td>
            <td><xsl:value-of select="NumCamiseta" /></td>
            <td><xsl:value-of select="Retirado" /></td>
            <td><xsl:value-of select="Posicion" /></td>
            <td>
              <img>
                <xsl:attribute name="src">
                  <xsl:value-of select="Imagen" />
                </xsl:attribute>
                <xsl:attribute name="alt">
                  <xsl:value-of select="Nombre" />
                </xsl:attribute>
              </img>
            </td>
          </tr>
        </xsl:for-each>
      </tbody>
    </table>
  </xsl:template>
</xsl:stylesheet>
