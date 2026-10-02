<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
    <xsl:output method="xml" indent="yes"/>

    <xsl:template match="/">
		<h1>
			<xsl:for-each select="//Riik">
				<xsl:value-of select="@counry"/>,  
			</xsl:for-each>
			<br />
		</h1>
		<ul>
			<xsl:for-each select="//reis">
				<li>
					<xsl:value-of select="concat('Lennujaam: ', @Lenjam, '(', ReisNumber, ')', '; Riik, Liin: ', @counry, ', ', Linn, '; Pikkus: ', Pikkus)"/>
				</li>
			</xsl:for-each>
		</ul>
					
				
    </xsl:template>
</xsl:stylesheet>
