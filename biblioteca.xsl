<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
 
 <xsl:template match="/">
	<html><head><link rel="stylesheet" type="text/css" href="biblioteca.css" /></head><h1>Viewport muy estrecho</h1>
    <body>
    <div class="libros"><xsl:apply-templates /></div>
    </body></html>
  </xsl:template>
  
  <xsl:template match="libro">
  	
    <div class="libro">
      <div class="fotos">
        <div class="foto">
          <img>
            <xsl:attribute name="src">
            <xsl:value-of select="foto"/>
            </xsl:attribute>
          </img>
        </div>
        <div class="sombra">
          <img>
            <xsl:attribute name="src">
            <xsl:value-of select="foto"/>
            </xsl:attribute>
          </img>
        </div>
      </div>
      <div class="texto">
  	    <p>
  	  	  <xsl:value-of select="autor"/>
  	    </p>
        <h2>
      	  <xsl:value-of select="titulo"/>
        </h2> 
	      <h3>
          <xsl:value-of select="sexo"/>
        </h3>
      </div>
    </div>
    
  </xsl:template>
   	  
  </xsl:stylesheet>