<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0">
    
    <xsl:template match="teiHeader"/>

    <xsl:template match="title">
        <h1>
            <xsl:apply-templates/>
        </h1>
    </xsl:template>
    
    <xsl:template match="country[@key='JAP']">
        <span style="color:darkblue;">
            <xsl:apply-templates/>
        </span>
    </xsl:template>
    
    <xsl:template match="country[@key='GB']">
        <span style="color:darkgrey;">
            <xsl:apply-templates/>
        </span>
    </xsl:template>
    
    <xsl:template match="country[@key='CH']">
        <span style="color:red;">
            <xsl:apply-templates/>
        </span>
    </xsl:template>
    
    <xsl:template match="name">
        <span style="color:blue">
            <xsl:apply-templates/>
        </span>
    </xsl:template>
    
    <xsl:template match="p">
        <p>
            <xsl:apply-templates/>
        </p>
    </xsl:template>
    
    <xsl:template match="hi[@rend='gothic']">
        <b>
            <xsl:apply-templates/>
        </b>
    </xsl:template>
    
    <xsl:template match="hi[@rend='italic']">
        <i>
            <xsl:apply-templates/>
        </i>
    </xsl:template>
    
</xsl:stylesheet>