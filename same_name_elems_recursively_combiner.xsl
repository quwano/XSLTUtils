<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs" version="2.0">
    <xsl:output method="xml" indent="no" encoding="UTF-8"/>
    <xsl:template match="element()">
        <xsl:copy>
            <xsl:for-each-group select="child::node()" group-adjacent="local-name()">
                <xsl:choose>
                    <xsl:when test="self::element()">
                        <xsl:variable name="tmp">
                            <xsl:element name="{current-grouping-key()}">
                                <xsl:sequence select="current-group()/child::node()"/>
                            </xsl:element>
                        </xsl:variable>
                        <xsl:apply-templates select="$tmp/child::node()"/>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:value-of select="current()"/>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:for-each-group>
        </xsl:copy>
    </xsl:template>
</xsl:stylesheet>
