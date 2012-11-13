<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:saxon="http://saxon.sf.net/"
    xmlns:xsd="http://www.w3.org/2001/XMLSchema"
    xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5"
    xmlns:mfn="http://www.mitre.org/function"
    exclude-result-prefixes="xsd" version="2.0">
    <!-- ATTENTION: This stylesheet must be used with Saxon's validating parser, Saxon EE, configured for either "lax" or "no" schema validation. -->
    
    <!-- Import all the schemas for all the namespaces that may be encountered -->
    <!-- NOTE: For now only import the system characteristic schemas since that is the only external schema reference that appears. -->
    <xsl:import-schema namespace="http://oval.mitre.org/XMLSchema/oval-system-characteristics-5" schema-location="../oval-system-characteristics-schema.xsd"/>
    <xsl:import-schema namespace="http://oval.mitre.org/XMLSchema/oval-system-characteristics-5#aix" schema-location="../aix-system-characteristics-schema.xsd"/>
    <xsl:import-schema namespace="http://oval.mitre.org/XMLSchema/oval-system-characteristics-5#apache" schema-location="../apache-system-characteristics-schema.xsd"/>
    <xsl:import-schema namespace="http://oval.mitre.org/XMLSchema/oval-system-characteristics-5#catos" schema-location="../catos-system-characteristics-schema.xsd"/>
    <xsl:import-schema namespace="http://oval.mitre.org/XMLSchema/oval-system-characteristics-5#esx" schema-location="../esx-system-characteristics-schema.xsd"/>
    <xsl:import-schema namespace="http://oval.mitre.org/XMLSchema/oval-system-characteristics-5#freebsd" schema-location="../freebsd-system-characteristics-schema.xsd"/>
    <xsl:import-schema namespace="http://oval.mitre.org/XMLSchema/oval-system-characteristics-5#hpux" schema-location="../hpux-system-characteristics-schema.xsd"/>
    <xsl:import-schema namespace="http://oval.mitre.org/XMLSchema/oval-system-characteristics-5#independent" schema-location="../independent-system-characteristics-schema.xsd"/>
    <xsl:import-schema namespace="http://oval.mitre.org/XMLSchema/oval-system-characteristics-5#ios" schema-location="../ios-system-characteristics-schema.xsd"/>
    <xsl:import-schema namespace="http://oval.mitre.org/XMLSchema/oval-system-characteristics-5#linux" schema-location="../linux-system-characteristics-schema.xsd"/>
    <xsl:import-schema namespace="http://oval.mitre.org/XMLSchema/oval-system-characteristics-5#macos" schema-location="../macos-system-characteristics-schema.xsd"/>
    <xsl:import-schema namespace="http://oval.mitre.org/XMLSchema/oval-system-characteristics-5#pixos" schema-location="../pixos-system-characteristics-schema.xsd"/>
    <xsl:import-schema namespace="http://oval.mitre.org/XMLSchema/oval-system-characteristics-5#sharepoint" schema-location="../sharepoint-system-characteristics-schema.xsd"/>
    <xsl:import-schema namespace="http://oval.mitre.org/XMLSchema/oval-system-characteristics-5#solaris" schema-location="../solaris-system-characteristics-schema.xsd"/>
    <xsl:import-schema namespace="http://oval.mitre.org/XMLSchema/oval-system-characteristics-5#unix" schema-location="../unix-system-characteristics-schema.xsd"/>
    <xsl:import-schema namespace="http://oval.mitre.org/XMLSchema/oval-system-characteristics-5#windows" schema-location="../windows-system-characteristics-schema.xsd"/>
    
    <xd:doc xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl" scope="stylesheet">
        <xd:desc>
            <xd:p><xd:b>Created on:</xd:b> Aug 9, 2010</xd:p>
            <xd:p><xd:b>Author:</xd:b> jasenj1</xd:p>
            <xd:p>This stylesheet checks that every item in the "element_mapping" map actually exists.
                It can't determine whether a particular object REALLY goes with a particular sc:item, but it can confirm that the sc:item at least is defined.</xd:p>
        </xd:desc>
    </xd:doc>
    
    <xsl:variable name="stylesheet" select="document('')"/>
    <xsl:param name="verbose" select="false()"/>
    
    <!-- This is a list of elements whose minOccurs and maxOccurs are known not to conform with the "expected" standard. -->
    <xsl:variable name="exceptions">
        <!-- http://oval.mitre.org/XMLSchema/oval-system-characteristics-5#independent -->
        <ldap_item target_namespace="http://oval.mitre.org/XMLSchema/oval-system-characteristics-5#independent">
            <value minOccurs="0" maxOccurs="unbounded"/>
        </ldap_item>
        <ldap57_item target_namespace="http://oval.mitre.org/XMLSchema/oval-system-characteristics-5#independent">
            <value minOccurs="0" maxOccurs="unbounded"/>
        </ldap57_item>
        <sql_item target_namespace="http://oval.mitre.org/XMLSchema/oval-system-characteristics-5#independent">
            <result minOccurs="0" maxOccurs="unbounded"/>
        </sql_item>
        <sql57_item target_namespace="http://oval.mitre.org/XMLSchema/oval-system-characteristics-5#independent">
            <result minOccurs="0" maxOccurs="unbounded"/>
        </sql57_item>
        <textfilecontent_item target_namespace="http://oval.mitre.org/XMLSchema/oval-system-characteristics-5#independent">
            <subexpression minOccurs="0" maxOccurs="unbounded"/>
        </textfilecontent_item>
        <variable_item target_namespace="http://oval.mitre.org/XMLSchema/oval-system-characteristics-5#independent">
            <value minOccurs="0" maxOccurs="unbounded"/>
        </variable_item>
        <xmlfilecontent_item target_namespace="http://oval.mitre.org/XMLSchema/oval-system-characteristics-5#independent">
            <value_of minOccurs="0" maxOccurs="unbounded"/>
        </xmlfilecontent_item>
        
        <!-- http://oval.mitre.org/XMLSchema/oval-system-characteristics-5#esx -->
        <visdkmanagedobject_item target_namespace="http://oval.mitre.org/XMLSchema/oval-system-characteristics-5#esx">
            <value minOccurs="0" maxOccurs="unbounded"/>
        </visdkmanagedobject_item>
        
        <!-- http://oval.mitre.org/XMLSchema/oval-system-characteristics-5#linux -->
        <partition_item target_namespace="http://oval.mitre.org/XMLSchema/oval-system-characteristics-5#linux">
            <mount_options minOccurs="0" maxOccurs="unbounded"/>
        </partition_item>
        <rpminfo_item target_namespace="http://oval.mitre.org/XMLSchema/oval-system-characteristics-5#linux">
            <filepath minOccurs="0" maxOccurs="unbounded"/>
        </rpminfo_item>
        
        <!-- http://oval.mitre.org/XMLSchema/oval-system-characteristics-5#macos -->
        <plist_item target_namespace="http://oval.mitre.org/XMLSchema/oval-system-characteristics-5#macos">
            <value minOccurs="0" maxOccurs="unbounded"/>
        </plist_item>
                
        <!-- http://oval.mitre.org/XMLSchema/oval-system-characteristics-5#sharepoint -->
        <spwebapplication_item target_namespace="http://oval.mitre.org/XMLSchema/oval-system-characteristics-5#sharepoint">
            <blockedfileextention minOccurs="0" maxOccurs="unbounded"/>
        </spwebapplication_item>
        
        <!-- http://oval.mitre.org/XMLSchema/oval-system-characteristics-5#unix -->
        <dnscache_item target_namespace="http://oval.mitre.org/XMLSchema/oval-system-characteristics-5#unix">
            <ip_address minOccurs="0" maxOccurs="unbounded"/>            
        </dnscache_item>
        <gconf_item target_namespace="http://oval.mitre.org/XMLSchema/oval-system-characteristics-5#unix">
            <value minOccurs="0" maxOccurs="unbounded"/>            
        </gconf_item>
        <interface_item target_namespace="http://oval.mitre.org/XMLSchema/oval-system-characteristics-5#unix">
            <flag minOccurs="0" maxOccurs="unbounded"/>            
        </interface_item>
        <process58_item target_namespace="http://oval.mitre.org/XMLSchema/oval-system-characteristics-5#unix">
            <posix_capability minOccurs="0" maxOccurs="unbounded"/>            
        </process58_item>
        <process58_item target_namespace="http://oval.mitre.org/XMLSchema/oval-system-characteristics-5#unix">
            <selinux_domain_label minOccurs="0" maxOccurs="unbounded"/>            
        </process58_item>
        <routingtable_item target_namespace="http://oval.mitre.org/XMLSchema/oval-system-characteristics-5#unix">
            <flags minOccurs="0" maxOccurs="unbounded"/>            
        </routingtable_item>
        <sysctl_item target_namespace="http://oval.mitre.org/XMLSchema/oval-system-characteristics-5#unix">
            <value minOccurs="0" maxOccurs="unbounded"/>            
        </sysctl_item>
        <xinetd_item target_namespace="http://oval.mitre.org/XMLSchema/oval-system-characteristics-5#unix">
            <flags minOccurs="0" maxOccurs="unbounded"/>            
        </xinetd_item>
        <xinetd_item target_namespace="http://oval.mitre.org/XMLSchema/oval-system-characteristics-5#unix">
            <no_access minOccurs="0" maxOccurs="unbounded"/>            
        </xinetd_item>
        <xinetd_item target_namespace="http://oval.mitre.org/XMLSchema/oval-system-characteristics-5#unix">
            <only_from minOccurs="0" maxOccurs="unbounded"/>            
        </xinetd_item>

        <!-- http://oval.mitre.org/XMLSchema/oval-system-characteristics-5#windows -->
        <activedirectory_item target_namespace="http://oval.mitre.org/XMLSchema/oval-system-characteristics-5#windows">
            <value minOccurs="0" maxOccurs="unbounded"/>            
        </activedirectory_item>
        <activedirectory57_item target_namespace="http://oval.mitre.org/XMLSchema/oval-system-characteristics-5#windows">
            <value minOccurs="0" maxOccurs="unbounded"/>            
        </activedirectory57_item>
        <cmdlet_item target_namespace="http://oval.mitre.org/XMLSchema/oval-system-characteristics-5#windows">
            <value minOccurs="0" maxOccurs="unbounded"/>            
        </cmdlet_item>
        <dnscache_item target_namespace="http://oval.mitre.org/XMLSchema/oval-system-characteristics-5#windows">
            <ip_address minOccurs="0" maxOccurs="unbounded"/>            
        </dnscache_item>
        <group_item target_namespace="http://oval.mitre.org/XMLSchema/oval-system-characteristics-5#windows">
            <user minOccurs="0" maxOccurs="unbounded"/>            
        </group_item>
        <group_item target_namespace="http://oval.mitre.org/XMLSchema/oval-system-characteristics-5#windows">
            <subgroup minOccurs="0" maxOccurs="unbounded"/>            
        </group_item>
        <group_sid_item target_namespace="http://oval.mitre.org/XMLSchema/oval-system-characteristics-5#windows">
            <user_sid minOccurs="0" maxOccurs="unbounded"/>            
        </group_sid_item>
        <group_sid_item target_namespace="http://oval.mitre.org/XMLSchema/oval-system-characteristics-5#windows">
            <subgroup_sid minOccurs="0" maxOccurs="unbounded"/>            
        </group_sid_item>
        <interface_item target_namespace="http://oval.mitre.org/XMLSchema/oval-system-characteristics-5#windows">
            <addr_type minOccurs="0" maxOccurs="unbounded"/>            
        </interface_item>
        <metabase_item target_namespace="http://oval.mitre.org/XMLSchema/oval-system-characteristics-5#windows">
            <data minOccurs="0" maxOccurs="unbounded"/>            
        </metabase_item>
        <registry_item target_namespace="http://oval.mitre.org/XMLSchema/oval-system-characteristics-5#windows">
            <value minOccurs="0" maxOccurs="unbounded"/>            
        </registry_item>
        <service_item target_namespace="http://oval.mitre.org/XMLSchema/oval-system-characteristics-5#windows">
            <service_type minOccurs="0" maxOccurs="unbounded"/>            
        </service_item>
        <service_item target_namespace="http://oval.mitre.org/XMLSchema/oval-system-characteristics-5#windows">
            <controls_accepted minOccurs="0" maxOccurs="unbounded"/>            
        </service_item>
        <service_item target_namespace="http://oval.mitre.org/XMLSchema/oval-system-characteristics-5#windows">
            <dependencies minOccurs="0" maxOccurs="unbounded"/>            
        </service_item>
        <user_item target_namespace="http://oval.mitre.org/XMLSchema/oval-system-characteristics-5#windows">
            <group minOccurs="0" maxOccurs="unbounded"/>            
        </user_item>
        <user_sid_item target_namespace="http://oval.mitre.org/XMLSchema/oval-system-characteristics-5#windows">
            <group_sid minOccurs="0" maxOccurs="unbounded"/>            
        </user_sid_item>
        <wmi_item target_namespace="http://oval.mitre.org/XMLSchema/oval-system-characteristics-5#windows">
            <result minOccurs="0" maxOccurs="unbounded"/>            
        </wmi_item>
        <wmi57_item target_namespace="http://oval.mitre.org/XMLSchema/oval-system-characteristics-5#windows">
            <result minOccurs="0" maxOccurs="unbounded"/>            
        </wmi57_item>
        <wuaupdatesearcher_item target_namespace="http://oval.mitre.org/XMLSchema/oval-system-characteristics-5#windows">
            <update_id minOccurs="0" maxOccurs="unbounded"/>            
        </wuaupdatesearcher_item>        
    </xsl:variable>
   
    <xsl:template match="xsd:schema">
        <!-- call the schema definition template ... -->
        <xsl:call-template name="gatherSchema">
            <!-- ... with current current root as the $schemas parameter ... -->
            <xsl:with-param name="schemas" select="/"/>
            <!-- ... and any includes in the $include parameter -->
            <xsl:with-param name="includes" select="document(/xsd:schema/xsd:*[self::xsd:include or self::xsd:import or self::xsd:redefine]/@schemaLocation)"/>
        </xsl:call-template>
    </xsl:template>
    <!-- -->
    <!-- gather all included schemas into a single parameter variable -->
    <!-- -->
    <xsl:template name="gatherSchema">
        <xsl:param name="schemas"/>
        <xsl:param name="includes"/>
        <xsl:choose>
            <xsl:when test="count($schemas) &lt; count($schemas | $includes)">
                <!-- when $includes includes something new, recurse ... -->
                <xsl:call-template name="gatherSchema">
                    <!-- ... with current $includes added to the $schemas parameter ... -->
                    <xsl:with-param name="schemas" select="$schemas | $includes"/>
                    <!-- ... and any *new* includes in the $include parameter -->
                    <xsl:with-param name="includes" select="document($includes/xsd:schema/xsd:*[self::xsd:include or self::xsd:import or self::xsd:redefine]/@schemaLocation)"/>
                </xsl:call-template>
            </xsl:when>
            <xsl:otherwise>
                <!-- we have the complete set of included schemas, so now let's output the embedded schematron -->
                <xsl:call-template name="output">
                    <xsl:with-param name="schemas" select="$schemas"/>
                </xsl:call-template>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    
    <xsl:template name="output">
        <xsl:param name="schemas"/>
        <xsl:for-each select="$schemas">
