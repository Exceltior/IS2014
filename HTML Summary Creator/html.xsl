<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema">

<xsl:template match="/">

  <html lang="en">
  <head>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <title>HTML Summary Creator - CNN</title>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="estilo.css"/>

    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>
    <div class="navbar navbar-default navbar-static-top" role="navigation">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">HTML Summary Creator</a>
        </div>
        <div class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            <li class="active"><a href="#">CNN</a></li>
          </ul>

        </div><!--/.nav-collapse -->
      </div>
    </div>

  
  <div class="container" id="noticias">

    <div class="row">
      <div class="col-sm-12">

      	<div class="btn-group" id="menu-sections" data-toggle="buttons" style="margin-bottom: 20px;"></div>

        <xsl:for-each select="news_list/article">
        
          <div class="noticia categoria_ciencia">
          	<xsl:attribute name="data-section"><xsl:value-of select="section"/></xsl:attribute>
            <div class="row">
              <div class="col-sm-3">
                <!-- style="background-image: url('http://placehold.it/202x176&text=Sem%20imagemdeshi')" -->
                <div class="img-rounded center-cropped">
                  <xsl:attribute name="style">
                      <xsl:value-of select="concat('background-image: url(',image,')')"/>                    
                  </xsl:attribute>
                </div>
              </div>
              <div class="col-sm-9">
                <h4 class="titulo"><xsl:value-of select="title"/></h4>
                <div class="meta">
                  <ul class="list-inline">
                    <li>
                      <span class="glyphicon glyphicon-book"></span>
                      <span class="jornal">
                        <xsl:value-of select="timestamp"/>
                      </span>
                    </li>
                    <li ><span class="glyphicon glyphicon-tag"></span> <span class="categoria"><xsl:attribute name="data-cat"><xsl:value-of select="section"/></xsl:attribute><xsl:value-of select="section"/></span></li>

                    <xsl:choose>
                       <xsl:when test="video">
                         <li ><span class="glyphicon glyphicon-facetime-video"></span> <span class="video"><xsl:attribute name="data-cat"><xsl:value-of select="video"/></xsl:attribute><a><xsl:attribute name="href"><xsl:value-of select="video"/></xsl:attribute>Video</a></span></li>
                       </xsl:when>
                       <xsl:otherwise>
                         
                       </xsl:otherwise>
                    </xsl:choose>
                    

                    <li ><span class="glyphicon glyphicon-globe"></span> <span class="url"><a><xsl:attribute name="href"><xsl:value-of select="url"/></xsl:attribute>Link</a></span></li>
                  </ul>
                </div>
                  <blockquote>
                    <p class="texto"><xsl:value-of select="substring(corpus, 0, 400)"/></p>
                  </blockquote>
              </div>
            </div>
          </div>

        </xsl:for-each>

      </div>

    </div>


  </div>


    <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    <script src="script.js"></script>
  </body>
</html>
</xsl:template>

</xsl:stylesheet>