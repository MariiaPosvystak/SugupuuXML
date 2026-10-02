<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
    <xsl:output method="xml" indent="yes"/>
	<!--Parameetri paramine-->
	<xsl:param name="otsing">a</xsl:param>
	<xsl:param name="pikkus">5</xsl:param>
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
		<strong>Näita kõik nimed mis algavad C-tähega: </strong>
		<xsl:for-each select="//inimene[starts-with(nimi, 'C')]">
			<xsl:value-of select="nimi"/>, 
		</xsl:for-each><br /><br />
		<strong>Parameetrite kasutamine</strong><br /><br />
		Otsime nimed mis sisaldav pareemt otsing = 
		<xsl:value-of select="$otsing"/>:<br />
		<xsl:for-each select="//inimene[contains(nimi, $otsing)]">
			<xsl:value-of select="nimi"/>, 
		</xsl:for-each><br /><br />
		Otsime nimed mis pikkusega =
		<xsl:value-of select="$pikkus"/> ja rohkem:<br />
		<xsl:for-each select="//inimene[string-length(nimi)>=$pikkus]">
			<xsl:value-of select="concat(nimi, ' - pikkus: ', string-length(nimi))"/>,
		</xsl:for-each><br /><br />
		<strong>Kasutame if lause: </strong>
		Iga inimese kohta näitame mitmendal oma vanema sünnaastal ta sündis
		<ul>
			<xsl:for-each select="//inimene">
				<li>
					<xsl:value-of select="nimi"/>
					<xsl:if test="../..">
						- vanema vanus oli - 
						<xsl:value-of select="@synd - ../../@synd"/> aastat vana
					</xsl:if>
				</li>
			</xsl:for-each>
		</ul>
		<br /><br />
		<!--<strong>Värvime nimed pikkusega rohkem 7</strong><br />
		<table border="1">
			<tr>
				<td>
					Nimi
				</td>
			</tr>
			<xsl:for-each select="//inimene">
				<tr>
					<td>
						<xsl:if test="../..">
							<xsl:attribute name="style"/>
								background-color: 
						</xsl:if>
					</td>
				</tr>
			</xsl:for-each>
		</table>
		<br /><br />-->
		<strong>Tabel</strong>
		<br />
		<table border="1">
			<tr>
				<td>
					Nimi
				</td>
				<td>
					Aasta
				</td>
				<td>
					Vanus
				</td>
				<td>
					1.Täht
				</td>
				<td>
					Viimane Täht
				</td>
				<td>
					Tähtede arv
				</td>
			</tr>
			<xsl:for-each select="//inimene">
				<tr>
					<td>
						<xsl:value-of select="nimi"/>
					</td>
					<td>
						<xsl:value-of select="@synd"/>
					</td>
					<td>
						<xsl:value-of select="2026-@synd"/>
					</td>
					<td>
						<xsl:value-of select="substring(nimi, 1, 1)"/>
					</td>
					<td>
						<xsl:value-of select="substring(nimi, string-length(nimi), 1)"/>
					</td>
					<td>
						<xsl:value-of select="string-length(nimi)"/>
					</td>
				</tr>
			</xsl:for-each>
		</table>
    </xsl:template>
</xsl:stylesheet>
