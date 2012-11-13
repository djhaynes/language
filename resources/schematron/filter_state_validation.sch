<?xml version="1.0" encoding="UTF-8"?>
<root xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5"
      xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5"
      xmlns:sch="http://purl.oclc.org/dsdl/schematron"
      xmlns:xsd="http://www.w3.org/2001/XMLSchema">
   <xsd:appinfo>
      <sch:pattern id="ind-def_filehash58_object_verify_filter_state">
         <sch:rule context="ind-def:filehash58_object//oval-def:filter">
            <sch:let name="parent_object" value="ancestor::ind-def:filehash58_object"/>
            <sch:let name="parent_object_id" value="$parent_object/@id"/>
            <sch:let name="state_ref" value="."/>
            <sch:let name="reffed_state"
                     value="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/>
            <sch:let name="state_name" value="local-name($reffed_state)"/>
            <sch:let name="state_namespace" value="namespace-uri($reffed_state)"/>
            <sch:assert test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#independent') and ($state_name='filehash58_state'))">State referenced in filter for <sch:value-of select="name($parent_object)"/> '<sch:value-of select="$parent_object_id"/>' is of the wrong type. </sch:assert>
         </sch:rule>
      </sch:pattern>
   </xsd:appinfo>
   <xsd:appinfo>
      <sch:pattern id="ind-def_environmentvariable58_object_verify_filter_state">
         <sch:rule context="ind-def:environmentvariable58_object//oval-def:filter">
            <sch:let name="parent_object" value="ancestor::ind-def:environmentvariable58_object"/>
            <sch:let name="parent_object_id" value="$parent_object/@id"/>
            <sch:let name="state_ref" value="."/>
            <sch:let name="reffed_state"
                     value="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/>
            <sch:let name="state_name" value="local-name($reffed_state)"/>
            <sch:let name="state_namespace" value="namespace-uri($reffed_state)"/>
            <sch:assert test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#independent') and ($state_name='environmentvariable58_state'))">State referenced in filter for <sch:value-of select="name($parent_object)"/> '<sch:value-of select="$parent_object_id"/>' is of the wrong type. </sch:assert>
         </sch:rule>
      </sch:pattern>
   </xsd:appinfo>
   <xsd:appinfo>
      <sch:pattern id="ind-def_ldap57_object_verify_filter_state">
         <sch:rule context="ind-def:ldap57_object//oval-def:filter">
            <sch:let name="parent_object" value="ancestor::ind-def:ldap57_object"/>
            <sch:let name="parent_object_id" value="$parent_object/@id"/>
            <sch:let name="state_ref" value="."/>
            <sch:let name="reffed_state"
                     value="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/>
            <sch:let name="state_name" value="local-name($reffed_state)"/>
            <sch:let name="state_namespace" value="namespace-uri($reffed_state)"/>
            <sch:assert test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#independent') and ($state_name='ldap57_state'))">State referenced in filter for <sch:value-of select="name($parent_object)"/> '<sch:value-of select="$parent_object_id"/>' is of the wrong type. </sch:assert>
         </sch:rule>
      </sch:pattern>
   </xsd:appinfo>
   <xsd:appinfo>
      <sch:pattern id="ind-def_sql57_object_verify_filter_state">
         <sch:rule context="ind-def:sql57_object//oval-def:filter">
            <sch:let name="parent_object" value="ancestor::ind-def:sql57_object"/>
            <sch:let name="parent_object_id" value="$parent_object/@id"/>
            <sch:let name="state_ref" value="."/>
            <sch:let name="reffed_state"
                     value="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/>
            <sch:let name="state_name" value="local-name($reffed_state)"/>
            <sch:let name="state_namespace" value="namespace-uri($reffed_state)"/>
            <sch:assert test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#independent') and ($state_name='sql57_state'))">State referenced in filter for <sch:value-of select="name($parent_object)"/> '<sch:value-of select="$parent_object_id"/>' is of the wrong type. </sch:assert>
         </sch:rule>
      </sch:pattern>
   </xsd:appinfo>
   <xsd:appinfo>
      <sch:pattern id="ind-def_textfilecontent54_object_verify_filter_state">
         <sch:rule context="ind-def:textfilecontent54_object//oval-def:filter">
            <sch:let name="parent_object" value="ancestor::ind-def:textfilecontent54_object"/>
            <sch:let name="parent_object_id" value="$parent_object/@id"/>
            <sch:let name="state_ref" value="."/>
            <sch:let name="reffed_state"
                     value="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/>
            <sch:let name="state_name" value="local-name($reffed_state)"/>
            <sch:let name="state_namespace" value="namespace-uri($reffed_state)"/>
            <sch:assert test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#independent') and ($state_name='textfilecontent54_state'))">State referenced in filter for <sch:value-of select="name($parent_object)"/> '<sch:value-of select="$parent_object_id"/>' is of the wrong type. </sch:assert>
         </sch:rule>
      </sch:pattern>
   </xsd:appinfo>
   <xsd:appinfo>
      <sch:pattern id="ind-def_variable_object_verify_filter_state">
         <sch:rule context="ind-def:variable_object//oval-def:filter">
            <sch:let name="parent_object" value="ancestor::ind-def:variable_object"/>
            <sch:let name="parent_object_id" value="$parent_object/@id"/>
            <sch:let name="state_ref" value="."/>
            <sch:let name="reffed_state"
                     value="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/>
            <sch:let name="state_name" value="local-name($reffed_state)"/>
            <sch:let name="state_namespace" value="namespace-uri($reffed_state)"/>
            <sch:assert test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#independent') and ($state_name='variable_state'))">State referenced in filter for <sch:value-of select="name($parent_object)"/> '<sch:value-of select="$parent_object_id"/>' is of the wrong type. </sch:assert>
         </sch:rule>
      </sch:pattern>
   </xsd:appinfo>
   <xsd:appinfo>
      <sch:pattern id="ind-def_xmlfilecontent_object_verify_filter_state">
         <sch:rule context="ind-def:xmlfilecontent_object//oval-def:filter">
            <sch:let name="parent_object" value="ancestor::ind-def:xmlfilecontent_object"/>
            <sch:let name="parent_object_id" value="$parent_object/@id"/>
            <sch:let name="state_ref" value="."/>
            <sch:let name="reffed_state"
                     value="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/>
            <sch:let name="state_name" value="local-name($reffed_state)"/>
            <sch:let name="state_namespace" value="namespace-uri($reffed_state)"/>
            <sch:assert test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#independent') and ($state_name='xmlfilecontent_state'))">State referenced in filter for <sch:value-of select="name($parent_object)"/> '<sch:value-of select="$parent_object_id"/>' is of the wrong type. </sch:assert>
         </sch:rule>
      </sch:pattern>
   </xsd:appinfo>
   <xsd:appinfo>
      <sch:pattern id="aix-def_interim_fix_object_verify_filter_state">
         <sch:rule context="aix-def:interim_fix_object//oval-def:filter">
            <sch:let name="parent_object" value="ancestor::aix-def:interim_fix_object"/>
            <sch:let name="parent_object_id" value="$parent_object/@id"/>
            <sch:let name="state_ref" value="."/>
            <sch:let name="reffed_state"
                     value="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/>
            <sch:let name="state_name" value="local-name($reffed_state)"/>
            <sch:let name="state_namespace" value="namespace-uri($reffed_state)"/>
            <sch:assert test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#aix') and ($state_name='interim_fix_state'))">State referenced in filter for <sch:value-of select="name($parent_object)"/> '<sch:value-of select="$parent_object_id"/>' is of the wrong type. </sch:assert>
         </sch:rule>
      </sch:pattern>
   </xsd:appinfo>
   <xsd:appinfo>
      <sch:pattern id="aix-def_fileset_object_verify_filter_state">
         <sch:rule context="aix-def:fileset_object//oval-def:filter">
            <sch:let name="parent_object" value="ancestor::aix-def:fileset_object"/>
            <sch:let name="parent_object_id" value="$parent_object/@id"/>
            <sch:let name="state_ref" value="."/>
            <sch:let name="reffed_state"
                     value="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/>
            <sch:let name="state_name" value="local-name($reffed_state)"/>
            <sch:let name="state_namespace" value="namespace-uri($reffed_state)"/>
            <sch:assert test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#aix') and ($state_name='fileset_state'))">State referenced in filter for <sch:value-of select="name($parent_object)"/> '<sch:value-of select="$parent_object_id"/>' is of the wrong type. </sch:assert>
         </sch:rule>
      </sch:pattern>
   </xsd:appinfo>
   <xsd:appinfo>
      <sch:pattern id="aix-def_fix_object_verify_filter_state">
         <sch:rule context="aix-def:fix_object//oval-def:filter">
            <sch:let name="parent_object" value="ancestor::aix-def:fix_object"/>
            <sch:let name="parent_object_id" value="$parent_object/@id"/>
            <sch:let name="state_ref" value="."/>
            <sch:let name="reffed_state"
                     value="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/>
            <sch:let name="state_name" value="local-name($reffed_state)"/>
            <sch:let name="state_namespace" value="namespace-uri($reffed_state)"/>
            <sch:assert test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#aix') and ($state_name='fix_state'))">State referenced in filter for <sch:value-of select="name($parent_object)"/> '<sch:value-of select="$parent_object_id"/>' is of the wrong type. </sch:assert>
         </sch:rule>
      </sch:pattern>
   </xsd:appinfo>
   <xsd:appinfo>
      <sch:pattern id="catos-def_line_object_verify_filter_state">
         <sch:rule context="catos-def:line_object//oval-def:filter">
            <sch:let name="parent_object" value="ancestor::catos-def:line_object"/>
            <sch:let name="parent_object_id" value="$parent_object/@id"/>
            <sch:let name="state_ref" value="."/>
            <sch:let name="reffed_state"
                     value="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/>
            <sch:let name="state_name" value="local-name($reffed_state)"/>
            <sch:let name="state_namespace" value="namespace-uri($reffed_state)"/>
            <sch:assert test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#catos') and ($state_name='line_state'))">State referenced in filter for <sch:value-of select="name($parent_object)"/> '<sch:value-of select="$parent_object_id"/>' is of the wrong type. </sch:assert>
         </sch:rule>
      </sch:pattern>
   </xsd:appinfo>
   <xsd:appinfo>
      <sch:pattern id="catos-def_module_object_verify_filter_state">
         <sch:rule context="catos-def:module_object//oval-def:filter">
            <sch:let name="parent_object" value="ancestor::catos-def:module_object"/>
            <sch:let name="parent_object_id" value="$parent_object/@id"/>
            <sch:let name="state_ref" value="."/>
            <sch:let name="reffed_state"
                     value="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/>
            <sch:let name="state_name" value="local-name($reffed_state)"/>
            <sch:let name="state_namespace" value="namespace-uri($reffed_state)"/>
            <sch:assert test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#catos') and ($state_name='module_state'))">State referenced in filter for <sch:value-of select="name($parent_object)"/> '<sch:value-of select="$parent_object_id"/>' is of the wrong type. </sch:assert>
         </sch:rule>
      </sch:pattern>
   </xsd:appinfo>
   <xsd:appinfo>
      <sch:pattern id="esx-def_patch56_object_verify_filter_state">
         <sch:rule context="esx-def:patch56_object//oval-def:filter">
            <sch:let name="parent_object" value="ancestor::esx-def:patch56_object"/>
            <sch:let name="parent_object_id" value="$parent_object/@id"/>
            <sch:let name="state_ref" value="."/>
            <sch:let name="reffed_state"
                     value="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/>
            <sch:let name="state_name" value="local-name($reffed_state)"/>
            <sch:let name="state_namespace" value="namespace-uri($reffed_state)"/>
            <sch:assert test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#esx') and ($state_name='patch56_state'))">State referenced in filter for <sch:value-of select="name($parent_object)"/> '<sch:value-of select="$parent_object_id"/>' is of the wrong type. </sch:assert>
         </sch:rule>
      </sch:pattern>
   </xsd:appinfo>
   <xsd:appinfo>
      <sch:pattern id="esx-def_visdkmanagedobject_object_verify_filter_state">
         <sch:rule context="esx-def:visdkmanagedobject_object//oval-def:filter">
            <sch:let name="parent_object" value="ancestor::esx-def:visdkmanagedobject_object"/>
            <sch:let name="parent_object_id" value="$parent_object/@id"/>
            <sch:let name="state_ref" value="."/>
            <sch:let name="reffed_state"
                     value="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/>
            <sch:let name="state_name" value="local-name($reffed_state)"/>
            <sch:let name="state_namespace" value="namespace-uri($reffed_state)"/>
            <sch:assert test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#esx') and ($state_name='visdkmanagedobject_state'))">State referenced in filter for <sch:value-of select="name($parent_object)"/> '<sch:value-of select="$parent_object_id"/>' is of the wrong type. </sch:assert>
         </sch:rule>
      </sch:pattern>
   </xsd:appinfo>
   <xsd:appinfo>
      <sch:pattern id="freebsd-def_portinfo_object_verify_filter_state">
         <sch:rule context="freebsd-def:portinfo_object//oval-def:filter">
            <sch:let name="parent_object" value="ancestor::freebsd-def:portinfo_object"/>
            <sch:let name="parent_object_id" value="$parent_object/@id"/>
            <sch:let name="state_ref" value="."/>
            <sch:let name="reffed_state"
                     value="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/>
            <sch:let name="state_name" value="local-name($reffed_state)"/>
            <sch:let name="state_namespace" value="namespace-uri($reffed_state)"/>
            <sch:assert test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#freebsd') and ($state_name='portinfo_state'))">State referenced in filter for <sch:value-of select="name($parent_object)"/> '<sch:value-of select="$parent_object_id"/>' is of the wrong type. </sch:assert>
         </sch:rule>
      </sch:pattern>
   </xsd:appinfo>
   <xsd:appinfo>
      <sch:pattern id="hpux-def_getconf_object_verify_filter_state">
         <sch:rule context="hpux-def:getconf_object//oval-def:filter">
            <sch:let name="parent_object" value="ancestor::hpux-def:getconf_object"/>
            <sch:let name="parent_object_id" value="$parent_object/@id"/>
            <sch:let name="state_ref" value="."/>
            <sch:let name="reffed_state"
                     value="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/>
            <sch:let name="state_name" value="local-name($reffed_state)"/>
            <sch:let name="state_namespace" value="namespace-uri($reffed_state)"/>
            <sch:assert test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#hpux') and ($state_name='getconf_state'))">State referenced in filter for <sch:value-of select="name($parent_object)"/> '<sch:value-of select="$parent_object_id"/>' is of the wrong type. </sch:assert>
         </sch:rule>
      </sch:pattern>
   </xsd:appinfo>
   <xsd:appinfo>
      <sch:pattern id="hpux-def_ndd_object_verify_filter_state">
         <sch:rule context="hpux-def:ndd_object//oval-def:filter">
            <sch:let name="parent_object" value="ancestor::hpux-def:ndd_object"/>
            <sch:let name="parent_object_id" value="$parent_object/@id"/>
            <sch:let name="state_ref" value="."/>
            <sch:let name="reffed_state"
                     value="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/>
            <sch:let name="state_name" value="local-name($reffed_state)"/>
            <sch:let name="state_namespace" value="namespace-uri($reffed_state)"/>
            <sch:assert test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#hpux') and ($state_name='ndd_state'))">State referenced in filter for <sch:value-of select="name($parent_object)"/> '<sch:value-of select="$parent_object_id"/>' is of the wrong type. </sch:assert>
         </sch:rule>
      </sch:pattern>
   </xsd:appinfo>
   <xsd:appinfo>
      <sch:pattern id="hpux-def_patch53_object_verify_filter_state">
         <sch:rule context="hpux-def:patch53_object//oval-def:filter">
            <sch:let name="parent_object" value="ancestor::hpux-def:patch53_object"/>
            <sch:let name="parent_object_id" value="$parent_object/@id"/>
            <sch:let name="state_ref" value="."/>
            <sch:let name="reffed_state"
                     value="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/>
            <sch:let name="state_name" value="local-name($reffed_state)"/>
            <sch:let name="state_namespace" value="namespace-uri($reffed_state)"/>
            <sch:assert test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#hpux') and ($state_name='patch53_state'))">State referenced in filter for <sch:value-of select="name($parent_object)"/> '<sch:value-of select="$parent_object_id"/>' is of the wrong type. </sch:assert>
         </sch:rule>
      </sch:pattern>
   </xsd:appinfo>
   <xsd:appinfo>
      <sch:pattern id="hpux-def_swlist_object_verify_filter_state">
         <sch:rule context="hpux-def:swlist_object//oval-def:filter">
            <sch:let name="parent_object" value="ancestor::hpux-def:swlist_object"/>
            <sch:let name="parent_object_id" value="$parent_object/@id"/>
            <sch:let name="state_ref" value="."/>
            <sch:let name="reffed_state"
                     value="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/>
            <sch:let name="state_name" value="local-name($reffed_state)"/>
            <sch:let name="state_namespace" value="namespace-uri($reffed_state)"/>
            <sch:assert test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#hpux') and ($state_name='swlist_state'))">State referenced in filter for <sch:value-of select="name($parent_object)"/> '<sch:value-of select="$parent_object_id"/>' is of the wrong type. </sch:assert>
         </sch:rule>
      </sch:pattern>
   </xsd:appinfo>
   <xsd:appinfo>
      <sch:pattern id="hpux-def_trusted_object_verify_filter_state">
         <sch:rule context="hpux-def:trusted_object//oval-def:filter">
            <sch:let name="parent_object" value="ancestor::hpux-def:trusted_object"/>
            <sch:let name="parent_object_id" value="$parent_object/@id"/>
            <sch:let name="state_ref" value="."/>
            <sch:let name="reffed_state"
                     value="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/>
            <sch:let name="state_name" value="local-name($reffed_state)"/>
            <sch:let name="state_namespace" value="namespace-uri($reffed_state)"/>
            <sch:assert test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#hpux') and ($state_name='trusted_state'))">State referenced in filter for <sch:value-of select="name($parent_object)"/> '<sch:value-of select="$parent_object_id"/>' is of the wrong type. </sch:assert>
         </sch:rule>
      </sch:pattern>
   </xsd:appinfo>
   <xsd:appinfo>
      <sch:pattern id="ios-def_global_object_verify_filter_state">
         <sch:rule context="ios-def:global_object//oval-def:filter">
            <sch:let name="parent_object" value="ancestor::ios-def:global_object"/>
            <sch:let name="parent_object_id" value="$parent_object/@id"/>
            <sch:let name="state_ref" value="."/>
            <sch:let name="reffed_state"
                     value="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/>
            <sch:let name="state_name" value="local-name($reffed_state)"/>
            <sch:let name="state_namespace" value="namespace-uri($reffed_state)"/>
            <sch:assert test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#ios') and ($state_name='global_state'))">State referenced in filter for <sch:value-of select="name($parent_object)"/> '<sch:value-of select="$parent_object_id"/>' is of the wrong type. </sch:assert>
         </sch:rule>
      </sch:pattern>
   </xsd:appinfo>
   <xsd:appinfo>
      <sch:pattern id="ios-def_interface_object_verify_filter_state">
         <sch:rule context="ios-def:interface_object//oval-def:filter">
            <sch:let name="parent_object" value="ancestor::ios-def:interface_object"/>
            <sch:let name="parent_object_id" value="$parent_object/@id"/>
            <sch:let name="state_ref" value="."/>
            <sch:let name="reffed_state"
                     value="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/>
            <sch:let name="state_name" value="local-name($reffed_state)"/>
            <sch:let name="state_namespace" value="namespace-uri($reffed_state)"/>
            <sch:assert test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#ios') and ($state_name='interface_state'))">State referenced in filter for <sch:value-of select="name($parent_object)"/> '<sch:value-of select="$parent_object_id"/>' is of the wrong type. </sch:assert>
         </sch:rule>
      </sch:pattern>
   </xsd:appinfo>
   <xsd:appinfo>
      <sch:pattern id="ios-def_line_object_verify_filter_state">
         <sch:rule context="ios-def:line_object//oval-def:filter">
            <sch:let name="parent_object" value="ancestor::ios-def:line_object"/>
            <sch:let name="parent_object_id" value="$parent_object/@id"/>
            <sch:let name="state_ref" value="."/>
            <sch:let name="reffed_state"
                     value="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/>
            <sch:let name="state_name" value="local-name($reffed_state)"/>
            <sch:let name="state_namespace" value="namespace-uri($reffed_state)"/>
            <sch:assert test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#ios') and ($state_name='line_state'))">State referenced in filter for <sch:value-of select="name($parent_object)"/> '<sch:value-of select="$parent_object_id"/>' is of the wrong type. </sch:assert>
         </sch:rule>
      </sch:pattern>
   </xsd:appinfo>
   <xsd:appinfo>
      <sch:pattern id="linux-def_dpkginfo_object_verify_filter_state">
         <sch:rule context="linux-def:dpkginfo_object//oval-def:filter">
            <sch:let name="parent_object" value="ancestor::linux-def:dpkginfo_object"/>
            <sch:let name="parent_object_id" value="$parent_object/@id"/>
            <sch:let name="state_ref" value="."/>
            <sch:let name="reffed_state"
                     value="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/>
            <sch:let name="state_name" value="local-name($reffed_state)"/>
            <sch:let name="state_namespace" value="namespace-uri($reffed_state)"/>
            <sch:assert test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#linux') and ($state_name='dpkginfo_state'))">State referenced in filter for <sch:value-of select="name($parent_object)"/> '<sch:value-of select="$parent_object_id"/>' is of the wrong type. </sch:assert>
         </sch:rule>
      </sch:pattern>
   </xsd:appinfo>
   <xsd:appinfo>
      <sch:pattern id="linux-def_iflisteners_object_verify_filter_state">
         <sch:rule context="linux-def:iflisteners_object//oval-def:filter">
            <sch:let name="parent_object" value="ancestor::linux-def:iflisteners_object"/>
            <sch:let name="parent_object_id" value="$parent_object/@id"/>
            <sch:let name="state_ref" value="."/>
            <sch:let name="reffed_state"
                     value="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/>
            <sch:let name="state_name" value="local-name($reffed_state)"/>
            <sch:let name="state_namespace" value="namespace-uri($reffed_state)"/>
            <sch:assert test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#linux') and ($state_name='iflisteners_state'))">State referenced in filter for <sch:value-of select="name($parent_object)"/> '<sch:value-of select="$parent_object_id"/>' is of the wrong type. </sch:assert>
         </sch:rule>
      </sch:pattern>
   </xsd:appinfo>
   <xsd:appinfo>
      <sch:pattern id="linux-def_inetlisteningservers_object_verify_filter_state">
         <sch:rule context="linux-def:inetlisteningservers_object//oval-def:filter">
            <sch:let name="parent_object" value="ancestor::linux-def:inetlisteningservers_object"/>
            <sch:let name="parent_object_id" value="$parent_object/@id"/>
            <sch:let name="state_ref" value="."/>
            <sch:let name="reffed_state"
                     value="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/>
            <sch:let name="state_name" value="local-name($reffed_state)"/>
            <sch:let name="state_namespace" value="namespace-uri($reffed_state)"/>
            <sch:assert test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#linux') and ($state_name='inetlisteningservers_state'))">State referenced in filter for <sch:value-of select="name($parent_object)"/> '<sch:value-of select="$parent_object_id"/>' is of the wrong type. </sch:assert>
         </sch:rule>
      </sch:pattern>
   </xsd:appinfo>
   <xsd:appinfo>
      <sch:pattern id="linux-def_partition_object_verify_filter_state">
         <sch:rule context="linux-def:partition_object//oval-def:filter">
            <sch:let name="parent_object" value="ancestor::linux-def:partition_object"/>
            <sch:let name="parent_object_id" value="$parent_object/@id"/>
            <sch:let name="state_ref" value="."/>
            <sch:let name="reffed_state"
                     value="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/>
            <sch:let name="state_name" value="local-name($reffed_state)"/>
            <sch:let name="state_namespace" value="namespace-uri($reffed_state)"/>
            <sch:assert test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#linux') and ($state_name='partition_state'))">State referenced in filter for <sch:value-of select="name($parent_object)"/> '<sch:value-of select="$parent_object_id"/>' is of the wrong type. </sch:assert>
         </sch:rule>
      </sch:pattern>
   </xsd:appinfo>
   <xsd:appinfo>
      <sch:pattern id="linux-def_rpminfo_object_verify_filter_state">
         <sch:rule context="linux-def:rpminfo_object//oval-def:filter">
            <sch:let name="parent_object" value="ancestor::linux-def:rpminfo_object"/>
            <sch:let name="parent_object_id" value="$parent_object/@id"/>
            <sch:let name="state_ref" value="."/>
            <sch:let name="reffed_state"
                     value="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/>
            <sch:let name="state_name" value="local-name($reffed_state)"/>
            <sch:let name="state_namespace" value="namespace-uri($reffed_state)"/>
            <sch:assert test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#linux') and ($state_name='rpminfo_state'))">State referenced in filter for <sch:value-of select="name($parent_object)"/> '<sch:value-of select="$parent_object_id"/>' is of the wrong type. </sch:assert>
         </sch:rule>
      </sch:pattern>
   </xsd:appinfo>
   <xsd:appinfo>
      <sch:pattern id="linux-def_rpmverify_object_verify_filter_state">
         <sch:rule context="linux-def:rpmverify_object//oval-def:filter">
            <sch:let name="parent_object" value="ancestor::linux-def:rpmverify_object"/>
            <sch:let name="parent_object_id" value="$parent_object/@id"/>
            <sch:let name="state_ref" value="."/>
            <sch:let name="reffed_state"
                     value="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/>
            <sch:let name="state_name" value="local-name($reffed_state)"/>
            <sch:let name="state_namespace" value="namespace-uri($reffed_state)"/>
            <sch:assert test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#linux') and ($state_name='rpmverify_state'))">State referenced in filter for <sch:value-of select="name($parent_object)"/> '<sch:value-of select="$parent_object_id"/>' is of the wrong type. </sch:assert>
         </sch:rule>
      </sch:pattern>
   </xsd:appinfo>
   <xsd:appinfo>
      <sch:pattern id="linux-def_rpmverifyfile_object_verify_filter_state">
         <sch:rule context="linux-def:rpmverifyfile_object//oval-def:filter">
            <sch:let name="parent_object" value="ancestor::linux-def:rpmverifyfile_object"/>
            <sch:let name="parent_object_id" value="$parent_object/@id"/>
            <sch:let name="state_ref" value="."/>
            <sch:let name="reffed_state"
                     value="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/>
            <sch:let name="state_name" value="local-name($reffed_state)"/>
            <sch:let name="state_namespace" value="namespace-uri($reffed_state)"/>
            <sch:assert test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#linux') and ($state_name='rpmverifyfile_state'))">State referenced in filter for <sch:value-of select="name($parent_object)"/> '<sch:value-of select="$parent_object_id"/>' is of the wrong type. </sch:assert>
         </sch:rule>
      </sch:pattern>
   </xsd:appinfo>
   <xsd:appinfo>
      <sch:pattern id="linux-def_rpmverifypackage_object_verify_filter_state">
         <sch:rule context="linux-def:rpmverifypackage_object//oval-def:filter">
            <sch:let name="parent_object" value="ancestor::linux-def:rpmverifypackage_object"/>
            <sch:let name="parent_object_id" value="$parent_object/@id"/>
            <sch:let name="state_ref" value="."/>
            <sch:let name="reffed_state"
                     value="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/>
            <sch:let name="state_name" value="local-name($reffed_state)"/>
            <sch:let name="state_namespace" value="namespace-uri($reffed_state)"/>
            <sch:assert test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#linux') and ($state_name='rpmverifypackage_state'))">State referenced in filter for <sch:value-of select="name($parent_object)"/> '<sch:value-of select="$parent_object_id"/>' is of the wrong type. </sch:assert>
         </sch:rule>
      </sch:pattern>
   </xsd:appinfo>
   <xsd:appinfo>
      <sch:pattern id="linux-def_selinuxboolean_object_verify_filter_state">
         <sch:rule context="linux-def:selinuxboolean_object//oval-def:filter">
            <sch:let name="parent_object" value="ancestor::linux-def:selinuxboolean_object"/>
            <sch:let name="parent_object_id" value="$parent_object/@id"/>
            <sch:let name="state_ref" value="."/>
            <sch:let name="reffed_state"
                     value="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/>
            <sch:let name="state_name" value="local-name($reffed_state)"/>
            <sch:let name="state_namespace" value="namespace-uri($reffed_state)"/>
            <sch:assert test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#linux') and ($state_name='selinuxboolean_state'))">State referenced in filter for <sch:value-of select="name($parent_object)"/> '<sch:value-of select="$parent_object_id"/>' is of the wrong type. </sch:assert>
         </sch:rule>
      </sch:pattern>
   </xsd:appinfo>
   <xsd:appinfo>
      <sch:pattern id="linux-def_selinuxsecuritycontext_object_verify_filter_state">
         <sch:rule context="linux-def:selinuxsecuritycontext_object//oval-def:filter">
            <sch:let name="parent_object" value="ancestor::linux-def:selinuxsecuritycontext_object"/>
            <sch:let name="parent_object_id" value="$parent_object/@id"/>
            <sch:let name="state_ref" value="."/>
            <sch:let name="reffed_state"
                     value="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/>
            <sch:let name="state_name" value="local-name($reffed_state)"/>
            <sch:let name="state_namespace" value="namespace-uri($reffed_state)"/>
            <sch:assert test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#linux') and ($state_name='selinuxsecuritycontext_state'))">State referenced in filter for <sch:value-of select="name($parent_object)"/> '<sch:value-of select="$parent_object_id"/>' is of the wrong type. </sch:assert>
         </sch:rule>
      </sch:pattern>
   </xsd:appinfo>
   <xsd:appinfo>
      <sch:pattern id="linux-def_slackwarepkginfo_object_verify_filter_state">
         <sch:rule context="linux-def:slackwarepkginfo_object//oval-def:filter">
            <sch:let name="parent_object" value="ancestor::linux-def:slackwarepkginfo_object"/>
            <sch:let name="parent_object_id" value="$parent_object/@id"/>
            <sch:let name="state_ref" value="."/>
            <sch:let name="reffed_state"
                     value="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/>
            <sch:let name="state_name" value="local-name($reffed_state)"/>
            <sch:let name="state_namespace" value="namespace-uri($reffed_state)"/>
            <sch:assert test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#linux') and ($state_name='slackwarepkginfo_state'))">State referenced in filter for <sch:value-of select="name($parent_object)"/> '<sch:value-of select="$parent_object_id"/>' is of the wrong type. </sch:assert>
         </sch:rule>
      </sch:pattern>
   </xsd:appinfo>
   <xsd:appinfo>
      <sch:pattern id="macos-def_accountinfo_object_verify_filter_state">
         <sch:rule context="macos-def:accountinfo_object//oval-def:filter">
            <sch:let name="parent_object" value="ancestor::macos-def:accountinfo_object"/>
            <sch:let name="parent_object_id" value="$parent_object/@id"/>
            <sch:let name="state_ref" value="."/>
            <sch:let name="reffed_state"
                     value="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/>
            <sch:let name="state_name" value="local-name($reffed_state)"/>
            <sch:let name="state_namespace" value="namespace-uri($reffed_state)"/>
            <sch:assert test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#macos') and ($state_name='accountinfo_state'))">State referenced in filter for <sch:value-of select="name($parent_object)"/> '<sch:value-of select="$parent_object_id"/>' is of the wrong type. </sch:assert>
         </sch:rule>
      </sch:pattern>
   </xsd:appinfo>
   <xsd:appinfo>
      <sch:pattern id="macos-def_diskutil_object_verify_filter_state">
         <sch:rule context="macos-def:diskutil_object//oval-def:filter">
            <sch:let name="parent_object" value="ancestor::macos-def:diskutil_object"/>
            <sch:let name="parent_object_id" value="$parent_object/@id"/>
            <sch:let name="state_ref" value="."/>
            <sch:let name="reffed_state"
                     value="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/>
            <sch:let name="state_name" value="local-name($reffed_state)"/>
            <sch:let name="state_namespace" value="namespace-uri($reffed_state)"/>
            <sch:assert test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#macos') and ($state_name='diskutil_state'))">State referenced in filter for <sch:value-of select="name($parent_object)"/> '<sch:value-of select="$parent_object_id"/>' is of the wrong type. </sch:assert>
         </sch:rule>
      </sch:pattern>
   </xsd:appinfo>
   <xsd:appinfo>
      <sch:pattern id="macos-def_inetlisteningservers_object_verify_filter_state">
         <sch:rule context="macos-def:inetlisteningservers_object//oval-def:filter">
            <sch:let name="parent_object" value="ancestor::macos-def:inetlisteningservers_object"/>
            <sch:let name="parent_object_id" value="$parent_object/@id"/>
            <sch:let name="state_ref" value="."/>
            <sch:let name="reffed_state"
                     value="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/>
            <sch:let name="state_name" value="local-name($reffed_state)"/>
            <sch:let name="state_namespace" value="namespace-uri($reffed_state)"/>
            <sch:assert test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#macos') and ($state_name='inetlisteningservers_state'))">State referenced in filter for <sch:value-of select="name($parent_object)"/> '<sch:value-of select="$parent_object_id"/>' is of the wrong type. </sch:assert>
         </sch:rule>
      </sch:pattern>
   </xsd:appinfo>
   <xsd:appinfo>
      <sch:pattern id="macos-def_inetlisteningserver510_object_verify_filter_state">
         <sch:rule context="macos-def:inetlisteningserver510_object//oval-def:filter">
            <sch:let name="parent_object" value="ancestor::macos-def:inetlisteningserver510_object"/>
            <sch:let name="parent_object_id" value="$parent_object/@id"/>
            <sch:let name="state_ref" value="."/>
            <sch:let name="reffed_state"
                     value="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/>
            <sch:let name="state_name" value="local-name($reffed_state)"/>
            <sch:let name="state_namespace" value="namespace-uri($reffed_state)"/>
            <sch:assert test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#macos') and ($state_name='inetlisteningserver510_state'))">State referenced in filter for <sch:value-of select="name($parent_object)"/> '<sch:value-of select="$parent_object_id"/>' is of the wrong type. </sch:assert>
         </sch:rule>
      </sch:pattern>
   </xsd:appinfo>
   <xsd:appinfo>
      <sch:pattern id="macos-def_nvram_object_verify_filter_state">
         <sch:rule context="macos-def:nvram_object//oval-def:filter">
            <sch:let name="parent_object" value="ancestor::macos-def:nvram_object"/>
            <sch:let name="parent_object_id" value="$parent_object/@id"/>
            <sch:let name="state_ref" value="."/>
            <sch:let name="reffed_state"
                     value="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/>
            <sch:let name="state_name" value="local-name($reffed_state)"/>
            <sch:let name="state_namespace" value="namespace-uri($reffed_state)"/>
            <sch:assert test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#macos') and ($state_name='nvram_state'))">State referenced in filter for <sch:value-of select="name($parent_object)"/> '<sch:value-of select="$parent_object_id"/>' is of the wrong type. </sch:assert>
         </sch:rule>
      </sch:pattern>
   </xsd:appinfo>
   <xsd:appinfo>
      <sch:pattern id="macos-def_plist_object_verify_filter_state">
         <sch:rule context="macos-def:plist_object//oval-def:filter">
            <sch:let name="parent_object" value="ancestor::macos-def:plist_object"/>
            <sch:let name="parent_object_id" value="$parent_object/@id"/>
            <sch:let name="state_ref" value="."/>
            <sch:let name="reffed_state"
                     value="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/>
            <sch:let name="state_name" value="local-name($reffed_state)"/>
            <sch:let name="state_namespace" value="namespace-uri($reffed_state)"/>
            <sch:assert test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#macos') and ($state_name='plist_state'))">State referenced in filter for <sch:value-of select="name($parent_object)"/> '<sch:value-of select="$parent_object_id"/>' is of the wrong type. </sch:assert>
         </sch:rule>
      </sch:pattern>
   </xsd:appinfo>
   <xsd:appinfo>
      <sch:pattern id="macos-def_plist510_object_verify_filter_state">
         <sch:rule context="macos-def:plist510_object//oval-def:filter">
            <sch:let name="parent_object" value="ancestor::macos-def:plist510_object"/>
            <sch:let name="parent_object_id" value="$parent_object/@id"/>
            <sch:let name="state_ref" value="."/>
            <sch:let name="reffed_state"
                     value="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/>
            <sch:let name="state_name" value="local-name($reffed_state)"/>
            <sch:let name="state_namespace" value="namespace-uri($reffed_state)"/>
            <sch:assert test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#macos') and ($state_name='plist510_state'))">State referenced in filter for <sch:value-of select="name($parent_object)"/> '<sch:value-of select="$parent_object_id"/>' is of the wrong type. </sch:assert>
         </sch:rule>
      </sch:pattern>
   </xsd:appinfo>
   <xsd:appinfo>
      <sch:pattern id="macos-def_pwpolicy_object_verify_filter_state">
         <sch:rule context="macos-def:pwpolicy_object//oval-def:filter">
            <sch:let name="parent_object" value="ancestor::macos-def:pwpolicy_object"/>
            <sch:let name="parent_object_id" value="$parent_object/@id"/>
            <sch:let name="state_ref" value="."/>
            <sch:let name="reffed_state"
                     value="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/>
            <sch:let name="state_name" value="local-name($reffed_state)"/>
            <sch:let name="state_namespace" value="namespace-uri($reffed_state)"/>
            <sch:assert test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#macos') and ($state_name='pwpolicy_state'))">State referenced in filter for <sch:value-of select="name($parent_object)"/> '<sch:value-of select="$parent_object_id"/>' is of the wrong type. </sch:assert>
         </sch:rule>
      </sch:pattern>
   </xsd:appinfo>
   <xsd:appinfo>
      <sch:pattern id="macos-def_pwpolicy59_object_verify_filter_state">
         <sch:rule context="macos-def:pwpolicy59_object//oval-def:filter">
            <sch:let name="parent_object" value="ancestor::macos-def:pwpolicy59_object"/>
            <sch:let name="parent_object_id" value="$parent_object/@id"/>
            <sch:let name="state_ref" value="."/>
            <sch:let name="reffed_state"
                     value="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/>
            <sch:let name="state_name" value="local-name($reffed_state)"/>
            <sch:let name="state_namespace" value="namespace-uri($reffed_state)"/>
            <sch:assert test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#macos') and ($state_name='pwpolicy59_state'))">State referenced in filter for <sch:value-of select="name($parent_object)"/> '<sch:value-of select="$parent_object_id"/>' is of the wrong type. </sch:assert>
         </sch:rule>
      </sch:pattern>
   </xsd:appinfo>
   <xsd:appinfo>
      <sch:pattern id="pixos-def_line_object_verify_filter_state">
         <sch:rule context="pixos-def:line_object//oval-def:filter">
            <sch:let name="parent_object" value="ancestor::pixos-def:line_object"/>
            <sch:let name="parent_object_id" value="$parent_object/@id"/>
            <sch:let name="state_ref" value="."/>
            <sch:let name="reffed_state"
                     value="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/>
            <sch:let name="state_name" value="local-name($reffed_state)"/>
            <sch:let name="state_namespace" value="namespace-uri($reffed_state)"/>
            <sch:assert test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#pixos') and ($state_name='line_state'))">State referenced in filter for <sch:value-of select="name($parent_object)"/> '<sch:value-of select="$parent_object_id"/>' is of the wrong type. </sch:assert>
         </sch:rule>
      </sch:pattern>
   </xsd:appinfo>
   <xsd:appinfo>
      <sch:pattern id="sp-def_spwebapplication_object_verify_filter_state">
         <sch:rule context="sp-def:spwebapplication_object//oval-def:filter">
            <sch:let name="parent_object" value="ancestor::sp-def:spwebapplication_object"/>
            <sch:let name="parent_object_id" value="$parent_object/@id"/>
            <sch:let name="state_ref" value="."/>
            <sch:let name="reffed_state"
                     value="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/>
            <sch:let name="state_name" value="local-name($reffed_state)"/>
            <sch:let name="state_namespace" value="namespace-uri($reffed_state)"/>
            <sch:assert test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#sharepoint') and ($state_name='spwebapplication_state'))">State referenced in filter for <sch:value-of select="name($parent_object)"/> '<sch:value-of select="$parent_object_id"/>' is of the wrong type. </sch:assert>
         </sch:rule>
      </sch:pattern>
   </xsd:appinfo>
   <xsd:appinfo>
      <sch:pattern id="sp-def_spgroup_object_verify_filter_state">
         <sch:rule context="sp-def:spgroup_object//oval-def:filter">
            <sch:let name="parent_object" value="ancestor::sp-def:spgroup_object"/>
            <sch:let name="parent_object_id" value="$parent_object/@id"/>
            <sch:let name="state_ref" value="."/>
            <sch:let name="reffed_state"
                     value="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/>
            <sch:let name="state_name" value="local-name($reffed_state)"/>
            <sch:let name="state_namespace" value="namespace-uri($reffed_state)"/>
            <sch:assert test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#sharepoint') and ($state_name='spgroup_state'))">State referenced in filter for <sch:value-of select="name($parent_object)"/> '<sch:value-of select="$parent_object_id"/>' is of the wrong type. </sch:assert>
         </sch:rule>
      </sch:pattern>
   </xsd:appinfo>
   <xsd:appinfo>
      <sch:pattern id="sp-def_spweb_object_verify_filter_state">
         <sch:rule context="sp-def:spweb_object//oval-def:filter">
            <sch:let name="parent_object" value="ancestor::sp-def:spweb_object"/>
            <sch:let name="parent_object_id" value="$parent_object/@id"/>
            <sch:let name="state_ref" value="."/>
            <sch:let name="reffed_state"
                     value="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/>
            <sch:let name="state_name" value="local-name($reffed_state)"/>
            <sch:let name="state_namespace" value="namespace-uri($reffed_state)"/>
            <sch:assert test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#sharepoint') and ($state_name='spweb_state'))">State referenced in filter for <sch:value-of select="name($parent_object)"/> '<sch:value-of select="$parent_object_id"/>' is of the wrong type. </sch:assert>
         </sch:rule>
      </sch:pattern>
   </xsd:appinfo>
   <xsd:appinfo>
      <sch:pattern id="sp-def_splist_object_verify_filter_state">
         <sch:rule context="sp-def:splist_object//oval-def:filter">
            <sch:let name="parent_object" value="ancestor::sp-def:splist_object"/>
            <sch:let name="parent_object_id" value="$parent_object/@id"/>
            <sch:let name="state_ref" value="."/>
            <sch:let name="reffed_state"
                     value="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/>
            <sch:let name="state_name" value="local-name($reffed_state)"/>
            <sch:let name="state_namespace" value="namespace-uri($reffed_state)"/>
            <sch:assert test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#sharepoint') and ($state_name='splist_state'))">State referenced in filter for <sch:value-of select="name($parent_object)"/> '<sch:value-of select="$parent_object_id"/>' is of the wrong type. </sch:assert>
         </sch:rule>
      </sch:pattern>
   </xsd:appinfo>
   <xsd:appinfo>
      <sch:pattern id="sp-def_spantivirussettings_object_verify_filter_state">
         <sch:rule context="sp-def:spantivirussettings_object//oval-def:filter">
            <sch:let name="parent_object" value="ancestor::sp-def:spantivirussettings_object"/>
            <sch:let name="parent_object_id" value="$parent_object/@id"/>
            <sch:let name="state_ref" value="."/>
            <sch:let name="reffed_state"
                     value="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/>
            <sch:let name="state_name" value="local-name($reffed_state)"/>
            <sch:let name="state_namespace" value="namespace-uri($reffed_state)"/>
            <sch:assert test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#sharepoint') and ($state_name='spantivirussettings_state'))">State referenced in filter for <sch:value-of select="name($parent_object)"/> '<sch:value-of select="$parent_object_id"/>' is of the wrong type. </sch:assert>
         </sch:rule>
      </sch:pattern>
   </xsd:appinfo>
   <xsd:appinfo>
      <sch:pattern id="sp-def_spsiteadministration_object_verify_filter_state">
         <sch:rule context="sp-def:spsiteadministration_object//oval-def:filter">
            <sch:let name="parent_object" value="ancestor::sp-def:spsiteadministration_object"/>
            <sch:let name="parent_object_id" value="$parent_object/@id"/>
            <sch:let name="state_ref" value="."/>
            <sch:let name="reffed_state"
                     value="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/>
            <sch:let name="state_name" value="local-name($reffed_state)"/>
            <sch:let name="state_namespace" value="namespace-uri($reffed_state)"/>
            <sch:assert test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#sharepoint') and ($state_name='spsiteadministration_state'))">State referenced in filter for <sch:value-of select="name($parent_object)"/> '<sch:value-of select="$parent_object_id"/>' is of the wrong type. </sch:assert>
         </sch:rule>
      </sch:pattern>
   </xsd:appinfo>
   <xsd:appinfo>
      <sch:pattern id="sp-def_spsite_object_verify_filter_state">
         <sch:rule context="sp-def:spsite_object//oval-def:filter">
            <sch:let name="parent_object" value="ancestor::sp-def:spsite_object"/>
            <sch:let name="parent_object_id" value="$parent_object/@id"/>
            <sch:let name="state_ref" value="."/>
            <sch:let name="reffed_state"
                     value="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/>
            <sch:let name="state_name" value="local-name($reffed_state)"/>
            <sch:let name="state_namespace" value="namespace-uri($reffed_state)"/>
            <sch:assert test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#sharepoint') and ($state_name='spsite_state'))">State referenced in filter for <sch:value-of select="name($parent_object)"/> '<sch:value-of select="$parent_object_id"/>' is of the wrong type. </sch:assert>
         </sch:rule>
      </sch:pattern>
   </xsd:appinfo>
   <xsd:appinfo>
      <sch:pattern id="sp-def_spcrawlrule_object_verify_filter_state">
         <sch:rule context="sp-def:spcrawlrule_object//oval-def:filter">
            <sch:let name="parent_object" value="ancestor::sp-def:spcrawlrule_object"/>
            <sch:let name="parent_object_id" value="$parent_object/@id"/>
            <sch:let name="state_ref" value="."/>
            <sch:let name="reffed_state"
                     value="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/>
            <sch:let name="state_name" value="local-name($reffed_state)"/>
            <sch:let name="state_namespace" value="namespace-uri($reffed_state)"/>
            <sch:assert test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#sharepoint') and ($state_name='spcrawlrule_state'))">State referenced in filter for <sch:value-of select="name($parent_object)"/> '<sch:value-of select="$parent_object_id"/>' is of the wrong type. </sch:assert>
         </sch:rule>
      </sch:pattern>
   </xsd:appinfo>
   <xsd:appinfo>
      <sch:pattern id="sp-def_spjobdefinition_object_verify_filter_state">
         <sch:rule context="sp-def:spjobdefinition_object//oval-def:filter">
            <sch:let name="parent_object" value="ancestor::sp-def:spjobdefinition_object"/>
            <sch:let name="parent_object_id" value="$parent_object/@id"/>
            <sch:let name="state_ref" value="."/>
            <sch:let name="reffed_state"
                     value="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/>
            <sch:let name="state_name" value="local-name($reffed_state)"/>
            <sch:let name="state_namespace" value="namespace-uri($reffed_state)"/>
            <sch:assert test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#sharepoint') and ($state_name='spjobdefinition_state'))">State referenced in filter for <sch:value-of select="name($parent_object)"/> '<sch:value-of select="$parent_object_id"/>' is of the wrong type. </sch:assert>
         </sch:rule>
      </sch:pattern>
   </xsd:appinfo>
   <xsd:appinfo>
      <sch:pattern id="sp-def_spjobdefinition510_object_verify_filter_state">
         <sch:rule context="sp-def:spjobdefinition510_object//oval-def:filter">
            <sch:let name="parent_object" value="ancestor::sp-def:spjobdefinition510_object"/>
            <sch:let name="parent_object_id" value="$parent_object/@id"/>
            <sch:let name="state_ref" value="."/>
            <sch:let name="reffed_state"
                     value="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/>
            <sch:let name="state_name" value="local-name($reffed_state)"/>
            <sch:let name="state_namespace" value="namespace-uri($reffed_state)"/>
            <sch:assert test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#sharepoint') and ($state_name='spjobdefinition510_state'))">State referenced in filter for <sch:value-of select="name($parent_object)"/> '<sch:value-of select="$parent_object_id"/>' is of the wrong type. </sch:assert>
         </sch:rule>
      </sch:pattern>
   </xsd:appinfo>
   <xsd:appinfo>
      <sch:pattern id="sp-def_bestbet_object_verify_filter_state">
         <sch:rule context="sp-def:bestbet_object//oval-def:filter">
            <sch:let name="parent_object" value="ancestor::sp-def:bestbet_object"/>
            <sch:let name="parent_object_id" value="$parent_object/@id"/>
            <sch:let name="state_ref" value="."/>
            <sch:let name="reffed_state"
                     value="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/>
            <sch:let name="state_name" value="local-name($reffed_state)"/>
            <sch:let name="state_namespace" value="namespace-uri($reffed_state)"/>
            <sch:assert test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#sharepoint') and ($state_name='bestbet_state'))">State referenced in filter for <sch:value-of select="name($parent_object)"/> '<sch:value-of select="$parent_object_id"/>' is of the wrong type. </sch:assert>
         </sch:rule>
      </sch:pattern>
   </xsd:appinfo>
   <xsd:appinfo>
      <sch:pattern id="sp-def_infopolicycoll_object_verify_filter_state">
         <sch:rule context="sp-def:infopolicycoll_object//oval-def:filter">
            <sch:let name="parent_object" value="ancestor::sp-def:infopolicycoll_object"/>
            <sch:let name="parent_object_id" value="$parent_object/@id"/>
            <sch:let name="state_ref" value="."/>
            <sch:let name="reffed_state"
                     value="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/>
            <sch:let name="state_name" value="local-name($reffed_state)"/>
            <sch:let name="state_namespace" value="namespace-uri($reffed_state)"/>
            <sch:assert test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#sharepoint') and ($state_name='infopolicycoll_state'))">State referenced in filter for <sch:value-of select="name($parent_object)"/> '<sch:value-of select="$parent_object_id"/>' is of the wrong type. </sch:assert>
         </sch:rule>
      </sch:pattern>
   </xsd:appinfo>
   <xsd:appinfo>
      <sch:pattern id="sp-def_spdiagnosticsservice_object_verify_filter_state">
         <sch:rule context="sp-def:spdiagnosticsservice_object//oval-def:filter">
            <sch:let name="parent_object" value="ancestor::sp-def:spdiagnosticsservice_object"/>
            <sch:let name="parent_object_id" value="$parent_object/@id"/>
            <sch:let name="state_ref" value="."/>
            <sch:let name="reffed_state"
                     value="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/>
            <sch:let name="state_name" value="local-name($reffed_state)"/>
            <sch:let name="state_namespace" value="namespace-uri($reffed_state)"/>
            <sch:assert test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#sharepoint') and ($state_name='spdiagnosticsservice_state'))">State referenced in filter for <sch:value-of select="name($parent_object)"/> '<sch:value-of select="$parent_object_id"/>' is of the wrong type. </sch:assert>
         </sch:rule>
      </sch:pattern>
   </xsd:appinfo>
   <xsd:appinfo>
      <sch:pattern id="sp-def_spdiagnosticslevel_object_verify_filter_state">
         <sch:rule context="sp-def:spdiagnosticslevel_object//oval-def:filter">
            <sch:let name="parent_object" value="ancestor::sp-def:spdiagnosticslevel_object"/>
            <sch:let name="parent_object_id" value="$parent_object/@id"/>
            <sch:let name="state_ref" value="."/>
            <sch:let name="reffed_state"
                     value="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/>
            <sch:let name="state_name" value="local-name($reffed_state)"/>
            <sch:let name="state_namespace" value="namespace-uri($reffed_state)"/>
            <sch:assert test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#sharepoint') and ($state_name='spdiagnosticslevel_state'))">State referenced in filter for <sch:value-of select="name($parent_object)"/> '<sch:value-of select="$parent_object_id"/>' is of the wrong type. </sch:assert>
         </sch:rule>
      </sch:pattern>
   </xsd:appinfo>
   <xsd:appinfo>
      <sch:pattern id="sp-def_sppolicyfeature_object_verify_filter_state">
         <sch:rule context="sp-def:sppolicyfeature_object//oval-def:filter">
            <sch:let name="parent_object" value="ancestor::sp-def:sppolicyfeature_object"/>
            <sch:let name="parent_object_id" value="$parent_object/@id"/>
            <sch:let name="state_ref" value="."/>
            <sch:let name="reffed_state"
                     value="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/>
            <sch:let name="state_name" value="local-name($reffed_state)"/>
            <sch:let name="state_namespace" value="namespace-uri($reffed_state)"/>
            <sch:assert test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#sharepoint') and ($state_name='sppolicyfeature_state'))">State referenced in filter for <sch:value-of select="name($parent_object)"/> '<sch:value-of select="$parent_object_id"/>' is of the wrong type. </sch:assert>
         </sch:rule>
      </sch:pattern>
   </xsd:appinfo>
   <xsd:appinfo>
      <sch:pattern id="sol-def_ndd_object_verify_filter_state">
         <sch:rule context="sol-def:ndd_object//oval-def:filter">
            <sch:let name="parent_object" value="ancestor::sol-def:ndd_object"/>
            <sch:let name="parent_object_id" value="$parent_object/@id"/>
            <sch:let name="state_ref" value="."/>
            <sch:let name="reffed_state"
                     value="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/>
            <sch:let name="state_name" value="local-name($reffed_state)"/>
            <sch:let name="state_namespace" value="namespace-uri($reffed_state)"/>
            <sch:assert test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#solaris') and ($state_name='ndd_state'))">State referenced in filter for <sch:value-of select="name($parent_object)"/> '<sch:value-of select="$parent_object_id"/>' is of the wrong type. </sch:assert>
         </sch:rule>
      </sch:pattern>
   </xsd:appinfo>
   <xsd:appinfo>
      <sch:pattern id="sol-def_package_object_verify_filter_state">
         <sch:rule context="sol-def:package_object//oval-def:filter">
            <sch:let name="parent_object" value="ancestor::sol-def:package_object"/>
            <sch:let name="parent_object_id" value="$parent_object/@id"/>
            <sch:let name="state_ref" value="."/>
            <sch:let name="reffed_state"
                     value="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/>
            <sch:let name="state_name" value="local-name($reffed_state)"/>
            <sch:let name="state_namespace" value="namespace-uri($reffed_state)"/>
            <sch:assert test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#solaris') and ($state_name='package_state'))">State referenced in filter for <sch:value-of select="name($parent_object)"/> '<sch:value-of select="$parent_object_id"/>' is of the wrong type. </sch:assert>
         </sch:rule>
      </sch:pattern>
   </xsd:appinfo>
   <xsd:appinfo>
      <sch:pattern id="sol-def_packagecheck_object_verify_filter_state">
         <sch:rule context="sol-def:packagecheck_object//oval-def:filter">
            <sch:let name="parent_object" value="ancestor::sol-def:packagecheck_object"/>
            <sch:let name="parent_object_id" value="$parent_object/@id"/>
            <sch:let name="state_ref" value="."/>
            <sch:let name="reffed_state"
                     value="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/>
            <sch:let name="state_name" value="local-name($reffed_state)"/>
            <sch:let name="state_namespace" value="namespace-uri($reffed_state)"/>
            <sch:assert test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#solaris') and ($state_name='packagecheck_state'))">State referenced in filter for <sch:value-of select="name($parent_object)"/> '<sch:value-of select="$parent_object_id"/>' is of the wrong type. </sch:assert>
         </sch:rule>
      </sch:pattern>
   </xsd:appinfo>
   <xsd:appinfo>
      <sch:pattern id="sol-def_patch54_object_verify_filter_state">
         <sch:rule context="sol-def:patch54_object//oval-def:filter">
            <sch:let name="parent_object" value="ancestor::sol-def:patch54_object"/>
            <sch:let name="parent_object_id" value="$parent_object/@id"/>
            <sch:let name="state_ref" value="."/>
            <sch:let name="reffed_state"
                     value="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/>
            <sch:let name="state_name" value="local-name($reffed_state)"/>
            <sch:let name="state_namespace" value="namespace-uri($reffed_state)"/>
            <sch:assert test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#solaris') and ($state_name='patch_state'))">State referenced in filter for <sch:value-of select="name($parent_object)"/> '<sch:value-of select="$parent_object_id"/>' is of the wrong type. </sch:assert>
         </sch:rule>
      </sch:pattern>
   </xsd:appinfo>
   <xsd:appinfo>
      <sch:pattern id="sol-def_smf_object_verify_filter_state">
         <sch:rule context="sol-def:smf_object//oval-def:filter">
            <sch:let name="parent_object" value="ancestor::sol-def:smf_object"/>
            <sch:let name="parent_object_id" value="$parent_object/@id"/>
            <sch:let name="state_ref" value="."/>
            <sch:let name="reffed_state"
                     value="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/>
            <sch:let name="state_name" value="local-name($reffed_state)"/>
            <sch:let name="state_namespace" value="namespace-uri($reffed_state)"/>
            <sch:assert test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#solaris') and ($state_name='smf_state'))">State referenced in filter for <sch:value-of select="name($parent_object)"/> '<sch:value-of select="$parent_object_id"/>' is of the wrong type. </sch:assert>
         </sch:rule>
      </sch:pattern>
   </xsd:appinfo>
   <xsd:appinfo>
      <sch:pattern id="unix-def_dnscache_object_verify_filter_state">
         <sch:rule context="unix-def:dnscache_object//oval-def:filter">
            <sch:let name="parent_object" value="ancestor::unix-def:dnscache_object"/>
            <sch:let name="parent_object_id" value="$parent_object/@id"/>
            <sch:let name="state_ref" value="."/>
            <sch:let name="reffed_state"
                     value="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/>
            <sch:let name="state_name" value="local-name($reffed_state)"/>
            <sch:let name="state_namespace" value="namespace-uri($reffed_state)"/>
            <sch:assert test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#unix') and ($state_name='dnscache_state'))">State referenced in filter for <sch:value-of select="name($parent_object)"/> '<sch:value-of select="$parent_object_id"/>' is of the wrong type. </sch:assert>
         </sch:rule>
      </sch:pattern>
   </xsd:appinfo>
   <xsd:appinfo>
      <sch:pattern id="unix-def_file_object_verify_filter_state">
         <sch:rule context="unix-def:file_object//oval-def:filter">
            <sch:let name="parent_object" value="ancestor::unix-def:file_object"/>
            <sch:let name="parent_object_id" value="$parent_object/@id"/>
            <sch:let name="state_ref" value="."/>
            <sch:let name="reffed_state"
                     value="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/>
            <sch:let name="state_name" value="local-name($reffed_state)"/>
            <sch:let name="state_namespace" value="namespace-uri($reffed_state)"/>
            <sch:assert test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#unix') and ($state_name='file_state'))">State referenced in filter for <sch:value-of select="name($parent_object)"/> '<sch:value-of select="$parent_object_id"/>' is of the wrong type. </sch:assert>
         </sch:rule>
      </sch:pattern>
   </xsd:appinfo>
   <xsd:appinfo>
      <sch:pattern id="unix-def_fileextendedattribute_object_verify_filter_state">
         <sch:rule context="unix-def:fileextendedattribute_object//oval-def:filter">
            <sch:let name="parent_object" value="ancestor::unix-def:fileextendedattribute_object"/>
            <sch:let name="parent_object_id" value="$parent_object/@id"/>
            <sch:let name="state_ref" value="."/>
            <sch:let name="reffed_state"
                     value="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/>
            <sch:let name="state_name" value="local-name($reffed_state)"/>
            <sch:let name="state_namespace" value="namespace-uri($reffed_state)"/>
            <sch:assert test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#unix') and ($state_name='fileextendedattribute_state'))">State referenced in filter for <sch:value-of select="name($parent_object)"/> '<sch:value-of select="$parent_object_id"/>' is of the wrong type. </sch:assert>
         </sch:rule>
      </sch:pattern>
   </xsd:appinfo>
   <xsd:appinfo>
      <sch:pattern id="unix-def_gconf_object_verify_filter_state">
         <sch:rule context="unix-def:gconf_object//oval-def:filter">
            <sch:let name="parent_object" value="ancestor::unix-def:gconf_object"/>
            <sch:let name="parent_object_id" value="$parent_object/@id"/>
            <sch:let name="state_ref" value="."/>
            <sch:let name="reffed_state"
                     value="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/>
            <sch:let name="state_name" value="local-name($reffed_state)"/>
            <sch:let name="state_namespace" value="namespace-uri($reffed_state)"/>
            <sch:assert test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#unix') and ($state_name='gconf_state'))">State referenced in filter for <sch:value-of select="name($parent_object)"/> '<sch:value-of select="$parent_object_id"/>' is of the wrong type. </sch:assert>
         </sch:rule>
      </sch:pattern>
   </xsd:appinfo>
   <xsd:appinfo>
      <sch:pattern id="unix-def_inetd_object_verify_filter_state">
         <sch:rule context="unix-def:inetd_object//oval-def:filter">
            <sch:let name="parent_object" value="ancestor::unix-def:inetd_object"/>
            <sch:let name="parent_object_id" value="$parent_object/@id"/>
            <sch:let name="state_ref" value="."/>
            <sch:let name="reffed_state"
                     value="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/>
            <sch:let name="state_name" value="local-name($reffed_state)"/>
            <sch:let name="state_namespace" value="namespace-uri($reffed_state)"/>
            <sch:assert test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#unix') and ($state_name='inetd_state'))">State referenced in filter for <sch:value-of select="name($parent_object)"/> '<sch:value-of select="$parent_object_id"/>' is of the wrong type. </sch:assert>
         </sch:rule>
      </sch:pattern>
   </xsd:appinfo>
   <xsd:appinfo>
      <sch:pattern id="unix-def_interface_object_verify_filter_state">
         <sch:rule context="unix-def:interface_object//oval-def:filter">
            <sch:let name="parent_object" value="ancestor::unix-def:interface_object"/>
            <sch:let name="parent_object_id" value="$parent_object/@id"/>
            <sch:let name="state_ref" value="."/>
            <sch:let name="reffed_state"
                     value="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/>
            <sch:let name="state_name" value="local-name($reffed_state)"/>
            <sch:let name="state_namespace" value="namespace-uri($reffed_state)"/>
            <sch:assert test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#unix') and ($state_name='interface_state'))">State referenced in filter for <sch:value-of select="name($parent_object)"/> '<sch:value-of select="$parent_object_id"/>' is of the wrong type. </sch:assert>
         </sch:rule>
      </sch:pattern>
   </xsd:appinfo>
   <xsd:appinfo>
      <sch:pattern id="unix-def_password_object_verify_filter_state">
         <sch:rule context="unix-def:password_object//oval-def:filter">
            <sch:let name="parent_object" value="ancestor::unix-def:password_object"/>
            <sch:let name="parent_object_id" value="$parent_object/@id"/>
            <sch:let name="state_ref" value="."/>
            <sch:let name="reffed_state"
                     value="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/>
            <sch:let name="state_name" value="local-name($reffed_state)"/>
            <sch:let name="state_namespace" value="namespace-uri($reffed_state)"/>
            <sch:assert test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#unix') and ($state_name='password_state'))">State referenced in filter for <sch:value-of select="name($parent_object)"/> '<sch:value-of select="$parent_object_id"/>' is of the wrong type. </sch:assert>
         </sch:rule>
      </sch:pattern>
   </xsd:appinfo>
   <xsd:appinfo>
      <sch:pattern id="unix-def_process58_object_verify_filter_state">
         <sch:rule context="unix-def:process58_object//oval-def:filter">
            <sch:let name="parent_object" value="ancestor::unix-def:process58_object"/>
            <sch:let name="parent_object_id" value="$parent_object/@id"/>
            <sch:let name="state_ref" value="."/>
            <sch:let name="reffed_state"
                     value="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/>
            <sch:let name="state_name" value="local-name($reffed_state)"/>
            <sch:let name="state_namespace" value="namespace-uri($reffed_state)"/>
            <sch:assert test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#unix') and ($state_name='process58_state'))">State referenced in filter for <sch:value-of select="name($parent_object)"/> '<sch:value-of select="$parent_object_id"/>' is of the wrong type. </sch:assert>
         </sch:rule>
      </sch:pattern>
   </xsd:appinfo>
   <xsd:appinfo>
      <sch:pattern id="unix-def_routingtable_object_verify_filter_state">
         <sch:rule context="unix-def:routingtable_object//oval-def:filter">
            <sch:let name="parent_object" value="ancestor::unix-def:routingtable_object"/>
            <sch:let name="parent_object_id" value="$parent_object/@id"/>
            <sch:let name="state_ref" value="."/>
            <sch:let name="reffed_state"
                     value="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/>
            <sch:let name="state_name" value="local-name($reffed_state)"/>
            <sch:let name="state_namespace" value="namespace-uri($reffed_state)"/>
            <sch:assert test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#unix') and ($state_name='routingtable_state'))">State referenced in filter for <sch:value-of select="name($parent_object)"/> '<sch:value-of select="$parent_object_id"/>' is of the wrong type. </sch:assert>
         </sch:rule>
      </sch:pattern>
   </xsd:appinfo>
   <xsd:appinfo>
      <sch:pattern id="unix-def_runlevel_object_verify_filter_state">
         <sch:rule context="unix-def:runlevel_object//oval-def:filter">
            <sch:let name="parent_object" value="ancestor::unix-def:runlevel_object"/>
            <sch:let name="parent_object_id" value="$parent_object/@id"/>
            <sch:let name="state_ref" value="."/>
            <sch:let name="reffed_state"
                     value="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/>
            <sch:let name="state_name" value="local-name($reffed_state)"/>
            <sch:let name="state_namespace" value="namespace-uri($reffed_state)"/>
            <sch:assert test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#unix') and ($state_name='runlevel_state'))">State referenced in filter for <sch:value-of select="name($parent_object)"/> '<sch:value-of select="$parent_object_id"/>' is of the wrong type. </sch:assert>
         </sch:rule>
      </sch:pattern>
   </xsd:appinfo>
   <xsd:appinfo>
      <sch:pattern id="unix-def_sccs_object_verify_filter_state">
         <sch:rule context="unix-def:sccs_object//oval-def:filter">
            <sch:let name="parent_object" value="ancestor::unix-def:sccs_object"/>
            <sch:let name="parent_object_id" value="$parent_object/@id"/>
            <sch:let name="state_ref" value="."/>
            <sch:let name="reffed_state"
                     value="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/>
            <sch:let name="state_name" value="local-name($reffed_state)"/>
            <sch:let name="state_namespace" value="namespace-uri($reffed_state)"/>
            <sch:assert test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#unix') and ($state_name='sccs_state'))">State referenced in filter for <sch:value-of select="name($parent_object)"/> '<sch:value-of select="$parent_object_id"/>' is of the wrong type. </sch:assert>
         </sch:rule>
      </sch:pattern>
   </xsd:appinfo>
   <xsd:appinfo>
      <sch:pattern id="unix-def_shadow_object_verify_filter_state">
         <sch:rule context="unix-def:shadow_object//oval-def:filter">
            <sch:let name="parent_object" value="ancestor::unix-def:shadow_object"/>
            <sch:let name="parent_object_id" value="$parent_object/@id"/>
            <sch:let name="state_ref" value="."/>
            <sch:let name="reffed_state"
                     value="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/>
            <sch:let name="state_name" value="local-name($reffed_state)"/>
            <sch:let name="state_namespace" value="namespace-uri($reffed_state)"/>
            <sch:assert test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#unix') and ($state_name='shadow_state'))">State referenced in filter for <sch:value-of select="name($parent_object)"/> '<sch:value-of select="$parent_object_id"/>' is of the wrong type. </sch:assert>
         </sch:rule>
      </sch:pattern>
   </xsd:appinfo>
   <xsd:appinfo>
      <sch:pattern id="unix-def_sysctl_object_verify_filter_state">
         <sch:rule context="unix-def:sysctl_object//oval-def:filter">
            <sch:let name="parent_object" value="ancestor::unix-def:sysctl_object"/>
            <sch:let name="parent_object_id" value="$parent_object/@id"/>
            <sch:let name="state_ref" value="."/>
            <sch:let name="reffed_state"
                     value="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/>
            <sch:let name="state_name" value="local-name($reffed_state)"/>
            <sch:let name="state_namespace" value="namespace-uri($reffed_state)"/>
            <sch:assert test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#unix') and ($state_name='sysctl_state'))">State referenced in filter for <sch:value-of select="name($parent_object)"/> '<sch:value-of select="$parent_object_id"/>' is of the wrong type. </sch:assert>
         </sch:rule>
      </sch:pattern>
   </xsd:appinfo>
   <xsd:appinfo>
      <sch:pattern id="unix-def_xinetd_object_verify_filter_state">
         <sch:rule context="unix-def:xinetd_object//oval-def:filter">
            <sch:let name="parent_object" value="ancestor::unix-def:xinetd_object"/>
            <sch:let name="parent_object_id" value="$parent_object/@id"/>
            <sch:let name="state_ref" value="."/>
            <sch:let name="reffed_state"
                     value="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/>
            <sch:let name="state_name" value="local-name($reffed_state)"/>
            <sch:let name="state_namespace" value="namespace-uri($reffed_state)"/>
            <sch:assert test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#unix') and ($state_name='xinetd_state'))">State referenced in filter for <sch:value-of select="name($parent_object)"/> '<sch:value-of select="$parent_object_id"/>' is of the wrong type. </sch:assert>
         </sch:rule>
      </sch:pattern>
   </xsd:appinfo>
   <xsd:appinfo>
      <sch:pattern id="win-def_accesstoken_object_verify_filter_state">
         <sch:rule context="win-def:accesstoken_object//oval-def:filter">
            <sch:let name="parent_object" value="ancestor::win-def:accesstoken_object"/>
            <sch:let name="parent_object_id" value="$parent_object/@id"/>
            <sch:let name="state_ref" value="."/>
            <sch:let name="reffed_state"
                     value="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/>
            <sch:let name="state_name" value="local-name($reffed_state)"/>
            <sch:let name="state_namespace" value="namespace-uri($reffed_state)"/>
            <sch:assert test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#windows') and ($state_name='accesstoken_state'))">State referenced in filter for <sch:value-of select="name($parent_object)"/> '<sch:value-of select="$parent_object_id"/>' is of the wrong type. </sch:assert>
         </sch:rule>
      </sch:pattern>
   </xsd:appinfo>
   <xsd:appinfo>
      <sch:pattern id="win-def_activedirectory57_object_verify_filter_state">
         <sch:rule context="win-def:activedirectory57_object//oval-def:filter">
            <sch:let name="parent_object" value="ancestor::win-def:activedirectory57_object"/>
            <sch:let name="parent_object_id" value="$parent_object/@id"/>
            <sch:let name="state_ref" value="."/>
            <sch:let name="reffed_state"
                     value="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/>
            <sch:let name="state_name" value="local-name($reffed_state)"/>
            <sch:let name="state_namespace" value="namespace-uri($reffed_state)"/>
            <sch:assert test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#windows') and ($state_name='activedirectory57_state'))">State referenced in filter for <sch:value-of select="name($parent_object)"/> '<sch:value-of select="$parent_object_id"/>' is of the wrong type. </sch:assert>
         </sch:rule>
      </sch:pattern>
   </xsd:appinfo>
   <xsd:appinfo>
      <sch:pattern id="win-def_cmdlet_object_verify_filter_state">
         <sch:rule context="win-def:cmdlet_object//oval-def:filter">
            <sch:let name="parent_object" value="ancestor::win-def:cmdlet_object"/>
            <sch:let name="parent_object_id" value="$parent_object/@id"/>
            <sch:let name="state_ref" value="."/>
            <sch:let name="reffed_state"
                     value="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/>
            <sch:let name="state_name" value="local-name($reffed_state)"/>
            <sch:let name="state_namespace" value="namespace-uri($reffed_state)"/>
            <sch:assert test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#windows') and ($state_name='cmdlet_state'))">State referenced in filter for <sch:value-of select="name($parent_object)"/> '<sch:value-of select="$parent_object_id"/>' is of the wrong type. </sch:assert>
         </sch:rule>
      </sch:pattern>
   </xsd:appinfo>
   <xsd:appinfo>
      <sch:pattern id="win-def_dnscache_object_verify_filter_state">
         <sch:rule context="win-def:dnscache_object//oval-def:filter">
            <sch:let name="parent_object" value="ancestor::win-def:dnscache_object"/>
            <sch:let name="parent_object_id" value="$parent_object/@id"/>
            <sch:let name="state_ref" value="."/>
            <sch:let name="reffed_state"
                     value="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/>
            <sch:let name="state_name" value="local-name($reffed_state)"/>
            <sch:let name="state_namespace" value="namespace-uri($reffed_state)"/>
            <sch:assert test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#windows') and ($state_name='dnscache_state'))">State referenced in filter for <sch:value-of select="name($parent_object)"/> '<sch:value-of select="$parent_object_id"/>' is of the wrong type. </sch:assert>
         </sch:rule>
      </sch:pattern>
   </xsd:appinfo>
   <xsd:appinfo>
      <sch:pattern id="win-def_file_object_verify_filter_state">
         <sch:rule context="win-def:file_object//oval-def:filter">
            <sch:let name="parent_object" value="ancestor::win-def:file_object"/>
            <sch:let name="parent_object_id" value="$parent_object/@id"/>
            <sch:let name="state_ref" value="."/>
            <sch:let name="reffed_state"
                     value="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/>
            <sch:let name="state_name" value="local-name($reffed_state)"/>
            <sch:let name="state_namespace" value="namespace-uri($reffed_state)"/>
            <sch:assert test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#windows') and ($state_name='file_state'))">State referenced in filter for <sch:value-of select="name($parent_object)"/> '<sch:value-of select="$parent_object_id"/>' is of the wrong type. </sch:assert>
         </sch:rule>
      </sch:pattern>
   </xsd:appinfo>
   <xsd:appinfo>
      <sch:pattern id="win-def_fileauditedpermissions53_object_verify_filter_state">
         <sch:rule context="win-def:fileauditedpermissions53_object//oval-def:filter">
            <sch:let name="parent_object" value="ancestor::win-def:fileauditedpermissions53_object"/>
            <sch:let name="parent_object_id" value="$parent_object/@id"/>
            <sch:let name="state_ref" value="."/>
            <sch:let name="reffed_state"
                     value="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/>
            <sch:let name="state_name" value="local-name($reffed_state)"/>
            <sch:let name="state_namespace" value="namespace-uri($reffed_state)"/>
            <sch:assert test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#windows') and ($state_name='fileauditedpermissions53_state'))">State referenced in filter for <sch:value-of select="name($parent_object)"/> '<sch:value-of select="$parent_object_id"/>' is of the wrong type. </sch:assert>
         </sch:rule>
      </sch:pattern>
   </xsd:appinfo>
   <xsd:appinfo>
      <sch:pattern id="win-def_fileeffectiverights53_object_verify_filter_state">
         <sch:rule context="win-def:fileeffectiverights53_object//oval-def:filter">
            <sch:let name="parent_object" value="ancestor::win-def:fileeffectiverights53_object"/>
            <sch:let name="parent_object_id" value="$parent_object/@id"/>
            <sch:let name="state_ref" value="."/>
            <sch:let name="reffed_state"
                     value="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/>
            <sch:let name="state_name" value="local-name($reffed_state)"/>
            <sch:let name="state_namespace" value="namespace-uri($reffed_state)"/>
            <sch:assert test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#windows') and ($state_name='fileeffectiverights53_state'))">State referenced in filter for <sch:value-of select="name($parent_object)"/> '<sch:value-of select="$parent_object_id"/>' is of the wrong type. </sch:assert>
         </sch:rule>
      </sch:pattern>
   </xsd:appinfo>
   <xsd:appinfo>
      <sch:pattern id="win-def_group_object_verify_filter_state">
         <sch:rule context="win-def:group_object//oval-def:filter">
            <sch:let name="parent_object" value="ancestor::win-def:group_object"/>
            <sch:let name="parent_object_id" value="$parent_object/@id"/>
            <sch:let name="state_ref" value="."/>
            <sch:let name="reffed_state"
                     value="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/>
            <sch:let name="state_name" value="local-name($reffed_state)"/>
            <sch:let name="state_namespace" value="namespace-uri($reffed_state)"/>
            <sch:assert test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#windows') and ($state_name='group_state'))">State referenced in filter for <sch:value-of select="name($parent_object)"/> '<sch:value-of select="$parent_object_id"/>' is of the wrong type. </sch:assert>
         </sch:rule>
      </sch:pattern>
   </xsd:appinfo>
   <xsd:appinfo>
      <sch:pattern id="win-def_group_sid_object_verify_filter_state">
         <sch:rule context="win-def:group_sid_object//oval-def:filter">
            <sch:let name="parent_object" value="ancestor::win-def:group_sid_object"/>
            <sch:let name="parent_object_id" value="$parent_object/@id"/>
            <sch:let name="state_ref" value="."/>
            <sch:let name="reffed_state"
                     value="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/>
            <sch:let name="state_name" value="local-name($reffed_state)"/>
            <sch:let name="state_namespace" value="namespace-uri($reffed_state)"/>
            <sch:assert test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#windows') and ($state_name='group_sid_state'))">State referenced in filter for <sch:value-of select="name($parent_object)"/> '<sch:value-of select="$parent_object_id"/>' is of the wrong type. </sch:assert>
         </sch:rule>
      </sch:pattern>
   </xsd:appinfo>
   <xsd:appinfo>
      <sch:pattern id="win-def_interface_object_verify_filter_state">
         <sch:rule context="win-def:interface_object//oval-def:filter">
            <sch:let name="parent_object" value="ancestor::win-def:interface_object"/>
            <sch:let name="parent_object_id" value="$parent_object/@id"/>
            <sch:let name="state_ref" value="."/>
            <sch:let name="reffed_state"
                     value="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/>
            <sch:let name="state_name" value="local-name($reffed_state)"/>
            <sch:let name="state_namespace" value="namespace-uri($reffed_state)"/>
            <sch:assert test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#windows') and ($state_name='interface_state'))">State referenced in filter for <sch:value-of select="name($parent_object)"/> '<sch:value-of select="$parent_object_id"/>' is of the wrong type. </sch:assert>
         </sch:rule>
      </sch:pattern>
   </xsd:appinfo>
   <xsd:appinfo>
      <sch:pattern id="win-def_metabase_object_verify_filter_state">
         <sch:rule context="win-def:metabase_object//oval-def:filter">
            <sch:let name="parent_object" value="ancestor::win-def:metabase_object"/>
            <sch:let name="parent_object_id" value="$parent_object/@id"/>
            <sch:let name="state_ref" value="."/>
            <sch:let name="reffed_state"
                     value="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/>
            <sch:let name="state_name" value="local-name($reffed_state)"/>
            <sch:let name="state_namespace" value="namespace-uri($reffed_state)"/>
            <sch:assert test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#windows') and ($state_name='metabase_state'))">State referenced in filter for <sch:value-of select="name($parent_object)"/> '<sch:value-of select="$parent_object_id"/>' is of the wrong type. </sch:assert>
         </sch:rule>
      </sch:pattern>
   </xsd:appinfo>
   <xsd:appinfo>
      <sch:pattern id="win-def_port_object_verify_filter_state">
         <sch:rule context="win-def:port_object//oval-def:filter">
            <sch:let name="parent_object" value="ancestor::win-def:port_object"/>
            <sch:let name="parent_object_id" value="$parent_object/@id"/>
            <sch:let name="state_ref" value="."/>
            <sch:let name="reffed_state"
                     value="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/>
            <sch:let name="state_name" value="local-name($reffed_state)"/>
            <sch:let name="state_namespace" value="namespace-uri($reffed_state)"/>
            <sch:assert test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#windows') and ($state_name='port_state'))">State referenced in filter for <sch:value-of select="name($parent_object)"/> '<sch:value-of select="$parent_object_id"/>' is of the wrong type. </sch:assert>
         </sch:rule>
      </sch:pattern>
   </xsd:appinfo>
   <xsd:appinfo>
      <sch:pattern id="win-def_printereffectiverights_object_verify_filter_state">
         <sch:rule context="win-def:printereffectiverights_object//oval-def:filter">
            <sch:let name="parent_object" value="ancestor::win-def:printereffectiverights_object"/>
            <sch:let name="parent_object_id" value="$parent_object/@id"/>
            <sch:let name="state_ref" value="."/>
            <sch:let name="reffed_state"
                     value="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/>
            <sch:let name="state_name" value="local-name($reffed_state)"/>
            <sch:let name="state_namespace" value="namespace-uri($reffed_state)"/>
            <sch:assert test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#windows') and ($state_name='printereffectiverights_state'))">State referenced in filter for <sch:value-of select="name($parent_object)"/> '<sch:value-of select="$parent_object_id"/>' is of the wrong type. </sch:assert>
         </sch:rule>
      </sch:pattern>
   </xsd:appinfo>
   <xsd:appinfo>
      <sch:pattern id="win-def_process58_object_verify_filter_state">
         <sch:rule context="win-def:process58_object//oval-def:filter">
            <sch:let name="parent_object" value="ancestor::win-def:process58_object"/>
            <sch:let name="parent_object_id" value="$parent_object/@id"/>
            <sch:let name="state_ref" value="."/>
            <sch:let name="reffed_state"
                     value="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/>
            <sch:let name="state_name" value="local-name($reffed_state)"/>
            <sch:let name="state_namespace" value="namespace-uri($reffed_state)"/>
            <sch:assert test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#windows') and ($state_name='process58_state'))">State referenced in filter for <sch:value-of select="name($parent_object)"/> '<sch:value-of select="$parent_object_id"/>' is of the wrong type. </sch:assert>
         </sch:rule>
      </sch:pattern>
   </xsd:appinfo>
   <xsd:appinfo>
      <sch:pattern id="win-def_registry_object_verify_filter_state">
         <sch:rule context="win-def:registry_object//oval-def:filter">
            <sch:let name="parent_object" value="ancestor::win-def:registry_object"/>
            <sch:let name="parent_object_id" value="$parent_object/@id"/>
            <sch:let name="state_ref" value="."/>
            <sch:let name="reffed_state"
                     value="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/>
            <sch:let name="state_name" value="local-name($reffed_state)"/>
            <sch:let name="state_namespace" value="namespace-uri($reffed_state)"/>
            <sch:assert test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#windows') and ($state_name='registry_state'))">State referenced in filter for <sch:value-of select="name($parent_object)"/> '<sch:value-of select="$parent_object_id"/>' is of the wrong type. </sch:assert>
         </sch:rule>
      </sch:pattern>
   </xsd:appinfo>
   <xsd:appinfo>
      <sch:pattern id="win-def_regkeyauditedpermissions53_object_verify_filter_state">
         <sch:rule context="win-def:regkeyauditedpermissions53_object//oval-def:filter">
            <sch:let name="parent_object"
                     value="ancestor::win-def:regkeyauditedpermissions53_object"/>
            <sch:let name="parent_object_id" value="$parent_object/@id"/>
            <sch:let name="state_ref" value="."/>
            <sch:let name="reffed_state"
                     value="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/>
            <sch:let name="state_name" value="local-name($reffed_state)"/>
            <sch:let name="state_namespace" value="namespace-uri($reffed_state)"/>
            <sch:assert test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#windows') and ($state_name='regkeyauditedpermissions53_state'))">State referenced in filter for <sch:value-of select="name($parent_object)"/> '<sch:value-of select="$parent_object_id"/>' is of the wrong type. </sch:assert>
         </sch:rule>
      </sch:pattern>
   </xsd:appinfo>
   <xsd:appinfo>
      <sch:pattern id="win-def_regkeyeffectiverights53_object_verify_filter_state">
         <sch:rule context="win-def:regkeyeffectiverights53_object//oval-def:filter">
            <sch:let name="parent_object" value="ancestor::win-def:regkeyeffectiverights53_object"/>
            <sch:let name="parent_object_id" value="$parent_object/@id"/>
            <sch:let name="state_ref" value="."/>
            <sch:let name="reffed_state"
                     value="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/>
            <sch:let name="state_name" value="local-name($reffed_state)"/>
            <sch:let name="state_namespace" value="namespace-uri($reffed_state)"/>
            <sch:assert test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#windows') and ($state_name='regkeyeffectiverights53_state'))">State referenced in filter for <sch:value-of select="name($parent_object)"/> '<sch:value-of select="$parent_object_id"/>' is of the wrong type. </sch:assert>
         </sch:rule>
      </sch:pattern>
   </xsd:appinfo>
   <xsd:appinfo>
      <sch:pattern id="win-def_service_object_verify_filter_state">
         <sch:rule context="win-def:service_object//oval-def:filter">
            <sch:let name="parent_object" value="ancestor::win-def:service_object"/>
            <sch:let name="parent_object_id" value="$parent_object/@id"/>
            <sch:let name="state_ref" value="."/>
            <sch:let name="reffed_state"
                     value="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/>
            <sch:let name="state_name" value="local-name($reffed_state)"/>
            <sch:let name="state_namespace" value="namespace-uri($reffed_state)"/>
            <sch:assert test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#windows') and ($state_name='service_state'))">State referenced in filter for <sch:value-of select="name($parent_object)"/> '<sch:value-of select="$parent_object_id"/>' is of the wrong type. </sch:assert>
         </sch:rule>
      </sch:pattern>
   </xsd:appinfo>
   <xsd:appinfo>
      <sch:pattern id="win-def_serviceeffectiverights_object_verify_filter_state">
         <sch:rule context="win-def:serviceeffectiverights_object//oval-def:filter">
            <sch:let name="parent_object" value="ancestor::win-def:serviceeffectiverights_object"/>
            <sch:let name="parent_object_id" value="$parent_object/@id"/>
            <sch:let name="state_ref" value="."/>
            <sch:let name="reffed_state"
                     value="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/>
            <sch:let name="state_name" value="local-name($reffed_state)"/>
            <sch:let name="state_namespace" value="namespace-uri($reffed_state)"/>
            <sch:assert test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#windows') and ($state_name='serviceeffectiverights_state'))">State referenced in filter for <sch:value-of select="name($parent_object)"/> '<sch:value-of select="$parent_object_id"/>' is of the wrong type. </sch:assert>
         </sch:rule>
      </sch:pattern>
   </xsd:appinfo>
   <xsd:appinfo>
      <sch:pattern id="win-def_sharedresource_object_verify_filter_state">
         <sch:rule context="win-def:sharedresource_object//oval-def:filter">
            <sch:let name="parent_object" value="ancestor::win-def:sharedresource_object"/>
            <sch:let name="parent_object_id" value="$parent_object/@id"/>
            <sch:let name="state_ref" value="."/>
            <sch:let name="reffed_state"
                     value="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/>
            <sch:let name="state_name" value="local-name($reffed_state)"/>
            <sch:let name="state_namespace" value="namespace-uri($reffed_state)"/>
            <sch:assert test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#windows') and ($state_name='sharedresource_state'))">State referenced in filter for <sch:value-of select="name($parent_object)"/> '<sch:value-of select="$parent_object_id"/>' is of the wrong type. </sch:assert>
         </sch:rule>
      </sch:pattern>
   </xsd:appinfo>
   <xsd:appinfo>
      <sch:pattern id="win-def_sharedresourceauditedpermissions_object_verify_filter_state">
         <sch:rule context="win-def:sharedresourceauditedpermissions_object//oval-def:filter">
            <sch:let name="parent_object"
                     value="ancestor::win-def:sharedresourceauditedpermissions_object"/>
            <sch:let name="parent_object_id" value="$parent_object/@id"/>
            <sch:let name="state_ref" value="."/>
            <sch:let name="reffed_state"
                     value="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/>
            <sch:let name="state_name" value="local-name($reffed_state)"/>
            <sch:let name="state_namespace" value="namespace-uri($reffed_state)"/>
            <sch:assert test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#windows') and ($state_name='sharedresourceauditedpermissions_state'))">State referenced in filter for <sch:value-of select="name($parent_object)"/> '<sch:value-of select="$parent_object_id"/>' is of the wrong type. </sch:assert>
         </sch:rule>
      </sch:pattern>
   </xsd:appinfo>
   <xsd:appinfo>
      <sch:pattern id="win-def_sharedresourceeffectiverights_object_verify_filter_state">
         <sch:rule context="win-def:sharedresourceeffectiverights_object//oval-def:filter">
            <sch:let name="parent_object"
                     value="ancestor::win-def:sharedresourceeffectiverights_object"/>
            <sch:let name="parent_object_id" value="$parent_object/@id"/>
            <sch:let name="state_ref" value="."/>
            <sch:let name="reffed_state"
                     value="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/>
            <sch:let name="state_name" value="local-name($reffed_state)"/>
            <sch:let name="state_namespace" value="namespace-uri($reffed_state)"/>
            <sch:assert test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#windows') and ($state_name='sharedresourceeffectiverights_state'))">State referenced in filter for <sch:value-of select="name($parent_object)"/> '<sch:value-of select="$parent_object_id"/>' is of the wrong type. </sch:assert>
         </sch:rule>
      </sch:pattern>
   </xsd:appinfo>
   <xsd:appinfo>
      <sch:pattern id="win-def_sid_object_verify_filter_state">
         <sch:rule context="win-def:sid_object//oval-def:filter">
            <sch:let name="parent_object" value="ancestor::win-def:sid_object"/>
            <sch:let name="parent_object_id" value="$parent_object/@id"/>
            <sch:let name="state_ref" value="."/>
            <sch:let name="reffed_state"
                     value="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/>
            <sch:let name="state_name" value="local-name($reffed_state)"/>
            <sch:let name="state_namespace" value="namespace-uri($reffed_state)"/>
            <sch:assert test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#windows') and ($state_name='sid_state'))">State referenced in filter for <sch:value-of select="name($parent_object)"/> '<sch:value-of select="$parent_object_id"/>' is of the wrong type. </sch:assert>
         </sch:rule>
      </sch:pattern>
   </xsd:appinfo>
   <xsd:appinfo>
      <sch:pattern id="win-def_sid_sid_object_verify_filter_state">
         <sch:rule context="win-def:sid_sid_object//oval-def:filter">
            <sch:let name="parent_object" value="ancestor::win-def:sid_sid_object"/>
            <sch:let name="parent_object_id" value="$parent_object/@id"/>
            <sch:let name="state_ref" value="."/>
            <sch:let name="reffed_state"
                     value="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/>
            <sch:let name="state_name" value="local-name($reffed_state)"/>
            <sch:let name="state_namespace" value="namespace-uri($reffed_state)"/>
            <sch:assert test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#windows') and ($state_name='sid_sid_state'))">State referenced in filter for <sch:value-of select="name($parent_object)"/> '<sch:value-of select="$parent_object_id"/>' is of the wrong type. </sch:assert>
         </sch:rule>
      </sch:pattern>
   </xsd:appinfo>
   <xsd:appinfo>
      <sch:pattern id="win-def_user_object_verify_filter_state">
         <sch:rule context="win-def:user_object//oval-def:filter">
            <sch:let name="parent_object" value="ancestor::win-def:user_object"/>
            <sch:let name="parent_object_id" value="$parent_object/@id"/>
            <sch:let name="state_ref" value="."/>
            <sch:let name="reffed_state"
                     value="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/>
            <sch:let name="state_name" value="local-name($reffed_state)"/>
            <sch:let name="state_namespace" value="namespace-uri($reffed_state)"/>
            <sch:assert test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#windows') and ($state_name='user_state'))">State referenced in filter for <sch:value-of select="name($parent_object)"/> '<sch:value-of select="$parent_object_id"/>' is of the wrong type. </sch:assert>
         </sch:rule>
      </sch:pattern>
   </xsd:appinfo>
   <xsd:appinfo>
      <sch:pattern id="win-def_user_sid55_object_verify_filter_state">
         <sch:rule context="win-def:user_sid55_object//oval-def:filter">
            <sch:let name="parent_object" value="ancestor::win-def:user_sid55_object"/>
            <sch:let name="parent_object_id" value="$parent_object/@id"/>
            <sch:let name="state_ref" value="."/>
            <sch:let name="reffed_state"
                     value="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/>
            <sch:let name="state_name" value="local-name($reffed_state)"/>
            <sch:let name="state_namespace" value="namespace-uri($reffed_state)"/>
            <sch:assert test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#windows') and ($state_name='user_sid55_state'))">State referenced in filter for <sch:value-of select="name($parent_object)"/> '<sch:value-of select="$parent_object_id"/>' is of the wrong type. </sch:assert>
         </sch:rule>
      </sch:pattern>
   </xsd:appinfo>
   <xsd:appinfo>
      <sch:pattern id="win-def_volume_object_verify_filter_state">
         <sch:rule context="win-def:volume_object//oval-def:filter">
            <sch:let name="parent_object" value="ancestor::win-def:volume_object"/>
            <sch:let name="parent_object_id" value="$parent_object/@id"/>
            <sch:let name="state_ref" value="."/>
            <sch:let name="reffed_state"
                     value="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/>
            <sch:let name="state_name" value="local-name($reffed_state)"/>
            <sch:let name="state_namespace" value="namespace-uri($reffed_state)"/>
            <sch:assert test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#windows') and ($state_name='volume_state'))">State referenced in filter for <sch:value-of select="name($parent_object)"/> '<sch:value-of select="$parent_object_id"/>' is of the wrong type. </sch:assert>
         </sch:rule>
      </sch:pattern>
   </xsd:appinfo>
   <xsd:appinfo>
      <sch:pattern id="win-def_wmi57_object_verify_filter_state">
         <sch:rule context="win-def:wmi57_object//oval-def:filter">
            <sch:let name="parent_object" value="ancestor::win-def:wmi57_object"/>
            <sch:let name="parent_object_id" value="$parent_object/@id"/>
            <sch:let name="state_ref" value="."/>
            <sch:let name="reffed_state"
                     value="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/>
            <sch:let name="state_name" value="local-name($reffed_state)"/>
            <sch:let name="state_namespace" value="namespace-uri($reffed_state)"/>
            <sch:assert test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#windows') and ($state_name='wmi57_state'))">State referenced in filter for <sch:value-of select="name($parent_object)"/> '<sch:value-of select="$parent_object_id"/>' is of the wrong type. </sch:assert>
         </sch:rule>
      </sch:pattern>
   </xsd:appinfo>
   <xsd:appinfo>
      <sch:pattern id="win-def_wuaupdatesearcher_object_verify_filter_state">
         <sch:rule context="win-def:wuaupdatesearcher_object//oval-def:filter">
            <sch:let name="parent_object" value="ancestor::win-def:wuaupdatesearcher_object"/>
            <sch:let name="parent_object_id" value="$parent_object/@id"/>
            <sch:let name="state_ref" value="."/>
            <sch:let name="reffed_state"
                     value="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/>
            <sch:let name="state_name" value="local-name($reffed_state)"/>
            <sch:let name="state_namespace" value="namespace-uri($reffed_state)"/>
            <sch:assert test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#windows') and ($state_name='wuaupdatesearcher_state'))">State referenced in filter for <sch:value-of select="name($parent_object)"/> '<sch:value-of select="$parent_object_id"/>' is of the wrong type. </sch:assert>
         </sch:rule>
      </sch:pattern>
   </xsd:appinfo>
</root>