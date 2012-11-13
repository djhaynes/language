<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xsd="http://www.w3.org/2001/XMLSchema" 
    xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5"
    version="2.0">
    <xd:doc xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl" scope="stylesheet">
        <xd:desc>
            <xd:p><xd:b>Created on:</xd:b> Aug 5, 2010</xd:p>
            <xd:p><xd:b>Author:</xd:b> jasenj1</xd:p>
            <xd:p>Add element mapping stubs to OVAL schema</xd:p>
        </xd:desc>
    </xd:doc>
    
    <xsl:output indent="yes" method="xml"/>
    <xsl:preserve-space elements="*"/>
    
    <xsl:template match="/xsd:schema">
        <xsl:copy>
            <xsl:copy-of select="@*"/> 
            <xsl:apply-templates select="node()" mode="copy"/>
        </xsl:copy>
    </xsl:template>
    
    <xsl:template match="node()" mode="copy">
        <xsl:copy-of select=". except .[local-name(.)='element' and ends-with(@name,'_test')]" />
        <xsl:if test="local-name(.)='element' and ends-with(@name,'_test')">
            <xsl:copy>
                <xsl:copy-of select="@*"/>
                <xsl:call-template name="test"/>
            </xsl:copy>
        </xsl:if>
    </xsl:template>
    
    <xsl:template name="test">
        <xsl:for-each select="node()">
            <xsl:choose>
                <!-- Assumption here that there is only one annotation. -->
                <xsl:when test="local-name(.)='annotation'">
                    <xsl:copy>
                        <xsl:copy-of select="@*"/>                        
                        <xsl:apply-templates select="."/>
                    </xsl:copy>                        
                </xsl:when>
                <xsl:otherwise>
                    <xsl:copy-of select="."/>
                </xsl:otherwise>
            </xsl:choose>            
        </xsl:for-each>
    </xsl:template>
    
    <xsl:template match="xsd:annotation">
        <xsl:variable name="appinfos" select="xsd:appinfo"/>
        <xsl:for-each select="*">
            <xsl:choose>
                <xsl:when test="(local-name(.)='appinfo')">
                        <xsl:if test=".=$appinfos[1]">
                            <!-- Insert the new block -->
                            <xsl:call-template name="element_map"/>
                        </xsl:if>
                        <xsl:copy-of select="."/>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:copy-of select="."/>
                </xsl:otherwise>
            </xsl:choose>            
        </xsl:for-each>        
    </xsl:template>
    
    <xsl:template name="element_map">
        <xsl:variable name="test_name">
            <xsl:value-of select="ancestor::xsd:element/@name"/>
        </xsl:variable>
        <xsl:variable name="prefix">
            <xsl:value-of select="substring-before($test_name, '_test')"/>
        </xsl:variable>
        <xsl:variable name="platform">
            <xsl:value-of select="substring-after(/xsd:schema/@targetNamespace, '#')"/>
        </xsl:variable>
        <xsd:appinfo>
            <oval:element_mapping>
                <oval:test><xsl:value-of select="$test_name"/></oval:test>
                <oval:object><xsl:value-of select="$prefix"/>_object</oval:object>
                <oval:state><xsl:value-of select="$prefix"/>_state</oval:state>
                <oval:item>
                    <xsl:attribute name="target_namespace">http://oval.mitre.org/XMLSchema/oval-system-characteristics-5#<xsl:value-of select="$platform"/></xsl:attribute>
                    <xsl:value-of select="$prefix"/>_item</oval:item>
            </oval:element_mapping>
        </xsd:appinfo>        
    </xsl:template>    
</xsl:stylesheet>
