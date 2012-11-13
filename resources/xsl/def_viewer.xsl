<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">

      <xsl:output method="xml" indent="yes"/>
      <xsl:preserve-space elements="*"/>
      
      <xsl:param name="DefinitionID">oval:gov.irs.rhel5:def:1</xsl:param>

      <xsl:template match="/oval-def:oval_definitions">
            <xsl:element name="oval_definitions">
                  <xsl:for-each select="./oval-def:definitions/oval-def:definition[@id=$DefinitionID]">
                        <xsl:element name="definitions">
                              <xsl:copy copy-namespaces="no">
                                    <xsl:apply-templates select="*|@*"/>
                              </xsl:copy>
                        </xsl:element>
                        <xsl:element name="tests">
                              <xsl:for-each select="descendant::oval-def:criterion">
                                    <xsl:call-template name="print_test">
                                          <xsl:with-param name="TestID" select="@test_ref"/>
                                    </xsl:call-template>
                              </xsl:for-each>
                        </xsl:element>
                        <xsl:element name="objects">

                        </xsl:element>
                        <xsl:element name="states">
                              
                        </xsl:element>
                        <xsl:element name="variables">
                              
                        </xsl:element>
                  </xsl:for-each>
            </xsl:element>
      </xsl:template>

      <xsl:template match="*|@*">
            <xsl:copy copy-namespaces="no"><xsl:apply-templates select="*|@*"/></xsl:copy>
      </xsl:template>
      
      <xsl:template name="print_test">
            <xsl:param name="TestID"/>
            <xsl:for-each select="/oval-def:oval_definitions/oval-def:tests/*[@id=$TestID]">
                  <xsl:copy copy-namespaces="no">
                        <xsl:apply-templates select="*|@*"/>
                  </xsl:copy>
            </xsl:for-each>
      </xsl:template>

      <xsl:template name="print_object">
            <xsl:param name="ObjectID"/>
            <xsl:for-each select="/oval-def:oval_definitions/oval-def:objects/*[@id=$ObjectID]">
                  <xsl:copy copy-namespaces="no">
                        <xsl:apply-templates select="*|@*"/>
                  </xsl:copy>
            </xsl:for-each>
      </xsl:template>
      
      <xsl:template name="print_state">
            <xsl:param name="StateID"/>
            <xsl:for-each select="/oval-def:oval_definitions/oval-def:states/*[@id=$StateID]">
                  <xsl:copy copy-namespaces="no">
                        <xsl:apply-templates select="*|@*"/>
                  </xsl:copy>
            </xsl:for-each>
      </xsl:template>
      
</xsl:stylesheet>
