<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  
  <xsl:template match="Bibliotheque">
    <html>
      <head>
        <title>Bibliothèque</title>
        <meta charset="utf-8" />
      </head>
      <body style="font-family:'Courier New'; font-size:200%;">
        <table>
          <xsl:for-each select="Livre">
            <tr>
              <td style="border:1px dotted black; padding: 0px 100px;">
                <b><xsl:value-of select="Titre"/></b>
                (<xsl:value-of select="@Genre"/>) by
                <i><xsl:value-of select="Auteur/Prenom"/>&#160; 
                <xsl:value-of select="Auteur/Nom"/></i>
              </td>
            </tr>
          </xsl:for-each>
          Nombre de livres : <xsl:value-of select="count(Livre)"/>
        </table>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>