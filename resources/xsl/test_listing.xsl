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
-->
<!--
	This stylesheet was originally developed by The MITRE Corporation.
	It has been designed to generate a list of all current tests found in
	OVAL. It is maintained by The Mitre Corporation and developed
	for use by the public OVAL Community.  For more information,
	including how to get involved in the project, please visit the
	OVAL website at http://oval.mitre.org.
-->
<xsl:stylesheet version="2.0" 
      xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5"
      xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
      xmlns:xsd="http://www.w3.org/2001/XMLSchema">

      <xsl:output method="html"/>

      <!--
            Retrieve the input parameters for this stylesheet.  These should be the names of the
            OVAL definition files that are being checked.
      -->

      <xsl:param name="aix-definitions-schema">../aix-definitions-schema.xsd</xsl:param>
      <xsl:param name="apache-definitions-schema">../apache-definitions-schema.xsd</xsl:param>
      <xsl:param name="catos-definitions-schema">../catos-definitions-schema.xsd</xsl:param>
      <xsl:param name="esx-definitions-schema">../esx-definitions-schema.xsd</xsl:param>
      <xsl:param name="freebsd-definitions-schema">../freebsd-definitions-schema.xsd</xsl:param>
      <xsl:param name="hpux-definitions-schema">../hpux-definitions-schema.xsd</xsl:param>
      <xsl:param name="independent-definitions-schema">../independent-definitions-schema.xsd</xsl:param>
      <xsl:param name="ios-definitions-schema">../ios-definitions-schema.xsd</xsl:param>
      <xsl:param name="linux-definitions-schema">../linux-definitions-schema.xsd</xsl:param>
      <xsl:param name="macos-definitions-schema">../macos-definitions-schema.xsd</xsl:param>
      <xsl:param name="pixos-definitions-schema">../pixos-definitions-schema.xsd</xsl:param>
      <xsl:param name="sharepoint-definitions-schema">../sharepoint-definitions-schema.xsd</xsl:param> 
      <xsl:param name="solaris-definitions-schema">../solaris-definitions-schema.xsd</xsl:param>
      <xsl:param name="unix-definitions-schema">../unix-definitions-schema.xsd</xsl:param>
      <xsl:param name="windows-definitions-schema">../windows-definitions-schema.xsd</xsl:param>

      <!-- 
            Open the XCCDF and OVAL files into an xsl variable.  This should help speed things up
            as the documents won't have to be constantly opened and parsed.
      -->

      <xsl:variable name="system_info">
            <system_info>
                  <system_name>AIX</system_name>
                  <schema_filename><xsl:value-of select="$aix-definitions-schema"/></schema_filename>
            </system_info>      
            <system_info>
                  <system_name>Apache</system_name>
                  <schema_filename><xsl:value-of select="$apache-definitions-schema"/></schema_filename>
            </system_info>      
            <system_info>
                  <system_name>CatOS</system_name>
                  <schema_filename><xsl:value-of select="$catos-definitions-schema"/></schema_filename>
            </system_info>      
            <system_info>
                  <system_name>ESX</system_name>
                  <schema_filename><xsl:value-of select="$esx-definitions-schema"/></schema_filename>
            </system_info>      
            <system_info>
                  <system_name>FreeBSD</system_name>
                  <schema_filename><xsl:value-of select="$freebsd-definitions-schema"/></schema_filename>
            </system_info>      
            <system_info>
                  <system_name>HP-UX</system_name>
                  <schema_filename><xsl:value-of select="$hpux-definitions-schema"/></schema_filename>
            </system_info>      
            <system_info>
                  <system_name>Independent</system_name>
                  <schema_filename><xsl:value-of select="$independent-definitions-schema"/></schema_filename>
            </system_info>      
            <system_info>
                  <system_name>IOS</system_name>
                  <schema_filename><xsl:value-of select="$ios-definitions-schema"/></schema_filename>
            </system_info>      
            <system_info>
                  <system_name>LINUX</system_name>
                  <schema_filename><xsl:value-of select="$linux-definitions-schema"/></schema_filename>
            </system_info>      
            <system_info>
                  <system_name>MacOS</system_name>
                  <schema_filename><xsl:value-of select="$macos-definitions-schema"/></schema_filename>
            </system_info>      
            <system_info>
                  <system_name>PixOS</system_name>
                  <schema_filename><xsl:value-of select="$pixos-definitions-schema"/></schema_filename>
            </system_info>      
            <system_info>
                  <system_name>SharePoint</system_name>
                  <schema_filename><xsl:value-of select="$sharepoint-definitions-schema"/></schema_filename>
            </system_info>      
            <system_info>
                  <system_name>Solaris</system_name>
                  <schema_filename><xsl:value-of select="$solaris-definitions-schema"/></schema_filename>
            </system_info>      
            <system_info>
                  <system_name>UNIX</system_name>
                  <schema_filename><xsl:value-of select="$unix-definitions-schema"/></schema_filename>
            </system_info>      
            <system_info>
                  <system_name>Windows</system_name>
                  <schema_filename><xsl:value-of select="$windows-definitions-schema"/></schema_filename>
            </system_info>      
      </xsl:variable>
      
      <xsl:template match="xsd:schema">
            <html>
                  <head>
                        <title/>
                        
                  <style type="text/css">
                        h3 {
                              display:inline;
                              margin: 0 1em 10px 0; 
                        }
                        
                        table {
                              margin-bottom: 1em;
                        }
                        
                        #index {
                              margin: 1em;
                        }
                  </style>
                  <script type="text/javascript">
