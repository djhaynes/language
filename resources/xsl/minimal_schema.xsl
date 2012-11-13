<?xml version="1.0" encoding="UTF-8"?>
<!-- $Id: minimal_schema.xsl 4890 2008-09-30 12:46:29Z abuttner $ -->
<!--
	This stylesheet was originally developed by The MITRE Corporation.
	It has been designed to pull all annotation elements out of the
	OVAL Schema in order to provide a simplified view of the schema.
	It is maintained by The Mitre Corporation and developed for use by
	the public OVAL Community.  For more information, including how to
	get involved in the project, please visit the OVAL website at
	http://oval.mitre.org.
-->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xsd="http://www.w3.org/2001/XMLSchema">

	<xsl:output method="xml" indent="yes"/>
	<xsl:preserve-space elements="*"/>

	<xsl:template match="*|@*">
		<xsl:choose>
			<xsl:when test="name()='xsd:annotation'"/><!-- skip the annotation element -->
			<xsl:otherwise>
				<xsl:copy>
					<xsl:apply-templates select="*|@*"/>
				</xsl:copy>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>

</xsl:stylesheet>