## Validating element maps for <xsl:value-of select="xsd:schema/@targetNamespace"/> ##                        
            <xsl:apply-templates select="xsd:schema//oval:element_mapping" mode="verify_map"/>
            
## Validating children and types <xsl:value-of select="xsd:schema/@targetNamespace"/> ##            
            <xsl:apply-templates select="xsd:schema//oval:element_mapping" mode="verify_entities"/>
## Validating multiplicity for <xsl:value-of select="xsd:schema/@targetNamespace"/> ##            
            <xsl:apply-templates select="xsd:schema//oval:element_mapping" mode="multiplicity"/>                        
        </xsl:for-each>
    </xsl:template>


<!--
    Can you consider also checking the multiplicity of entities? I think we can enforce the following rules:
    - object entities should all be minOccurs=1 maxOccurs=1.
    - state entities should all be minOccurs=0 maxOccurs=1.
    - item entities that were found in an object should all be minOccurs=0 maxOccurs=1.
    - item entities that were found only in an state should be minOccurs=0 maxOccurs=1 with a few exceptions.    
-->
    <xsl:template match="oval:element_mapping" mode="multiplicity">
        <xsl:variable name="map" select="."/>
        <!-- find the object node from the element_mapping -->
        <xsl:variable name="object" select="mfn:find_node(./oval:object)"/>
        <xsl:variable name="state" select="mfn:find_node(./oval:state)"/>
        <xsl:variable name="item" select="mfn:find_node(./oval:item)"/>
        
        <xsl:variable name="object_children" select="mfn:get_children($object)"/>
        <xsl:variable name="state_children" select="mfn:get_children($state)"/>
        <xsl:variable name="item_children" select="mfn:get_children($item)"/>
        
        <!-- object entities should all be minOccurs=1 maxOccurs=1. -->
        <xsl:for-each select="$object_children">
            <xsl:variable name="child" select="."/>
            <xsl:if test="exists($child/@minOccurs) and ($child/@minOccurs != '1')">
        *** '<xsl:value-of select="$object/@name"/>/<xsl:value-of select="$child/@name"/>' has minOccurs of <xsl:value-of select="$child/@minOccurs"/>. Probably should be 1.
            </xsl:if>
            <xsl:if test="exists($child/@maxOccurs) and ($child/@maxOccurs != '1')">
        *** '<xsl:value-of select="$object/@name"/>/<xsl:value-of select="$child/@name"/>' has maxOccurs of <xsl:value-of select="$child/@maxOccurs"/>. Probably should be 1.
            </xsl:if>
        </xsl:for-each>
        
        <!-- state entities should all be minOccurs=0 maxOccurs=1. -->        
        <xsl:for-each select="$state_children">
            <xsl:variable name="child" select="."/>
            <xsl:if test="not(exists($child/@minOccurs))">
        *** '<xsl:value-of select="$state/@name"/>/<xsl:value-of select="$child/@name"/>' has no minOccurs. Probably should be 0.                
            </xsl:if>
            <xsl:if test="exists($child/@minOccurs) and ($child/@minOccurs != '0')">
        *** '<xsl:value-of select="$state/@name"/>/<xsl:value-of select="$child/@name"/>' has minOccurs of <xsl:value-of select="$child/@minOccurs"/>. Probably should be 0.
            </xsl:if>
            <xsl:if test="exists($child/@maxOccurs) and ($child/@maxOccurs != '1')">
        *** '<xsl:value-of select="$state/@name"/>/<xsl:value-of select="$child/@name"/>' has maxOccurs of <xsl:value-of select="$child/@maxOccurs"/>. Probably should be 1.
            </xsl:if>
        </xsl:for-each>
        
        <!-- item entities that were found in an object should all be minOccurs=0 maxOccurs=1. -->
        <xsl:for-each select="$item_children">
            <xsl:variable name="child" select="."/>
            <xsl:if test="exists($object_children[@name=$child/@name])">
                <xsl:if test="not(exists($child/@minOccurs)) and mfn:notException($map, $item, $child)">
        *** '<xsl:value-of select="$item/@name"/>/<xsl:value-of select="$child/@name"/>' has no minOccurs. Probably should be 0.                
                </xsl:if>
                <xsl:if test="exists($child/@minOccurs) and ($child/@minOccurs != '0') and mfn:notException($map, $item, $child)">
        *** '<xsl:value-of select="$item/@name"/>/<xsl:value-of select="$child/@name"/>' has minOccurs of <xsl:value-of select="$child/@minOccurs"/>. Probably should be 0.
                </xsl:if>
                <xsl:if test="exists($child/@maxOccurs) and ($child/@maxOccurs != '1') and mfn:notException($map, $item, $child)">
        *** '<xsl:value-of select="$item/@name"/>/<xsl:value-of select="$child/@name"/>' has maxOccurs of <xsl:value-of select="$child/@maxOccurs"/>. Probably should be 1.
                </xsl:if>
            </xsl:if>
        </xsl:for-each>
        
        <!-- item entities that were found only in an state should be minOccurs=0 maxOccurs=1 with a few exceptions. -->
        <xsl:for-each select="$item_children">
            <xsl:variable name="child" select="."/>
            <xsl:if test="not(exists($object_children[@name=$child/@name])) and exists($state_children[@name=$child/@name]) and mfn:notException($map, $item, $child)">
                <xsl:if test="not(exists($child/@minOccurs))">
        *** '<xsl:value-of select="$item/@name"/>/<xsl:value-of select="$child/@name"/>' has no minOccurs. Probably should be 0.                
                </xsl:if>
                <xsl:if test="exists($child/@minOccurs) and ($child/@minOccurs != '0') and mfn:notException($map, $item, $child)">
        *** '<xsl:value-of select="$item/@name"/>/<xsl:value-of select="$child/@name"/>' has minOccurs of <xsl:value-of select="$child/@minOccurs"/>. Probably should be 0.
                </xsl:if>
                <xsl:if test="exists($child/@maxOccurs) and ($child/@maxOccurs != '1') and mfn:notException($map, $item, $child)">
        *** '<xsl:value-of select="$item/@name"/>/<xsl:value-of select="$child/@name"/>' has maxOccurs of <xsl:value-of select="$child/@maxOccurs"/>. Probably should be 1.
                </xsl:if>
            </xsl:if>
        </xsl:for-each>                
    </xsl:template>        
    
    <!-- 
        For each element in the mapping, confirm that:
        1. The child(ren) of the Object element exist in the State and Item elements
        a. The types of the child(ren) of the Object, State, and Item have consistent element local-names.
        That is, the Object has type (or extends or restricts) EntityObjectXXXXType, 
        the State has type (or extends or restricts) EntityStateXXXXType,
        the Item has type (or extends or restricts) EntityItemXXXXType
        b. Ignore oval-def:set and oval-def:filter elements
        2. Repeat the above comparing the State to Item, i.e. make sure all child elements in the State are also in the Item.
        3. Repeat the above comparing the Item to the State - but elements in the Item but not the State is not an error, just a warning/item of note.               
    -->
    <xsl:template match="oval:element_mapping" mode="verify_entities">
        <!-- find the object node from the element_mapping -->
        <xsl:variable name="object_node" select="mfn:find_node(./oval:object)"/>
        <xsl:variable name="state_node" select="mfn:find_node(./oval:state)"/>
        <xsl:variable name="item_node" select="mfn:find_node(./oval:item)"/>
        
        <xsl:variable name="object_children" select="mfn:get_children($object_node)"/>
        <xsl:variable name="state_children" select="mfn:get_children($state_node)"/>
        <xsl:variable name="item_children" select="mfn:get_children($item_node)"/>


        <xsl:call-template name="validate_object_child_names">
            <xsl:with-param name="object" select="$object_node"/>
            <xsl:with-param name="object_children" select="$object_children"/>
            <xsl:with-param name="state" select="$state_node"/>            
            <xsl:with-param name="state_children" select="$state_children"/>
            <xsl:with-param name="item" select="$item_node"/>
            <xsl:with-param name="item_children" select="$item_children"/>
        </xsl:call-template>

        <xsl:call-template name="validate_state_child_names">
            <xsl:with-param name="state" select="$state_node"/>            
            <xsl:with-param name="state_children" select="$state_children"/>
            <xsl:with-param name="item" select="$item_node"/>
            <xsl:with-param name="item_children" select="$item_children"/>
        </xsl:call-template>

        <xsl:call-template name="validate_item_child_names">
            <xsl:with-param name="state" select="$state_node"/>            
            <xsl:with-param name="state_children" select="$state_children"/>
            <xsl:with-param name="item" select="$item_node"/>
            <xsl:with-param name="item_children" select="$item_children"/>
        </xsl:call-template>

        <xsl:call-template name="validate_child_types">
            <xsl:with-param name="object" select="$object_node"/>
            <xsl:with-param name="object_children" select="$object_children"/>
            <xsl:with-param name="state" select="$state_node"/>            
            <xsl:with-param name="state_children" select="$state_children"/>
            <xsl:with-param name="item" select="$item_node"/>
            <xsl:with-param name="item_children" select="$item_children"/>            
        </xsl:call-template>            
    </xsl:template>

