# Projet_Youtube_Replica_in_XML_XSL_HTML
[French] Projet Réplique de la page d'accueil Youtube via un fichier XML et XSL qui créeront un HTML    
[English] Project Replica of the Youtube home page via an XML and XSL file which will create an HTML  (First it will be the French README then the English README After)  

<div align="center">
  <img width="752" alt="image" src="https://github.com/D-TheProgrammer/Projet_Youtube_Replica_in_XML_XSL_HTML/assets/151149998/332cb307-ee2c-4d42-961a-27184d520c98">
</div>


## [PRESENTATION EN FRANCAIS]
Projet réalisé par D-TheProgrammer

Ce projet consiste à recréer une page d'accueil YouTube dans laquelle la barre latérale est déployée (ouverte) et un ensemble de vidéos est disponible. 

La barre latérale est interactive, avec un survol de la souris sur chaque onglet et les catégories redirigent vers les pages respectives de YouTube.

Les vidéos sont créées dynamiquement à partir des informations du XML que l'XSL convertira en ligne pour l'HTML, sont triés par ordre alphabétique et sont affichées en conséquence. Elles aussi renvoient aux vidéos en question.

Pour utiliser le programme il suffit de cliquer sur les vidéos , abonnements ou autre onglet présent sur la page qui est également Responsive.
Je précise également qu'il faut une connexion internet pour charger les differentes images

Ce dossier contient donc :
- le fichier .xml : `youtube_replica.xml`
- le fichier .xsl : `youtube_replica.xsl`
- le fichier HTML : `youtube_replica.html`
- le README que vous lisez

> [!NOTE]
> [lien pour lancer le jeu en **ligne** ] : 
> https://d-theprogrammer.github.io/Game-AirSoccer_in_Js-Html_with_AI/

> [!TIP]
> Ligne de commande pour creer la page HTML :  
> ```bash
> xsltproc youtube_replica.xml youtube_replica.xsl -o index.html
> ```

___

## [ENGLISH PRESENTATION]
Project made by D-TheProgrammer

This project involves recreating a YouTube homepage where the sidebar is expanded (open) and a set of videos is available.

The sidebar is interactive, with mouse-over on each tab and categories redirecting to respective YouTube pages.

Videos are created dynamically from the XML information which are going to be transformed by the XSL and converted into HTML later, are sorted alphabetically and are displayed accordingly. They also refer to the videos in question.

To use the program, simply click on the videos, subscriptions or other tab present on the page which is also Responsive.
I also specify that you need an internet connection to load the different images.

This file therefore contains:
- the .xml file: `youtube_replica.xml`
- the .xsl file: `youtube_replica.xsl`
- the HTML file: `youtube_replica.html`
- the README you are reading


> [!NOTE]
> [link to start the game **online** ] : 
> https://d-theprogrammer.github.io/Game-AirSoccer_in_Js-Html_with_AI/

> [!TIP]
> Command line to create the HTML page:
> ```bash
> xsltproc youtube_replica.xml youtube_replica.xsl -o index.html
> ```
