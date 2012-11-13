<?xml version="1.0"?>
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
    
    AUTHOR: Jasen Jacobsen, The Mitre Corporation 
    DATE: 24 Nov 2009 
    
    This stylesheet has been designed to generate a list of all the deprecated items within a OVAL schema
    definition file.
-->
<xsl:stylesheet 
    version="2.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5"
    xmlns:xsd="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xsl oval xsd"
    >
    
    <xsl:output method="html"/>

    <xsl:variable name="root_element_name" select="xsd:schema/xsd:element[position()=1]/@name"/>
    <xsl:variable name="oval-namespace_prefix">oval</xsl:variable>
    <xsl:variable name="oval-def_namespace_prefix">oval-def</xsl:variable>
    <xsl:variable name="oval-sc_namespace_prefix">oval-sc</xsl:variable>
    <xsl:variable name="oval-res_namespace_prefix">oval-res</xsl:variable>
    <xsl:variable name="oval-var_namespace_prefix">oval-var</xsl:variable>
    <xsl:variable name="input_filename">
        <xsl:variable name="tokens" select="tokenize(document-uri(/), '/')"/>
        <xsl:value-of select="$tokens[last()]"/>
    </xsl:variable>
    <xsl:variable name="oval-dictionary_url">
        <xsl:variable name="filename" select="substring-before($input_filename, '.xsd')"/>
<!--        <xsl:text>http://oval.mitre.org/language/download/schema/version5.6/ovaldefinition/documentation/</xsl:text><xsl:value-of select="$filename"/><xsl:text>.html</xsl:text> -->                        
            <xsl:text>../documentation/</xsl:text><xsl:value-of select="$filename"/><xsl:text>.html</xsl:text>                        
    </xsl:variable>
    
    <xsl:template match="xsd:schema">
        <xsl:choose>
            <xsl:when test="not(exists(.//oval:deprecated_info))">
            <xsl:message>No deprecated items in <xsl:value-of select="$input_filename"/></xsl:message>
            </xsl:when>
            <xsl:otherwise>
               <xsl:call-template name="generate_report"/> 
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <xsl:template name="generate_report">
        <html>
        <head>
            <title>OVAL <xsl:value-of select="xsd:annotation/xsd:appinfo/schema"/> Schema Deprecation Report</title>
            <style type="text/css">
                h1 { 
                    text-align: center;
                }
                
                hr.thick { 
                    height: 5px; width: 100%; color: #AAA; background-color: #AAA;
               }
                
                td {
                    vertical-align: top;
                }
                
                p.documentation {
                    text-align: justify;
                    margin: 1em 1em 1em 1em;
                }
                
                .deprecation_info {
                    background-color: #F9F9F9;
                    border: 2px solid #444;
                    padding: 5px;
                }  
                
                .smaller {
                    font-size: smaller;
                }
                
                .inset_table {
                    padding: 1em 2em 1em 2em; 
                }
            </style>
        </head>
        <body>
            
        <xsl:for-each select="xsd:annotation">
            <h1>- Open Vulnerability and Assessment Language -<br/>Deprecation Report</h1>
            <ul>
                <li>Schema: <xsl:value-of select="xsd:appinfo/schema"/></li>
                <li>Version: <xsl:value-of select="xsd:appinfo/version"/></li>
                <li>Release Date: <xsl:value-of select="xsd:appinfo/date"/></li>
            </ul>
<!-- The documentation is designed for the dictionary, not a deprecation report. It doesn't make
     much sense in a deprecation report.
            <xsl:for-each select="xsd:documentation">
                <p style="text-align: justify;"><xsl:value-of select="."/></p>
            </xsl:for-each>
-->            
        </xsl:for-each>
            
        <xsl:for-each select="xsd:element|xsd:complexType|xsd:simpleType|xsd:group|xsd:attributeGroup">
            <xsl:if test="exists(.//oval:deprecated_info)"> <!-- Does this "global" item have any deprecated children? -->
                