<!--
    Confirm that the types of the child(ren) of the Object, State, and Item have consistent element local-names.
    That is, the Object has type (or extends or restricts) EntityObjectXXXXType, 
    the State has type (or extends or restricts) EntityStateXXXXType,
    the Item has type (or extends or restricts) EntityItemXXXXType    
-->
    <xsl:template name="validate_child_types">
        <xsl:param name="object"/>
        <xsl:param name="object_children"/>
        <xsl:param name="state"/>
        <xsl:param name="state_children"/>
        <xsl:param name="item"/>
        <xsl:param name="item_children"/>
        
        <!-- Use the State's children as the starting point since it should have a complete set of the relevant children. -->
        <xsl:if test="not(empty($state_children))">
<xsl:if test="$verbose">== Found some children of "<xsl:value-of select="$state/@name"/>". Validating cousin types. ==</xsl:if>
            <xsl:for-each select="$state_children">
                <!--                <xsl:message>  Child <xsl:value-of select="position()"/> = <xsl:value-of select="./@name"/></xsl:message> -->                
                <xsl:variable name="name" select="./@name"/>                                
                <xsl:variable name="state_child" select="."/>                                                    
                <xsl:variable name="object_child" select="$object_children[@name=$name]"/>                                    
                <xsl:variable name="item_child" select="$item_children[@name=$name]"/>

                <xsl:variable name="state_child_type" select="substring-after($state_child/@type, ':')"/>
                
                <xsl:choose>                         
                    <xsl:when test="exists($object_child)">
                        <xsl:variable name="object_child_type" select="substring-after($object_child/@type, ':')"/>
