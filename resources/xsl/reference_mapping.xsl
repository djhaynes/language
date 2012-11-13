<?xml version="1.0" encoding="UTF-8"?>
<!--
	****************************************************************************************
	Copyright (c) 2002-2011, The MITRE Corporation
	All rights reserved.
	
	Redistribution and use in source and binary forms, with or without modification, are
	permitted provided that the following conditions are met:
	
	* Redistributions of source code must retain the above copyright notice, this list
	of conditions and the following disclaimer.
	* Redistributions in binary form must reproduce the above copyright notice, this 
	list of conditions and the following disclaimer in the documentation and/or other
	materials provided with the distribution.
	* Neither the name of The MITRE Corporation nor the names of its contributors may be
	used to endorse or promote products derived from this software without specific 
	prior written permission.
	
	THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY 
	EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES
	OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT 
	SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
	SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT
	OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
	HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR
	TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
	EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
	
	****************************************************************************************
	
	This stylesheet has been designed to give a mapping between OVAL Definitions and a specific reference
	source.  The basic structure of the output is an XML document with a definition element for each OVAL
	Definition and any number of reference elements that hold the mapping.  For example:
	
	<oval_reference_map>
	    <definition id="">
	        <reference source="" ref_id="" ref_url="" />
	        <reference source="" ref_id="" ref_url="" />
	        <reference source="" ref_id="" ref_url="" />
	    </definition>
	    <definition id="" />
	    <definition id="" />
	</oval_reference_map>
-->
<xsl:stylesheet version="1.0" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output method="xml" indent="yes"/>
    <xsl:preserve-space elements="*"/>

    <!-- Input parameter defines the specific reference source to map between.  CVE is provided as the default. -->

    <xsl:param name="reference_source">CVE</xsl:param>

    <!-- This template matches the root element of an OVAL Definition document.  It will loop over each OVAL
    Definition found in this document that has a reference of the specified source.  -->

    <xsl:template match="oval:oval_definitions">
        <oval_reference_map>
            <xsl:for-each select="./oval:definitions/oval:definition[./oval:metadata/oval:reference/@source=$reference_source]">
                <xsl:sort select="@id" order="ascending"/>
                <definition>
                    <xsl:attribute name="id"><xsl:value-of select="@id"/></xsl:attribute>
                    <xsl:for-each select="./oval:metadata/oval:reference[@source=$reference_source]">
                        <reference>
                            <xsl:attribute name="source"><xsl:value-of select="$reference_source"/></xsl:attribute>
                            <xsl:attribute name="ref_id"><xsl:value-of select="@ref_id"/></xsl:attribute>
                            <xsl:attribute name="ref_url"><xsl:value-of select="@ref_url"/></xsl:attribute>
                        </reference>
                    </xsl:for-each>
                </definition>
            </xsl:for-each>
        </oval_reference_map>
    </xsl:template>

</xsl:stylesheet>