<!-- Don't go through all these gyrations to generate the double <hr/>s. 
     They are generated with the implicit knowledge that a grouping starts with an "_test" element.
     For deprecated items, the "_test" may not have anything deprecated, then we'd have to check
     if the current element was the first we'd seen of a new group, which could get complicated.
     
                 <xsl:if test="@name=$root_element_name or
                    
                    @name='GeneratorType' or
                    @name='CheckEnumeration' or
                    @name='DefinitionIDPattern' or
                    @name='EmptyStringType' or
                    
                    @name='DefinitionsType' or
                    @name='TestsType' or
                    @name='ObjectsType' or
                    @name='StatesType' or
                    @name='VariablesType' or
                    @name='ActionEnumeration' or
                    @name='EntityBaseType' or
                    
                    @name='SystemInfoType' or
                    @name='CollectedObjectsType' or
                    @name='SystemDataType' or
                    @name='FlagEnumeration' or
                    @name='EntityBaseType' or
                    
                    @name='DirectivesType' or
                    @name='ResultsType' or
                    @name='ContentEnumeration' or
                    
                    contains(@name, '_test') or
                    @name='EntityStateFamilyType' or
                    @name='EntityStateTrainIdentifierType' or
                    @name='EntityStateEndpointType' or
                    @name='EntityStateAddrTypeType' or
                    
                    contains(@name, '_item') or
                    @name='EntityItemFamilyType' or
                    @name='EntityItemTrainIdentifierType' or
                    @name='EntityItemEndpointType' or
                    @name='EntityItemAddrTypeType'
                    ">
                    <hr noshade="true" size="5" width="100%"/>
                    <hr noshade="true" size="5" width="100%"/>
                </xsl:if>
-->          
                <hr class="thick"/>
                    
                <xsl:choose>
                    <xsl:when test="name()='xsd:element'"><xsl:call-template name="global_element"/></xsl:when>
                    <xsl:when test="name()='xsd:complexType'"><xsl:call-template name="global_complex_type"/></xsl:when>
<!-- The following patterns do not exist in the windows-definitions-schema.xsd, nor did I find any deprecated items of this type in 
     any of the other schemas so they are untested. -->
                    <xsl:when test="name()='xsd:simpleType'"><xsl:call-template name="global_simple_type"/></xsl:when>                     
                    <xsl:when test="name()='xsd:group'"><xsl:call-template name="global_element_group"/></xsl:when> 
                    <xsl:when test="name()='xsd:attributeGroup'"><xsl:call-template name="global_attribute_group"/></xsl:when>
                </xsl:choose>
            </xsl:if> <!-- If deprecated -->
        </xsl:for-each>
            
        </body>
        </html>
    </xsl:template>
    
    <xsl:template name="global_simple_type">
        <!-- UNTESTED -->
        <h3>
            <a>
                <xsl:attribute name="name"><xsl:value-of select="@name"/></xsl:attribute>
            </a>
            <a>
                <xsl:attribute name="href"><xsl:value-of select="$oval-dictionary_url"/>#<xsl:value-of select="@name"/></xsl:attribute>
                <xsl:text>-- </xsl:text>
                <xsl:value-of select="@name"/>
                <xsl:text> --</xsl:text>
            </a>
        </h3>
        
        <xsl:call-template name="annotation"/>
        
        <xsl:if test="xsd:restriction/xsd:pattern">
            <xsl:call-template name="pattern"/>
        </xsl:if>
        <xsl:if test="xsd:restriction/xsd:enumeration">
            <xsl:call-template name="enumeration"/>
        </xsl:if>        
    </xsl:template>

    <xsl:template name="global_complex_type">	
        <h3>
            <a>
                <xsl:attribute name="name"><xsl:value-of select="@name"/></xsl:attribute>
            </a>
            <a>
                <xsl:attribute name="href"><xsl:value-of select="$oval-dictionary_url"/>#<xsl:value-of select="@name"/></xsl:attribute>
                <xsl:text>== </xsl:text>
                <xsl:value-of select="@name"/>
                <xsl:text> ==</xsl:text>
            </a>					
        </h3>
        
        <xsl:call-template name="annotation"/>
        
        <xsl:if test="xsd:attribute">
            <xsl:call-template name="attributes"/>
        </xsl:if>
        
        <xsl:if test="xsd:sequence/*//oval:deprecated_info|xsd:choice/*//oval:deprecated_info">
            <xsl:call-template name="children"/>
        </xsl:if>
        
        <xsl:if test="xsd:simpleContent">
            <xsl:call-template name="simpleContent"/>
        </xsl:if>
        
    </xsl:template>
    
    <xsl:template name="global_element">
        <h3>			
            <a>
                <xsl:attribute name="name"><xsl:value-of select="@name"/></xsl:attribute>
            </a>
            <a>
                <xsl:attribute name="href"><xsl:value-of select="$oval-dictionary_url"/>#<xsl:value-of select="@name"/></xsl:attribute>
                <xsl:text>&lt; </xsl:text>
                    <xsl:value-of select="@name"/>
                <xsl:text>  &gt;</xsl:text>
            </a>
        </h3>

        <xsl:call-template name="annotation"/>

