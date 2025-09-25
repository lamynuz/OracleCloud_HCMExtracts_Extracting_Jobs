<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xdoxslt="http://www.oracle.com/XSL/Transform/java/oracle.xdo.template.rtf.XSLTFunctions" exclude-result-prefixes="xdoxslt">

<xsl:output method="text" indent="yes"/>

<xsl:template match="/">

<!-- Generate Absence Records -->
<xsl:for-each select="//Job_Record">
<xsl:value-of select="concat(Job_Id, ',')"/>
<xsl:value-of select="concat(Job_Name, ',')"/>
<xsl:value-of select="concat('Job_Code', '&#10;')"/>
</xsl:for-each>

</xsl:template>
</xsl:stylesheet>
