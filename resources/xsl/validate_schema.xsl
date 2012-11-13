<?xml version="1.0" encoding="UTF-8"?>
<!--
	This stylesheet was originally developed by The MITRE Corporation.
	It has been designed to validate an OVAL Schema file and catch common
	typos that are made. It is maintained by The Mitre Corporation and
	developed for use by the public OVAL Community.  For more information,
	including how to get involved in the project, please visit the
	OVAL website at http://oval.mitre.org.
-->
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fn="http://www.w3.org/2005/xpath-functions" xmlns:xsd="http://www.w3.org/2001/XMLSchema">

      <xsl:output method="text"/>

      <!-- 
            This is the main template that will envoke the real work horse
            template for each individual component schema.  Basically, we
            are just looping through the different schema files here.
      -->

      <xsl:template match="xsd:schema">
            <xsl:call-template name="work_horse">
                  <xsl:with-param name="schema_name">aix</xsl:with-param>
                  <xsl:with-param name="definition_schema_file">../aix-definitions-schema.xsd</xsl:with-param>
                  <xsl:with-param name="sc_schema_file">../aix-system-characteristics-schema.xsd</xsl:with-param>
            </xsl:call-template>
            <xsl:call-template name="work_horse">
                  <xsl:with-param name="schema_name">apache</xsl:with-param>
                  <xsl:with-param name="definition_schema_file">../apache-definitions-schema.xsd</xsl:with-param>
                  <xsl:with-param name="sc_schema_file">../apache-system-characteristics-schema.xsd</xsl:with-param>
            </xsl:call-template>
            <xsl:call-template name="work_horse">
                  <xsl:with-param name="schema_name">catos</xsl:with-param>
                  <xsl:with-param name="definition_schema_file">../catos-definitions-schema.xsd</xsl:with-param>
                  <xsl:with-param name="sc_schema_file">../catos-system-characteristics-schema.xsd</xsl:with-param>
            </xsl:call-template>
                  <xsl:call-template name="work_horse">
                  <xsl:with-param name="schema_name">esx</xsl:with-param>
                  <xsl:with-param name="definition_schema_file">../esx-definitions-schema.xsd</xsl:with-param>
                  <xsl:with-param name="sc_schema_file">../esx-system-characteristics-schema.xsd</xsl:with-param>
            </xsl:call-template>
            <xsl:call-template name="work_horse">
                  <xsl:with-param name="schema_name">freebsd</xsl:with-param>
                  <xsl:with-param name="definition_schema_file">../freebsd-definitions-schema.xsd</xsl:with-param>
                  <xsl:with-param name="sc_schema_file">../freebsd-system-characteristics-schema.xsd</xsl:with-param>
            </xsl:call-template>
            <xsl:call-template name="work_horse">
                  <xsl:with-param name="schema_name">hpux</xsl:with-param>
                  <xsl:with-param name="definition_schema_file">../hpux-definitions-schema.xsd</xsl:with-param>
                  <xsl:with-param name="sc_schema_file">../hpux-system-characteristics-schema.xsd</xsl:with-param>
            </xsl:call-template>
            <xsl:call-template name="work_horse">
                  <xsl:with-param name="schema_name">independent</xsl:with-param>
                  <xsl:with-param name="definition_schema_file">../independent-definitions-schema.xsd</xsl:with-param>
                  <xsl:with-param name="sc_schema_file">../independent-system-characteristics-schema.xsd</xsl:with-param>
            </xsl:call-template>
            <xsl:call-template name="work_horse">
                  <xsl:with-param name="schema_name">ios</xsl:with-param>
                  <xsl:with-param name="definition_schema_file">../ios-definitions-schema.xsd</xsl:with-param>
                  <xsl:with-param name="sc_schema_file">../ios-system-characteristics-schema.xsd</xsl:with-param>
            </xsl:call-template>
            <xsl:call-template name="work_horse">
                  <xsl:with-param name="schema_name">linux</xsl:with-param>
                  <xsl:with-param name="definition_schema_file">../linux-definitions-schema.xsd</xsl:with-param>
                  <xsl:with-param name="sc_schema_file">../linux-system-characteristics-schema.xsd</xsl:with-param>
            </xsl:call-template>
            <xsl:call-template name="work_horse">
                  <xsl:with-param name="schema_name">macos</xsl:with-param>
                  <xsl:with-param name="definition_schema_file">../macos-definitions-schema.xsd</xsl:with-param>
                  <xsl:with-param name="sc_schema_file">../macos-system-characteristics-schema.xsd</xsl:with-param>
            </xsl:call-template>
            <xsl:call-template name="work_horse">
                  <xsl:with-param name="schema_name">pixos</xsl:with-param>
                  <xsl:with-param name="definition_schema_file">../pixos-definitions-schema.xsd</xsl:with-param>
                  <xsl:with-param name="sc_schema_file">../pixos-system-characteristics-schema.xsd</xsl:with-param>
            </xsl:call-template>
            <xsl:call-template name="work_horse">
                  <xsl:with-param name="schema_name">sharepoint</xsl:with-param>
                  <xsl:with-param name="definition_schema_file">../sharepoint-definitions-schema.xsd</xsl:with-param>
                  <xsl:with-param name="sc_schema_file">../sharepoint-system-characteristics-schema.xsd</xsl:with-param>
            </xsl:call-template>
            <xsl:call-template name="work_horse">
                  <xsl:with-param name="schema_name">solaris</xsl:with-param>
                  <xsl:with-param name="definition_schema_file">../solaris-definitions-schema.xsd</xsl:with-param>
                  <xsl:with-param name="sc_schema_file">../solaris-system-characteristics-schema.xsd</xsl:with-param>
            </xsl:call-template>
            <xsl:call-template name="work_horse">
                  <xsl:with-param name="schema_name">unix</xsl:with-param>
                  <xsl:with-param name="definition_schema_file">../unix-definitions-schema.xsd</xsl:with-param>
                  <xsl:with-param name="sc_schema_file">../unix-system-characteristics-schema.xsd</xsl:with-param>
            </xsl:call-template>
            <xsl:call-template name="work_horse">
                  <xsl:with-param name="schema_name">windows</xsl:with-param>
                  <xsl:with-param name="definition_schema_file">../windows-definitions-schema.xsd</xsl:with-param>
                  <xsl:with-param name="sc_schema_file">../windows-system-characteristics-schema.xsd</xsl:with-param>
            </xsl:call-template>
      </xsl:template>
      
      <!-- 
            This is where the real work is done.  For the individual
            component schema that is target, we will verify a number
            of different things.
      -->

      <xsl:template name="work_horse">
            <xsl:param name="schema_name"/>
            <xsl:param name="definition_schema_file"/>
            <xsl:param name="sc_schema_file"/>
            
            <xsl:text>** </xsl:text><xsl:value-of select="$schema_name"/><xsl:text> **&#10;</xsl:text>
            
            <!--
                  For each test defined, make sure that a corresponding
                  object and state are also defined.
            -->
            
            <xsl:for-each select="document($definition_schema_file)//xsd:schema/xsd:element[contains(@name,'_test')]">
                  <xsl:variable name="test_name" select="fn:substring-before(@name,'_test')"/>
                  <xsl:value-of select="if (fn:exists(../xsd:element[@name = fn:concat($test_name, '_object')])) then ('') else (fn:concat(' - object for ', $test_name, '_test missing&#10;'))"/>
                  <xsl:value-of select="if (fn:exists(../xsd:element[@name = fn:concat($test_name, '_state')])) then ('') else (fn:concat(' - state for ', $test_name, '_test missing&#10;'))"/>
            </xsl:for-each>

            <!--
                  For each object defined, make sure that a corresponding
                  test has also defined.  In addition, verify that each
                  entity defined by the object also is defined by the
                  state.
            -->

            <xsl:for-each select="document($definition_schema_file)//xsd:schema/xsd:element[contains(@name,'_object')]">
                  <xsl:variable name="object_name" select="fn:substring-before(@name,'_object')"/>
                  <xsl:value-of select="if (fn:exists(../xsd:element[@name = fn:concat($object_name, '_test')])) then ('') else (fn:concat(' - test for ', $object_name, '_object missing&#10;'))"/>
                  <xsl:for-each select="./xsd:complexType/xsd:complexContent/xsd:extension/xsd:sequence/xsd:choice/xsd:sequence//xsd:element[@name != 'behaviors']">
                        <xsl:variable name="entity_name" select="@name"/>
                        <xsl:value-of select="if (fn:exists(//xsd:element[@name = fn:concat($object_name, '_state')]/xsd:complexType/xsd:complexContent/xsd:extension/xsd:sequence/xsd:element[@name = $entity_name])) then ('') else (fn:concat(' - entity ', $entity_name, ' in ', $object_name, '_object missing from corresponding state&#10;'))"/>                        
                  </xsl:for-each>
            </xsl:for-each>
            
            <!--
                  For each state defined, make sure that a corresponding
                  test has also defined.  In addition, verify that each
                  entity defined by the state also is defined by the
                  corresponding item in the system characteristics file.
            -->

            <xsl:for-each select="document($definition_schema_file)//xsd:schema/xsd:element[contains(@name,'_state')]">
                  <xsl:variable name="state_name" select="fn:substring-before(@name,'_state')"/>
                  <xsl:value-of select="if (fn:exists(../xsd:element[@name = fn:concat($state_name, '_test')])) then ('') else (fn:concat(' - test for ', $state_name, '_state missing&#10;'))"/>
                  <xsl:for-each select="./xsd:complexType/xsd:complexContent/xsd:extension/xsd:sequence/xsd:element">
                        <xsl:variable name="entity_name" select="@name"/>
                        <xsl:value-of select="if (fn:exists(document($sc_schema_file)//xsd:element[@name = fn:concat($state_name, '_item')]/xsd:complexType/xsd:complexContent/xsd:extension/xsd:sequence/xsd:element[@name = $entity_name])) then ('') else (fn:concat(' - entity ', $entity_name, ' in ', $state_name, '_state missing from corresponding system characteristics item&#10;'))"/>                        
                  </xsl:for-each>
            </xsl:for-each>

            <!--
                  For each item defined, verify that each
                  entity defined by the item also is defined by the
                  corresponding state in the definitions file.
            -->
            
            <xsl:for-each select="document($sc_schema_file)//xsd:schema/xsd:element[contains(@name,'_item')]">
                  <xsl:variable name="item_name" select="fn:substring-before(@name,'_item')"/>
                  <xsl:for-each select="./xsd:complexType/xsd:complexContent/xsd:extension/xsd:sequence/xsd:element">
                        <xsl:variable name="entity_name" select="@name"/>
                        <xsl:value-of select="if (fn:exists(document($definition_schema_file)//xsd:element[@name = fn:concat($item_name, '_state')]/xsd:complexType/xsd:complexContent/xsd:extension/xsd:sequence/xsd:element[@name = $entity_name])) then ('') else (fn:concat(' - entity ', $entity_name, ' in ', $item_name, '_item missing from corresponding definition state&#10;'))"/>                        
                  </xsl:for-each>
            </xsl:for-each>

      </xsl:template>

</xsl:stylesheet>