<xsl:if test="$verbose">                        
        Checking type of Object "<xsl:value-of select="$object_child/@name"/>":
            Object: <xsl:value-of select="$object_child_type"/>
            State:  <xsl:value-of select="$state_child_type"/>
</xsl:if>    
                            <xsl:if test="(substring-before($object_child_type, 'Object') != substring-before($state_child_type,'State')) or
                                          (substring-after($object_child_type,'Object') != substring-after($state_child_type, 'State'))">
        *** Element "<xsl:value-of select="$state/@name"/>"                                
        *** Types are not correct between Object and State cousins "<xsl:value-of select="$state_child/@name"/>"
            Object: <xsl:value-of select="$object_child_type"/>
            State:  <xsl:value-of select="$state_child_type"/>                                
                            </xsl:if>
                        </xsl:when>
                        <xsl:otherwise>
<!--        No OBJECT cousin for "<xsl:value-of select="$name"/>" -->
                        </xsl:otherwise>
                </xsl:choose>
                
                <xsl:choose>                         
                    <xsl:when test="exists($item_child)">
                        <xsl:variable name="item_child_type" select="substring-after($item_child/@type, ':')"/>
                        <xsl:if test="$verbose">                        
            Checking type of Item "<xsl:value-of select="$item_child/@name"/>":
            Item:  <xsl:value-of select="$item_child_type"/>
            State: <xsl:value-of select="$state_child_type"/>
                        </xsl:if>                            
                        <xsl:if test="(substring-before($item_child_type, 'Item') != substring-before($state_child_type, 'State')) or 
                                      (substring-after($item_child_type,'Item') != substring-after($state_child_type,'State'))">
        *** Element "<xsl:value-of select="$state/@name"/>"                                
        *** Types are not correct between Item and State cousins "<xsl:value-of select="$state_child/@name"/>"
            Item: <xsl:value-of select="$item_child_type"/>
            State:  <xsl:value-of select="$state_child_type"/>                                
                        </xsl:if>
                    </xsl:when>
                    <xsl:otherwise>
