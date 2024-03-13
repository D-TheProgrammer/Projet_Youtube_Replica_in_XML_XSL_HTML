<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" omit-xml-declaration="yes" indent="yes"/>
  
  <xsl:template match="/Youtube">
    <html>
      <head>
        <style>
          body{
            font-family: 'Roboto', sans-serif;
          }
          .s_video {
            display: inline-block;
            width: 350px;
            <!--border: 1px solid #ccc;-->
            padding: 10px;
            margin: 10px;
          }
          .s_miniature {
            width: 350px;
            height: 200px;
            border-radius: 15px;
          }
          .s_titre {
            font-family: 'Roboto', sans-serif;
            padding: 10px;
            font-weight: bold;
          }
          .s_vues {
            color: #888;
            font-size: 75%;
          }
          .s_PP_chaine{
            padding: 0px;
            margin: 10px 0px 0px 10px;
            border-radius: 50%;
            width: 45px;
            height: 45px;
          }
          .s_nomDeChaine{
            color: #888;
            padding: 3px 0px 3px 0px;
            font-size: 75%;
          }
          .s_duree{
            position: absolute; 
            bottom: 0;
            right: 0; 
            background-color: black; 
            color: white;
            padding: 3px;
            margin:4px;
            font-size: 75%;
            border-radius: 5px;
          }

          .s_barreLatterale{
            width: 200px; 
            float: left; 
            font-size: 90%;
          }
          .s_iconeCategorie{
            width:20px;
            height:20px;
            padding: 0px 0px 0px 15px;
          }
          .s_nomCategorie{
            padding: 0px 0px 0px 15px;
          }
          .s_PP_chaine_lateral{
        
            padding: 0;   
            margin: 0px 0px 0px 15px;
            border-radius: 50px;
            width: 25px;
            height: 25px;
            display: inline-block;
          }

          
          .s_separateur {
            width: 200px; 
            border-bottom: 1px solid #ccc;
            margin: 10px 0;
          }

          .s_conteneurVideo {
            display: flex; /* Utiliser la mise en page flexbox */
            align-items: flex-start; /* Aligner les éléments en haut */
            flex-wrap: wrap; 
          }
          .s_conteneurBarreLaterale{
            display: flex;
            flex-direction: column;
            align-items: left;
            <!--border-right: 1px solid #ccc;-->
          }
          
          .s_barreLatterale:hover {
            background-color: #eee;
            height:40px;
            border-radius: 8px;
          }

          a {
            color: inherit; 
            text-decoration: none; 
          }

        </style>
      </head>
      <body>

        <div style="display: flex;">
          <div class="s_conteneurBarreLaterale">
            <xsl:apply-templates select="barreLatterale/*"/>
          </div>

          <div class="s_conteneurVideo">
            <xsl:apply-templates select="Video">
              <xsl:sort select="titre"/>
            </xsl:apply-templates>
          </div>
        </div>
      </body>
    </html>
  </xsl:template>





  <xsl:template match="barreLatterale/partie">
    <xsl:for-each select="elementPartie | elementPartieVous | elementPartieAbonnement | elementPartieExplorer">
      <xsl:variable name="lien" select="lien" />
      
      <xsl:if test="position() = 1">
        <h4  class="s_iconeCategorie" ><xsl:value-of select="../@type"/></h4>
      </xsl:if>

      <a href="{$lien}">
        <div class="s_barreLatterale">
          <!-- Si la balise iconeChaine existe on affiche une icone avec le bon style sinon on l'affiche pas -->
          <xsl:if test="iconeChaine">
            <img class="s_PP_chaine_lateral" src="{iconeChaine}" />
          </xsl:if>
          
          <xsl:if test="iconeCategorie">
            <img class="s_iconeCategorie" src="{iconeCategorie}"/>
          </xsl:if>
          
          <span class="s_nomCategorie">
            <xsl:value-of select="nomCategorie"/>
          </span>
        </div>
      </a>
    
      <br style="clear:both;"/>

      <xsl:if test="position() = last()">
        <hr class="s_separateur"/>
      </xsl:if>
      
    </xsl:for-each>
  </xsl:template>



  
    <xsl:template match="Video">
      <xsl:variable name="lien" select="lien" />

      <a href="{$lien}">
      <div class="s_video">
        <div style="position: relative;">
              <img class="s_miniature" src="{miniature}" />
              
              <div class="s_duree">
                  <xsl:value-of select="duree"/>
              </div>
          </div>
        <div style="display: flex;">
          <img class="s_PP_chaine" src="{PP_chaine}" />
        
          <div class="s_titre">
            <xsl:value-of select="titre"/>
            
            <div class="s_nomDeChaine">
              <xsl:value-of select="nomDeChaine"/>
            </div>
            <div style="display: flex;" class="s_vues">
              <xsl:value-of select="description/vues"/>
              <p style="font-weight: bold; margin: 0; padding:0; font-size: 22px;"> . </p>
              <xsl:value-of select="description/datePoste"/>
            </div>
          </div>
        </div>
      </div>
      </a>
    </xsl:template>
  
</xsl:stylesheet>
