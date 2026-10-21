<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" encoding="utf-8" indent="yes" />
    <xsl:template match="/">
    <html lang="ru">
        <head>
            <meta charset="utf-8" />
            <title><xsl:value-of select="/main/@title" /></title>
            <link rel="stylesheet" href="/blog/blog.css" />
        </head>
        <body>
            <div class="bar">
                <font size="5"><h1><a href="/main.xml" style="color: #ffffff; text-decoration: none; font-family: Cacao-Extravagant;">
                        <xsl:choose>
                            <xsl:when test="/main/@type = 'games'">TrooperLand! Games</xsl:when>
                            <xsl:otherwise>TrooperLand!</xsl:otherwise>
                        </xsl:choose>
                </a></h1></font>
                <hr />
            </div>
            <p> <a href="javascript:history.back()"><img src="/assets/arrowleft.gif" height="35" alt="&lt; Back" /> </a></p>
            <p>
                <br />
            </p>
            <h1 align="center"><xsl:value-of select="/main/pinfo/@title" /></h1>
            <font size="5">
            <p />
            <div class="text-image">
                <xsl:apply-templates />
                <h3>Спасибо за чтение!</h3>
                </div>
                </font>
                <div class="date">
                <font size="4" color="#bababa"><p><xsl:value-of select="/main/pinfo/@date" /></p></font>
            </div>
        </body>
    </html>
    </xsl:template>
    <xsl:template match="pimg">
        <img src="{@src}" width="600" align="left" alt="Post image" />
    </xsl:template>
    <xsl:template match="text">
        <xsl:apply-templates />
    </xsl:template>
    <xsl:template match="p">
        <p>
        <xsl:apply-templates />
        </p>
    </xsl:template>
    <xsl:template match="ul">
        <div class="listed">
        <h2><xsl:value-of select="@text" /></h2>
        <ul>
        <xsl:apply-templates />
        </ul>
        </div>
    </xsl:template>
    <xsl:template match="li">
        <li>
        <xsl:apply-templates />
        </li>
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
    <xsl:template match="a">
        <a href="{@href}">
        <xsl:apply-templates />
        </a>
    </xsl:template>
    <xsl:template match="br">
        <xsl:apply-templates /><br />
    </xsl:template>
    <xsl:template match="hr">
        <hr />
    </xsl:template>
    <xsl:template match="h4">
        <h4>
            <xsl:apply-templates />
        </h4>
    </xsl:template>
    <xsl:template match="bmark">
        <xsl:apply-templates />
    </xsl:template>
    <xsl:template match="audio">
        <audio controls="{@controls}" src="{@src}">
        <xsl:apply-templates />
        </audio>
    </xsl:template>
    <xsl:template match="b">
        <b>
            <xsl:apply-templates />
        </b>
    </xsl:template>
</xsl:stylesheet>