<!-- This is reported by the element mapping template.           
    No ITEM cousin for State "<xsl:value-of select="$state/@name"/>/<xsl:value-of select="$name"/>" -->
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:for-each>
        </xsl:if>                
    </xsl:template>
    
    
    <xsl:template name="validate_object_child_names">
        <xsl:param name="object"/>
        <xsl:param name="object_children"/>
        <xsl:param name="state"/>
        <xsl:param name="state_children"/>
        <xsl:param name="item"/>
        <xsl:param name="item_children"/>
        
        <xsl:if test="not(empty($object_children))">
<!--            <xsl:message>Found some children of <xsl:value-of select="$object/@name"/></xsl:message> -->
            <xsl:for-each select="$object_children">
<!--                <xsl:message>  Child <xsl:value-of select="position()"/> = <xsl:value-of select="./@name"/></xsl:message> -->
                <xsl:variable name="name" select="./@name"/>                
                <xsl:if test="not(exists($state_children[@name=$name])) or not(exists($item_children[@name=$name]))">
    Problem with OBJECT "<xsl:value-of select="$object/@name"/>" to State or Item child name mapping:
                </xsl:if>
                <xsl:if test="not(exists($state_children[@name=$name]))">
    *** "<xsl:value-of select="$state/@name"/>" missing matching child "<xsl:value-of select="./@name"/>".                    
                </xsl:if>
                <xsl:if test="not(exists($item_children[@name=$name]))">
    *** "<xsl:value-of select="$item/@name"/>" missing matching child "<xsl:value-of select="./@name"/>".                    
                </xsl:if>
            </xsl:for-each>
        </xsl:if>        
    </xsl:template>

    <xsl:template name="validate_state_child_names">
        <xsl:param name="state"/>
        <xsl:param name="state_children"/>
        <xsl:param name="item"/>
        <xsl:param name="item_children"/>
        
        <xsl:if test="not(empty($state_children))">