<!-- Function to set the width of all the first columns of the tables to the same value. -->                        
                        function calc_col_widths() {
                              var td_list = document.getElementsByTagName("td");
                              
                              // Find the widest first column
                              var widest_width = 0;                                                           
                              for (var i = 0; i &lt; td_list.length; i++) {
                                    var cur_td = td_list[i];
                                    
                                    if ((cur_td.cellIndex == 0) &amp;&amp; (cur_td.clientWidth &gt; widest_width)) {
                                          widest_width = cur_td.clientWidth;
                                    }
                              }
                              
                              var col_list = document.getElementsByTagName("col");
                              
                              // set the width of the first columns.
                              for (var i = 0; i &lt; col_list.length; i++) {
                                    var cur_col = col_list[i];
                                    if("first_col" == cur_col.className) {
                                          cur_col.width = widest_width;
                                    }
                              }
                        }
                  </script>                        
                        
                  </head>
                  <body style="background-color:#ffffff;" onload="calc_col_widths();">
                        
                  <h2>Version <xsl:value-of select="@version"/> - Test Listing</h2>
                  <p>This page provides a listing of all the tests that are available in the different component schemas.
                  Deprecated tests are lined through.</p>

<div id="index">
      <xsl:for-each select="$system_info/system_info">
            <a><xsl:attribute name="href">#<xsl:value-of select="system_name"/></xsl:attribute>
             <xsl:value-of select="system_name"/></a> |
      </xsl:for-each>
</div>
            <xsl:for-each select="$system_info/system_info">
                  <xsl:call-template name="test_table">
                        <xsl:with-param name="system_name" select="system_name"/>
                        <xsl:with-param name="schema_filename" select="schema_filename"/>
                  </xsl:call-template>                  
            </xsl:for-each>
                        
                  </body>
            </html>
      </xsl:template>
      
      <xsl:template name="test_table">
            <xsl:param name="system_name"/>
            <xsl:param name="schema_filename"/>
            
            <!-- Calculate the URL to this system's element dictionary -->
            <xsl:variable name="element_dictionary_url">
                  <xsl:variable name="tokens" select="tokenize($schema_filename, '/')"/>
                  <xsl:variable name="filename" select="substring-before($tokens[last()], '.xsd')"/>
                  <!--        <xsl:text>http://oval.mitre.org/language/download/schema/version5.6/ovaldefinition/documentation/</xsl:text><xsl:value-of select="$filename"/><xsl:text>.html</xsl:text> -->                        
                  <xsl:text>./ovaldefinition/documentation/</xsl:text><xsl:value-of select="$filename"/><xsl:text>.html</xsl:text>                        
            </xsl:variable>

            <a><xsl:attribute name="id" select="$system_name"/></a>
            <h3><xsl:value-of select="$system_name"/></h3><span><xsl:text>(</xsl:text>
                  <xsl:value-of select="count(document($schema_filename)/xsd:schema/xsd:element[contains(@name,'_test')])"/>
            <xsl:text> Tests)</xsl:text></span>
            <table border="1" cellpadding="5" cellspacing="0" width="100%">
                  <colgroup>
                        <col class="first_col"/>
                        <col width="*"/>
                  </colgroup>
                  <xsl:for-each select="document($schema_filename)/xsd:schema/xsd:element[contains(@name,'_test')]">                        
                        <tr>
                        <td><a><xsl:attribute name="href"><xsl:value-of select="$element_dictionary_url"/>#<xsl:value-of select="@name"/></xsl:attribute>
                              <xsl:if test="./xsd:annotation/xsd:appinfo/oval:deprecated_info">
                                    <xsl:attribute name="style">text-decoration:line-through underline;</xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="@name"/></a>
                        </td>
                        <td><xsl:value-of select="./xsd:annotation/xsd:documentation"/></td>
                        </tr>
                  </xsl:for-each>
            </table>            
      </xsl:template>
</xsl:stylesheet>
