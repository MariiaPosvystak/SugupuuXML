<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
    <xsl:output method="xml" indent="yes"/>
	
	<xsl:template match="/">
		<ol>
			<li>
				<h1>
					Riigid: <br/>
					<xsl:for-each select="//suund">
						<xsl:value-of select="riik"/>,
					</xsl:for-each>
					<br />
				</h1>
			</li>
			<li>
			<strong>Reisi andmed: </strong>
				<ul>
					<xsl:for-each select="//reis/suund">
						<li>
							<xsl:attribute name="style">background-color: yellow</xsl:attribute>
							<xsl:value-of select="concat('Riik: ', riik, '; Pikkus: ', kestvus, ' päeva;')"/>
						</li>
					</xsl:for-each>
				</ul>
			</li>
			<li>
			<strong>Pikkus reisid: </strong>
				<ul>
					<xsl:for-each select="//reis/suund">
						<li>
							<xsl:value-of select="concat('Riik: ', riik, '; Pikkus: ', kestvus, ' päeva;')"/>
							<xsl:if test="kestvus > 7">
								<strong> - Pikkus reis.</strong>
							</xsl:if>
						</li>
					</xsl:for-each>
				</ul>
			</li>
			<li>
				<strong>Kogumaksumus: </strong>
				<xsl:value-of select="sum(//muudKulud)"/>
			</li>
			<li>
				<strong>Transport: </strong>
				<ul>
					<xsl:for-each select="reisid/reis">
						<xsl:if test="transport = 'Lennuk'">
							<li>
								<xsl:value-of select="concat(suund/riik, ': ', transport)"/>
							</li>
						</xsl:if>
					</xsl:for-each>
				</ul>
			</li>
			<li>
				<strong>Järjestatuna ↓ :</strong>
				<ul>
					<xsl:for-each select="reisid/reis/suund">
						<xsl:sort select="kestvus" order="descending"/>
						<li>
							<xsl:value-of select="riik"/>
						</li>
					</xsl:for-each>
				</ul>
			</li>
		</ol>
				
				


	</xsl:template>
</xsl:stylesheet>