<!--            <xsl:message>Found some children of <xsl:value-of select="$state/@name"/></xsl:message> -->
            <xsl:for-each select="$state_children">
<!--                <xsl:message>  Child <xsl:value-of select="position()"/> = <xsl:value-of select="./@name"/></xsl:message> -->                

                <xsl:variable name="name" select="./@name"/>                
                <xsl:if test="not(exists($item_children[@name=$name]))">
    Problem with STATE "<xsl:value-of select="$state/@name"/>" to Item child name mapping:                    
    *** "<xsl:value-of select="$item/@name"/>" missing matching child "<xsl:value-of select="./@name"/>".                    
                </xsl:if>
            </xsl:for-each>
        </xsl:if>        
    </xsl:template>

    <xsl:template name="validate_item_child_names">
        <xsl:param name="state"/>
        <xsl:param name="state_children"/>
        <xsl:param name="item"/>
        <xsl:param name="item_children"/>
        
        <xsl:if test="not(empty($item_children))">
<!--            <xsl:message>Found some children of <xsl:value-of select="$item/@name"/></xsl:message> -->
            <xsl:for-each select="$item_children">
<!--                <xsl:message>  Child <xsl:value-of select="position()"/> = <xsl:value-of select="./@name"/></xsl:message> -->                
                <xsl:variable name="name" select="./@name"/>                
                <xsl:if test="not(exists($state_children[@name=$name]))">
    Problem with ITEM "<xsl:value-of select="$item/@name"/>" to State child name mapping:                    
    *** "<xsl:value-of select="$state/@name"/>" missing matching child "<xsl:value-of select="./@name"/>".                    
                </xsl:if>
            </xsl:for-each>
        </xsl:if>        
    </xsl:template>
    
    <xsl:function name="mfn:notException" as="xsd:boolean">
