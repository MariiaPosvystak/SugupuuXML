<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
    <xsl:output method="xml" indent="yes"/>

    <xsl:template match="/">
		<strong>Kõik sugupuu nimed</strong>
		<ul>
			<xsl:for-each select="//inimene">
				<li>
					<xsl:value-of select="nimi"/>,
					<xsl:value-of select="@synd"/>;
					<xsl:value-of select="concat(nimi,' Sünniaasta: ', @synd)"/>.
					Vanus -
					<xsl:value-of select="2026-@synd"/> aastat vana
				</li>
			</xsl:for-each>
		</ul>
		<ol>
			<li> 
				1 täht kõkidest nimedest
				<xsl:for-each select="//inimene">
					<xsl:value-of select="substring(nimi, 1, 1)"/>,
				</xsl:for-each>
			</li>
			<li>
				Näita nimed ja tähtede kogused
				<xsl:for-each select="//inimene">
					<xsl:value-of select="concat(nimi, ': ', string-length(nimi), ' tähte')"/>,
				</xsl:for-each>
			</li>
			
		</ol>
		<strong>Tabel</strong>
		<br />
		<table border-collapse="collapse" border="1 solid black">
			<tr>
				Nimi
				
			</tr>
			<xsl:for-each select="//inimene">
				<tr>
					<xsl:value-of select="nimi"/>
				</tr>
			</xsl:for-each>
			<tr>
				Aasta
				<xsl:for-each select="//inimene">
					<td>
						<xsl:value-of select="@synd"/>
					</td>
				</xsl:for-each>
			</tr>
			<tr>
				Vanus
				<xsl:for-each select="//inimene">
					<td>
						<xsl:value-of select="2026-@synd"/>
					</td>
				</xsl:for-each>
			</tr>
			<tr>
				1.Täht
				<xsl:for-each select="//inimene">
					<td>
						<xsl:value-of select="substring(nimi, 1, 1)"/>
					</td>
				</xsl:for-each>
			</tr>
			<tr>
				Viimane Täht
				<xsl:for-each select="//inimene">
					<td>
						<xsl:value-of select="substring(nimi, 1, 1)"/>
					</td>
				</xsl:for-each>
			</tr>
			<tr>
				Tähtede arv
				<xsl:for-each select="//inimene">
					<td>
						<xsl:value-of select="string-length(nimi)"/>
					</td>
				</xsl:for-each>
			</tr>
		</table>
    </xsl:template>
</xsl:stylesheet>
