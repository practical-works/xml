<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" encoding="utf-8"/>
  <xsl:template match="/">
    <html>
      <head>
        <title>
          <xsl:value-of select="game/@name"/>
        </title>
        <style type="text/css">
          #box
          {
            background-color: #ADF;
          }
          #box:hover
          {
            background-color: #AD0;
          }
        </style>
      </head>
      <body style="font-family:'Courier New'; font-size:110%;">
        <xsl:for-each select="game/player[level &lt;= 100]">
          <xsl:sort select="level" order="descending" data-type="number"/>
          <xsl:choose>
            <xsl:when test="current()[level >= 100]">
              <div id="box" style="border:1px solid lime;  padding:10px; width:20%; display:inline-block; margin:20px; box-shadow:0px 0px 20px lime; cursor:pointer; overflow:auto">
                <span style="color:blue; font-weight:bolder; font-style:italic;">
                  #<xsl:value-of select="@id"/>
                </span>
                <br/>
                <span style="font-size:130%; font-weight:bold">
                  <xsl:value-of select="name"/>
                </span>
                <br/>
                <span>
                  LV.<xsl:value-of select="level"/>
                </span>
                <br/>
              </div>
            </xsl:when>
            <xsl:when test="current()[level &lt;= 10]">
              <div id="box" style="border:1px solid red;  padding:10px; width:20%; display:inline-block; margin:20px; box-shadow:0px 0px 20px red; cursor:pointer; overflow:auto">
                <span style="color:blue; font-weight:bolder; font-style:italic;">
                  #<xsl:value-of select="@id"/>
                </span>
                <br/>
                <span style="font-size:130%; font-weight:bold">
                  <xsl:value-of select="name"/>
                </span>
                <br/>
                <span>
                  LV.<xsl:value-of select="level"/>
                </span>
                <br/>
              </div>
            </xsl:when>
            <xsl:otherwise>
              <div id="box" style="border:1px solid black;  padding:10px; width:20%; display:inline-block; margin:20px; box-shadow:3px 3px 0px black; cursor:pointer; overflow:auto">
                <span style="color:blue; font-weight:bolder; font-style:italic;">
                  #<xsl:value-of select="@id"/>
                </span>
                <br/>
                <span style="font-size:130%; font-weight:bold">
                  <xsl:value-of select="name"/>
                </span>
                <br/>
                <span>
                  LV.<xsl:value-of select="level"/>
                </span>
                <br/>
              </div>
              </xsl:otherwise>
          </xsl:choose>
        </xsl:for-each>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>