<!-- OK. This is a bit of a pain. 
     Once mfn:find_node() is called, I lose all namespace awareness of the retrieved element.
     The <xsd:element> retrieved does not know its own targetNamespace. So I have to go all 
     the way back to the map to chase down what namespace the "parent" element is in.
     
     This duplicates much of the work done by mfn:find_node(). *sigh*
-->        
        <xsl:param name="map" as="element()"/>
        <xsl:param name="parent" as="element()"/>
        <xsl:param name="child" as="element()"/>

        <!-- Get the parent out of the map -->
        <xsl:variable name="map_element" select="$map/*[text() = $parent/@name]"/>
        
        <!-- Figure out the target namespace -->
        <xsl:variable name="namespace">
        <xsl:choose>
            <xsl:when test="$map_element/@target_namespace">
                <xsl:value-of select="$map_element/@target_namespace"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="root($map)/xsd:schema/@targetNamespace"/>
            </xsl:otherwise>
        </xsl:choose>
        </xsl:variable>        
        
        <xsl:variable name="exception" select="$exceptions/*[(name() = $parent/@name) and (@target_namespace = $namespace)]/*[name() = $child/@name]"/>
        <xsl:choose>
            <xsl:when test="empty($exception)">
                <xsl:copy-of select="true()"/>                
            </xsl:when>
            <xsl:otherwise>
                <xsl:copy-of select="false()"/>                                
            </xsl:otherwise>
        </xsl:choose>        
    </xsl:function>
    
    
    <xsl:function name="mfn:find_node" as="element()">
        <xsl:param name="element" as="element()"/>

        <!-- Check the target_namespace. If it doesn't exist, things are easy. Otherwise we have to go hunt down the right schema. -->
        <xsl:choose>
            <xsl:when test="$element/@target_namespace">
                <!-- Check if the namespace is one of the stylesheet's imported schemas -->
                <xsl:variable name="import_location">
                    <xsl:value-of select="$stylesheet/xsl:stylesheet/xsl:import-schema[@namespace=$element/@target_namespace]/@schema-location"/>
                </xsl:variable>                
                <xsl:choose>
                    <xsl:when test="string-length($import_location) > 0">
                        <!-- Found a location to import the namespace's schema -->
                        <xsl:variable name="import_doc" select="document($import_location)"/>
                        <!-- Grab a copy of the element we're looking for -->
                        <xsl:copy-of select="$import_doc/xsd:schema/xsd:element[@name=$element/text()]"/>
                    </xsl:when>
                    <xsl:otherwise>
                        <!-- Namespace is not amongst those imported by the stylesheet. Give up looking. -->
                        <xsl:message>Element <xsl:value-of select="$element/@target_namespace"/>#<xsl:value-of select="$element/text()"/> not found in imported namespaces!</xsl:message>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:when>
            <xsl:otherwise>
                <!-- Namespace doesn't exist. Find the item in the processed document.
                    The root() will be the root of the element's namespace schema.
                -->
                <xsl:copy-of select="root($element)/xsd:schema/xsd:element[@name=$element/text()]"/>                                    
            </xsl:otherwise>
        </xsl:choose>            
    </xsl:function>
    
    <!-- Get the "element" elements of a node, ignoring oval-def:set, oval-def:filter nodes, and behaviors nodes on _objects. -->
    <xsl:function name="mfn:get_children" as="item()*">
        <xsl:param name="node" as="element()"/>
        
        <!-- Filter out set, filter, and behavior children on _objects -->
        <xsl:choose>
            <xsl:when test="ends-with($node/@name, '_object')">
                <xsl:copy-of select="$node//xsd:element[(not(exists(@ref)) or ((@ref != 'oval-def:set') 
                    and (@ref != 'oval-def:filter'))) and (@name != 'behaviors')]"/>                        
            </xsl:when>
            <xsl:otherwise>
                <xsl:copy-of select="$node//xsd:element"/>                        
            </xsl:otherwise>
        </xsl:choose>
    </xsl:function>
            
    <!-- Templates used for verifying the element_mapping elements all exist -->
    
    <xsl:template match="oval:element_mapping" mode="verify_map">        
        <xsl:call-template name="check_element">
            <xsl:with-param name="element" select="oval:test"/>
        </xsl:call-template>
        <xsl:call-template name="check_element">
            <xsl:with-param name="element" select="oval:object"/>
        </xsl:call-template>
        <xsl:call-template name="check_element">
            <xsl:with-param name="element" select="oval:state"/>
        </xsl:call-template>
        <xsl:call-template name="check_element">
            <xsl:with-param name="element" select="oval:item"/>
        </xsl:call-template>

    </xsl:template>
    
    <xsl:template name="check_element">
        <xsl:param name="element"/>
        <!-- Check the target_namespace. If it doesn't exist, things are easy. Otherwise we have to go hunt down the right schema. -->
        <xsl:choose>
            <xsl:when test="$element/@target_namespace">
                <!-- Check if the namespace is one of the stylesheet's imported schemas -->
                <xsl:variable name="import_location">
                    <xsl:value-of select="$stylesheet/xsl:stylesheet/xsl:import-schema[@namespace=$element/@target_namespace]/@schema-location"/>
                </xsl:variable>                
                <xsl:choose>
                    <xsl:when test="string-length($import_location) > 0">
                        <!-- Found a location to import the namespace's schema -->
                        <xsl:variable name="import_doc" select="document($import_location)"/>
                        <!-- Check existence of the element we're looking for -->
                        <xsl:if test="not(exists($import_doc/xsd:schema/xsd:element[@name=$element/text()]))">
    *** Element "<xsl:value-of select="$element/text()"/>" not found in namespace "<xsl:value-of select="$element/@target_namespace"/>"                                                 
                        </xsl:if>
                    </xsl:when>
                    <xsl:otherwise>
                        <!-- Namespace is not amongst those imported by the stylesheet. Give up looking. -->
                        <xsl:message>Element <xsl:value-of select="$element/@target_namespace"/>#<xsl:value-of select="$element/text()"/> not found in imported namespaces!</xsl:message>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:when>
            <xsl:otherwise>
                <!-- Namespace doesn't exist. Find the item in the processed document.
                    The root() will be the root of the element's namespace schema.
                -->
                <xsl:if test="not(exists(root($element)/xsd:schema/xsd:element[@name=$element/text()]))">
    *** Element "<xsl:value-of select="$element/text()"/>" not found in <xsl:value-of select="root($element)/xsd:schema/@targetNamespace"/>.                    
                </xsl:if>                                    
            </xsl:otherwise>
        </xsl:choose>                    
    </xsl:template>
    
</xsl:stylesheet>
