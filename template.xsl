<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" encoding="utf-8" indent="yes" />
    <xsl:template match="/">
        <html lang="ru">
            <head>
                <meta charset="utf-8" />
                <title><xsl:value-of select="/main/@title" /></title>
                <link rel="stylesheet" href="/style.css" />
            </head>
                <body>
                    <div class="bar">
                        <font size="5"><h1><a href="/main.xml" style="color: #ffffff; text-decoration: none; font-family: cacao-extravagant;">
                            <xsl:choose>
                                <xsl:when test="/main/@type = 'games'">TrooperLand! Games</xsl:when>
                                <xsl:otherwise>TrooperLand!</xsl:otherwise>
                            </xsl:choose>
                            </a></h1></font>
                        <img src="/assets/bouncycacodemon.gif" alt="Cacodemon" />
                        <h2>website for TRUEpers</h2>
                        <hr />
                    </div>
                    <div class="block">
                        <xsl:apply-templates />
                    </div>
                    <div class="email">
                      <p align="center">dmstrooper@disroot.org </p>
                    </div>
                </body>
        </html> 
    </xsl:template>
    <xsl:template match="section">
        <xsl:apply-templates />
        <hr />
    </xsl:template>
    <xsl:template match="title">
        <h1 align="center">
        <xsl:apply-templates />
        </h1>
        <hr />
    </xsl:template>
    <xsl:template match="p">
        <p>
        <xsl:apply-templates />
        </p>
    </xsl:template>
    <xsl:template match="br">
        <xsl:apply-templates /><br />
    </xsl:template>
    <xsl:template match="mtitle">
        <h2 align="center">
        <xsl:apply-templates />
        </h2>
    </xsl:template>
    <xsl:template match="tw">
        <h3 align="center">
        <xsl:apply-templates />
        </h3>
    </xsl:template>
    <xsl:template match="a">
        <a href="{@href}">
        <xsl:apply-templates />
        </a>
    </xsl:template>
    <xsl:template match="skip">
        <p> </p>
        <p> </p>
    </xsl:template>
    <xsl:template match="sk">
        <p> </p>
    </xsl:template>
    <xsl:template match="an">
        <h3>
        <xsl:apply-templates />
        </h3>
    </xsl:template>
    <xsl:template match="sectione">
        <xsl:apply-templates />
    </xsl:template>
    <xsl:template match="b">
        <a href="{@href}">
        <img src="{@img}" style="width: 109px;" />
        </a>
    </xsl:template>
    <xsl:template match="back">
        <p> <a href="javascript:history.back()"><img src="/assets/arrowleft.gif" height="35" alt="&lt; Back" /> </a></p>
    <p>
       <br />
    </p>
    </xsl:template>
    <xsl:template match="ul">
        <ul>
        <xsl:apply-templates />
        </ul>
    </xsl:template>
    <xsl:template match="li">
        <li>
        <xsl:apply-templates />
        </li>
    </xsl:template>
    <xsl:template match="im">
        <img src="{@src}" alt="{@alt}">
        <xsl:apply-templates />
        </img>
    </xsl:template>
    <xsl:template match="post">
        <p>
            <a href="{@href}"><xsl:value-of select="@title" /></a> (<xsl:value-of select="@date" />) <xsl:value-of select="@data" />
        </p>
    </xsl:template>
    <xsl:template match="html">
        <xsl:apply-templates />
    </xsl:template>
    <xsl:template match="pa">
        <p><a href="{@href}">
        <xsl:apply-templates />
        </a></p>
        </xsl:template>
    <xsl:template match="det">
        <details>
        <xsl:apply-templates />
        </details>
    </xsl:template>
    <xsl:template match="sum">
        <summary>
        <xsl:apply-templates />
        </summary>
    </xsl:template>
    <xsl:template match="pcode">
        <pre>
        <code>
        <p>
        <xsl:apply-templates />
        </p>
        </code>
        </pre>
    </xsl:template>
    <xsl:template match="nothing">
        <h2 align="center">Сдесь ничего нет</h2>
        <img src="/assets/bored.gif" style="display: block; margin-left: auto; margin-right: auto; width: 25%;" alt="bored" />
    </xsl:template>
    <xsl:template match="notfond">
        <h1 align="center">Page Not Found</h1>
        <p align="center">The requested page was not found.</p>
        <audio autoplay="true" loop="true" src="/assets/media/audio/lugaru-ost/Barr_Edgen.mp3"></audio>
        <img src="/assets/confused.gif" style="display: block; margin-left: auto; margin-right: auto;" alt="confuse" />
    </xsl:template>
</xsl:stylesheet>