<!-- QUESTION: This pattern does not exist in the windows-definitions-schema.xsd. Does it exist anywhere else? -->
        <xsl:if test="xsd:complexType/xsd:attribute">
            <xsl:call-template name="attributes"/> 
        </xsl:if>

        <xsl:choose>
<!-- this case caught by next case.
            <xsl:when test="xsd:complexType/xsd:complexContent/xsd:extension/xsd:sequence/xsd:choice/xsd:sequence//oval:deprecated_info"><xsl:call-template name="children"/></xsl:when> -->
            <xsl:when test="xsd:complexType/xsd:complexContent/xsd:extension/xsd:sequence//oval:deprecated_info"><xsl:call-template name="children"/></xsl:when>
            <xsl:when test="xsd:complexType/xsd:choice/xsd:sequence//oval:deprecated_info"><xsl:call-template name="children"/></xsl:when>
            <xsl:when test="xsd:complexType/xsd:sequence//oval:deprecated_info"><xsl:call-template name="children"/></xsl:when>
        </xsl:choose>
        <br/>
    </xsl:template>

    <xsl:template name="global_element_group">
        <!-- UNTESTED -->
        <h3>
            <a>
                <xsl:attribute name="name"><xsl:value-of select="@name"/></xsl:attribute>
            </a>
            <a>
                <xsl:attribute name="href"><xsl:value-of select="$oval-dictionary_url"/>#<xsl:value-of select="@name"/></xsl:attribute>                
                <xsl:text>-- </xsl:text><xsl:value-of select="@name"/><xsl:text> --</xsl:text>
            </a>    
        </h3>
        
        <xsl:call-template name="annotation"/>
        
        <xsl:if test="xsd:choice/*//oval:deprecated_info">
            <xsl:call-template name="children"/>
        </xsl:if>
    </xsl:template>

    <xsl:template name="global_attribute_group">
        <!-- UNTESTED -->
        <h3>
            <a>
                <xsl:attribute name="name"><xsl:value-of select="@name"/></xsl:attribute>
            </a>
            <a>
                <xsl:attribute name="href"><xsl:value-of select="$oval-dictionary_url"/>#<xsl:value-of select="@name"/></xsl:attribute>                
                <xsl:text>-- </xsl:text>
                <xsl:value-of select="@name"/>
                <xsl:text> --</xsl:text>
            </a>
        </h3>
        
        <xsl:call-template name="annotation"/>
        
        <xsl:if test="xsd:attribute">
            <xsl:call-template name="attributes"/>
        </xsl:if>
    </xsl:template>
    
    
    <xsl:template name="children">
        <div class="inset_table">
            <table style="background-color:#F9F9F9; table-layout:fixed;" border="1" cellpadding="5" cellspacing="0" width="88%">
                <tr style="background-color:#F0F0F0;">
                    <th>Child Elements</th>
                    <th>Deprecation Info</th>
                </tr>
                
                <xsl:for-each select="xsd:complexType/xsd:complexContent/xsd:extension/xsd:sequence/xsd:choice/xsd:sequence/*|
                    xsd:complexType/xsd:complexContent/xsd:extension/xsd:sequence/*|
                    xsd:complexType/xsd:choice/xsd:sequence/*|
                    xsd:complexType/xsd:sequence/*|
                    xsd:choice/*|
                    xsd:sequence/*">                    
                    <xsl:variable name="context" select="."/>
                    <xsl:if test="exists($context/xsd:annotation/xsd:appinfo/oval:deprecated_info)">
                        <!-- this child is deprecated -->
                        <xsl:choose>
                            <xsl:when test="@name|@ref[.!='oval-def:set']">
                                <xsl:call-template name="writeChildElmRow"/>
                            </xsl:when>
                            <xsl:when test="name()='xsd:choice' and name(../..)='xsd:choice'">						
                                <xsl:for-each select="$context/xsd:sequence/*">
                                    <xsl:call-template name="writeChildElmRow" />
                                </xsl:for-each>						
                            </xsl:when>
                        </xsl:choose>
                    </xsl:if>
                </xsl:for-each>                
            </table>
        </div>
    </xsl:template>
    
    <xsl:template name="writeChildElmRow">
        <tr>
            <td>
                <xsl:choose>
                    <xsl:when test="@ref">
                        <xsl:choose>
                            <!-- NOTE: This seems like a really bad way to build an <a>. -->
                            <xsl:when test="substring-before(@ref,':')=$oval-namespace_prefix">
                                <xsl:text disable-output-escaping="yes">&lt;a href="oval-common-schema.html#</xsl:text>
                                <xsl:value-of select="substring-after(@ref,':')"/>
                                <xsl:text disable-output-escaping="yes">"&gt;</xsl:text>
                                <xsl:value-of select="@ref"/>
                                <xsl:text disable-output-escaping="yes">&lt;/a&gt;</xsl:text>
                            </xsl:when>
                            <xsl:when test="substring-before(@ref,':')=$oval-def_namespace_prefix">
                                <xsl:text disable-output-escaping="yes">&lt;a href="oval-definitions-schema.html#</xsl:text>
                                <xsl:value-of select="substring-after(@ref,':')"/>
                                <xsl:text disable-output-escaping="yes">"&gt;</xsl:text>
                                <xsl:value-of select="@ref"/>
                                <xsl:text disable-output-escaping="yes">&lt;/a&gt;</xsl:text>
                            </xsl:when>
                            <xsl:when test="substring-before(@ref,':')=$oval-sc_namespace_prefix">
                                <xsl:text disable-output-escaping="yes">&lt;a href="oval-system-characteristics-schema.html#</xsl:text>
                                <xsl:value-of select="substring-after(@ref,':')"/>
                                <xsl:text disable-output-escaping="yes">"&gt;</xsl:text>
                                <xsl:value-of select="@ref"/>
                                <xsl:text disable-output-escaping="yes">&lt;/a&gt;</xsl:text>
                            </xsl:when>
                            <xsl:when test="substring-before(@ref,':')=$oval-res_namespace_prefix">
                                <xsl:text disable-output-escaping="yes">&lt;a href="oval-results-schema.html#</xsl:text>
                                <xsl:value-of select="substring-after(@ref,':')"/>
                                <xsl:text disable-output-escaping="yes">"&gt;</xsl:text>
                                <xsl:value-of select="@ref"/>
                                <xsl:text disable-output-escaping="yes">&lt;/a&gt;</xsl:text>
                            </xsl:when>
                            <xsl:when test="substring-before(@ref,':')=$oval-var_namespace_prefix">
                                <xsl:text disable-output-escaping="yes">&lt;a href="oval-variables-schema.html#</xsl:text>
                                <xsl:value-of select="substring-after(@ref,':')"/>
                                <xsl:text disable-output-escaping="yes">"&gt;</xsl:text>
                                <xsl:value-of select="@ref"/>
                                <xsl:text disable-output-escaping="yes">&lt;/a&gt;</xsl:text>
                            </xsl:when>
                            <xsl:when test="not(substring-before(@ref,':')='xsd')">
                                <xsl:text disable-output-escaping="yes">&lt;a href="#</xsl:text>
                                <xsl:value-of select="substring-after(@ref,':')"/>
                                <xsl:text disable-output-escaping="yes">"&gt;</xsl:text>
                                <xsl:value-of select="@ref"/>
                                <xsl:text disable-output-escaping="yes">&lt;/a&gt;</xsl:text>
                            </xsl:when>
                            <xsl:otherwise><xsl:value-of select="@ref"/></xsl:otherwise>
                        </xsl:choose>
                    </xsl:when>
                    <xsl:when test="@name"><xsl:value-of select="@name"/></xsl:when>
                    <xsl:when test="name()='xsd:any'">xsd:any</xsl:when>
                </xsl:choose>
                <xsl:for-each select="xsd:annotation/xsd:documentation">
                    <p class="documentation"><xsl:value-of select="."/></p>
                </xsl:for-each>
                
            </td>
            <td> <!-- Dep Info -->
                <xsl:for-each select="xsd:annotation/xsd:appinfo/oval:deprecated_info">
                    <xsl:call-template name="deprecation_info">
                        <xsl:with-param name="depInfo" select="."/>
                    </xsl:call-template>
                </xsl:for-each>
            </td>            
        </tr>
        
    </xsl:template>
            
    <xsl:template name="annotation">
        <xsl:for-each select="xsd:annotation">
            <xsl:for-each select="xsd:appinfo/oval:deprecated_info">
                <xsl:call-template name="deprecation_info">
                    <xsl:with-param name="depInfo" select="."/>
                </xsl:call-template>
            </xsl:for-each>
            <xsl:for-each select="xsd:documentation">
                <p class="documentation"><xsl:value-of select="."/></p>
            </xsl:for-each>
        </xsl:for-each>
    </xsl:template>
    
    <xsl:template name="attributes">
        <xsl:if test="./xsd:attribute/xsd:annotation/xsd:appinfo/oval:deprecated_info|
                      ./xsd:complexType/xsd:attribute/xsd:annotation/xsd:appinfo/oval:deprecated_info">
        <div class="inset_table">
            <table style="background-color:#FFFFFF;" border="0" cellpadding="0" cellspacing="0">
                <colgroup span="7">
                    <col width="30"/>
                    <col width="*"/>
                    <col width="30"/>
                    <col width="*"/>
                    <col width="30"/>
                    <col width="*"/>
                    <col width="*"/>
                </colgroup>
                <tr>
                    <th colspan="7" style="text-align: left">Attributes:</th>
                </tr>
                <tr>
                    <th colspan="7"><hr/></th>
                </tr>
                
                <xsl:for-each select="xsd:attribute|
                                      xsd:complexType/xsd:attribute">
                    <xsl:if test="./xsd:annotation/xsd:appinfo/oval:deprecated_info">
                    <tr>
                        <td align="center" width="30">-</td>
                        <td><xsl:value-of select="@name"/></td>
                        <td width="30"></td>
                        <td>
                            <xsl:choose>
                                <xsl:when test="not(@type)">n/a</xsl:when>
                                <!-- NOTE: Again, ugly way to create <a> tags -->
                                <xsl:when test="substring-before(@type,':')=$oval-namespace_prefix">                                    
                                    <xsl:text disable-output-escaping="yes">&lt;a href="oval-common-schema.html#</xsl:text>
                                    <xsl:value-of select="substring-after(@type,':')"/>
                                    <xsl:text disable-output-escaping="yes">"&gt;</xsl:text>
                                    <xsl:value-of select="@type"/>
                                    <xsl:text disable-output-escaping="yes">&lt;/a&gt;</xsl:text>
                                </xsl:when>
                                <xsl:when test="substring-before(@type,':')=$oval-def_namespace_prefix">
                                    <xsl:text disable-output-escaping="yes">&lt;a href="oval-definitions-schema.html#</xsl:text>
                                    <xsl:value-of select="substring-after(@type,':')"/>
                                    <xsl:text disable-output-escaping="yes">"&gt;</xsl:text>
                                    <xsl:value-of select="@type"/>
                                    <xsl:text disable-output-escaping="yes">&lt;/a&gt;</xsl:text>
                                </xsl:when>
                                <xsl:when test="substring-before(@type,':')=$oval-sc_namespace_prefix">
                                    <xsl:text disable-output-escaping="yes">&lt;a href="oval-system-characteristics-schema.html#</xsl:text>
                                    <xsl:value-of select="substring-after(@type,':')"/>
                                    <xsl:text disable-output-escaping="yes">"&gt;</xsl:text>
                                    <xsl:value-of select="@type"/>
                                    <xsl:text disable-output-escaping="yes">&lt;/a&gt;</xsl:text>
                                </xsl:when>
                                <xsl:when test="substring-before(@type,':')=$oval-res_namespace_prefix">
                                    <xsl:text disable-output-escaping="yes">&lt;a href="oval-results-schema.html#</xsl:text>
                                    <xsl:value-of select="substring-after(@type,':')"/>
                                    <xsl:text disable-output-escaping="yes">"&gt;</xsl:text>
                                    <xsl:value-of select="@type"/>
                                    <xsl:text disable-output-escaping="yes">&lt;/a&gt;</xsl:text>
                                </xsl:when>
                                <xsl:when test="substring-before(@type,':')=$oval-var_namespace_prefix">
                                    <xsl:text disable-output-escaping="yes">&lt;a href="oval-variables-schema.html#</xsl:text>
                                    <xsl:value-of select="substring-after(@type,':')"/>
                                    <xsl:text disable-output-escaping="yes">"&gt;</xsl:text>
                                    <xsl:value-of select="@type"/>
                                    <xsl:text disable-output-escaping="yes">&lt;/a&gt;</xsl:text>
                                </xsl:when>
                                <xsl:when test="not(substring-before(@type,':')='xsd')">
                                    <xsl:text disable-output-escaping="yes">&lt;a href="#</xsl:text>
                                    <xsl:value-of select="substring-after(@type,':')"/>
                                    <xsl:text disable-output-escaping="yes">"&gt;</xsl:text>
                                    <xsl:value-of select="@type"/>
                                    <xsl:text disable-output-escaping="yes">&lt;/a&gt;</xsl:text>
                                </xsl:when>
                                <xsl:otherwise><xsl:value-of select="@type"/></xsl:otherwise>
                            </xsl:choose>
                        </td>
                        <td width="30"></td>
                        <td><xsl:if test="@use"><span class="smaller">(<xsl:value-of select="@use"/><xsl:if test="@default"> -- default='<xsl:value-of select="@default"/>'</xsl:if>)</span></xsl:if></td>
                        <td><xsl:for-each select="xsd:annotation/xsd:appinfo/oval:deprecated_info">
                                <xsl:call-template name="deprecation_info">
                                    <xsl:with-param name="depInfo" select="."/>
                                </xsl:call-template>
                            </xsl:for-each>
                        </td>
                    </tr>
                    </xsl:if> <!-- If deprecation info for this attribute -->
                </xsl:for-each>
                
            </table>
        </div>
        </xsl:if>
    </xsl:template>
    
    <xsl:template name="simpleContent">
        
        <xsl:for-each select="xsd:simpleContent/xsd:extension">
            <xsl:call-template name="attributes"/>
        </xsl:for-each>
        
        <xsl:if test="xsd:simpleContent/xsd:extension/@base">
            <!-- Didn't find this pattern in the Window's schema -->
            <div class="inset_table">
                <table border="3" cellpadding="5" cellspacing="0" style="table-layout:fixed" width="88%">
                    <colgroup span="2">
                        <col width="200"/>
                        <col width="*"/>
                    </colgroup>
                    <tr style="background-color:#FAFAFA">
                        <td><strong>Simple Content</strong></td>
                        <td><xsl:value-of select="xsd:simpleContent/xsd:extension/@base"/></td>
                    </tr>
                </table>
            </div>
        </xsl:if>
        
        <xsl:if test="xsd:simpleContent/xsd:restriction/xsd:enumeration">
            <xsl:for-each select="xsd:simpleContent">
                <xsl:call-template name="enumeration"/>
            </xsl:for-each>
        </xsl:if>
    </xsl:template>
    
    <xsl:template name="pattern">
        <!-- NOTE: This template is untested. The windows-definitions-schema.xsd doesn't have any of these. -->
        <xsl:if test="xsd:restriction/xsd:pattern/xsd:annotation/xsd:appinfo/xsd:deprecated_info">
        <blockquote>
            <xsl:value-of select="xsd:restriction/xsd:pattern/@value"/>
        </blockquote>
            <xsl:for-each select="xsd:restriction/xsd:pattern/xsd:annotation/xsd:appinfo/xsd:deprecated_info">
            <xsl:call-template name="deprecation_info">
                <xsl:with-param name="depInfo" select="."></xsl:with-param>
            </xsl:call-template>
            </xsl:for-each>
        </xsl:if>
    </xsl:template>
    
    <xsl:template name="enumeration">
        <xsl:if test="xsd:restriction/xsd:enumeration/xsd:annotation/xsd:appinfo/oval:deprecated_info">
        <div class="inset_table">
            <table style="background-color:#F9F9F9; table-layout:fixed" border="1" cellpadding="5" cellspacing="0">
                <colgroup span="3">
                    <col width="250"/>
                    <col width="*"/>
                    <col width="*"/>
                </colgroup>
                <tr style="background-color:#F0F0F0;">
                    <th>Value</th>
                    <th>Description</th>
                    <th>Deprecation Info</th>
                </tr>
                
                <xsl:for-each select="xsd:restriction/xsd:enumeration">
                    <xsl:if test="./xsd:annotation/xsd:appinfo/oval:deprecated_info">
                    <tr>                        
                        <td>
                            <xsl:value-of select="@value"/>
                        </td>
                        <td>
                            <xsl:for-each select="xsd:annotation/xsd:documentation">
                                <p class="documentation">
                                    <xsl:value-of select="."/>
                                </p>
                            </xsl:for-each>
                        </td>
                        <td>
                            <xsl:for-each select="xsd:annotation/xsd:appinfo/oval:deprecated_info">
                                <xsl:call-template name="deprecation_info">
                                    <xsl:with-param name="depInfo" select="."/>
                                </xsl:call-template>
                            </xsl:for-each>                            
                        </td>
                    </tr>
                 </xsl:if>
                </xsl:for-each>                
            </table>
        </div>
        </xsl:if>            
    </xsl:template>
    
    <xsl:template name="deprecation_info">
        <xsl:param name="depInfo" required="yes" as="node()"/>        
        <div class="deprecation_info">
            <strong><xsl:text>Deprecated As Of Version: </xsl:text></strong><xsl:value-of select="$depInfo/oval:version"/><br/>
            <strong><xsl:text>Reason: </xsl:text></strong><xsl:value-of select="$depInfo/oval:reason"/><br/>
            <xsl:if test="$depInfo/oval:comment">
                <strong><xsl:text>Comment: </xsl:text></strong><xsl:value-of select="$depInfo/oval:comment"/><br/>
            </xsl:if>
        </div>        
    </xsl:template>
    
</xsl:stylesheet>