<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" indent="yes"/>

  <!-- Plantilla principal que envuelve todo el contenido en una estructura HTML -->
  <xsl:template match="/">
    <html>
      <head>
        <link rel="stylesheet" type="text/css" href="../css/index.css"/>
      </head>
      <body class="bodyClasificacion">
        <div class="tablaClasificacionXSL">
          <!-- Aquí está la tabla con los datos de los equipos -->
          <table>
            <thead>
              <tr>
                <th>Posición</th>
                <th>Escudo</th>
                <th>Nombre</th>
                <th>Puntos</th>
                <th>Partidos Jugados</th>
              </tr>
            </thead>
            <tbody>
              <xsl:for-each select="clasificacion/equipo">
                <tr>
                  <td><xsl:value-of select="posicion"/></td>
                  <td><img src="{escudo}" alt="Escudo de {nombre}"/></td>
                  <td><xsl:value-of select="nombre"/></td>
                  <td><xsl:value-of select="puntos"/></td>
                  <td><xsl:value-of select="partidosJugados"/></td>
                </tr>
              </xsl:for-each>
            </tbody>
          </table>
        </div>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
