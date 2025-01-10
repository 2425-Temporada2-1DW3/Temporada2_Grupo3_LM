<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" encoding="UTF-8" indent="yes"/>
  
  <xsl:template match="/">
    <html>
      <head>
        <title>Equipos por Temporada</title>
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
        <h1>Equipos por Temporada</h1>
        <table>
          <tr>
            <th>Temporada</th>
            <th>Equipo</th>
          </tr>
          <xsl:for-each select="Temporadas/Temporada">
            <xsl:variable name="temporada" select="Numero"/>
            <xsl:for-each select="Equipos/Equipo">
              <tr>
                <td><xsl:value-of select="$temporada"/></td>
                <td><xsl:value-of select="Nombre"/></td>
              </tr>
            </xsl:for-each>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
