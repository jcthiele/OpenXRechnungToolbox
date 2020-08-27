<?xml version="1.0"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template name="code.Country-Codes">
		<xsl:param name="myparam"/>
		<xsl:choose>
      		<xsl:when test="$myparam='AF'"><xsl:value-of select="$myparam"/> (Afghanistan)</xsl:when>
      		<xsl:when test="$myparam='EG'"><xsl:value-of select="$myparam"/> (Ägypten)</xsl:when>
      		<xsl:when test="$myparam='AX'"><xsl:value-of select="$myparam"/> (Ålandinseln)</xsl:when>
      		<xsl:when test="$myparam='AL'"><xsl:value-of select="$myparam"/> (Albanien)</xsl:when>
      		<xsl:when test="$myparam='DZ'"><xsl:value-of select="$myparam"/> (Algerien)</xsl:when>
      		<xsl:when test="$myparam='VI'"><xsl:value-of select="$myparam"/> (Amerikanische Jungferninseln)</xsl:when>
      		<xsl:when test="$myparam='UM'"><xsl:value-of select="$myparam"/> (Amerikanische Überseeinseln, Kleinere)</xsl:when>
      		<xsl:when test="$myparam='AS'"><xsl:value-of select="$myparam"/> (Amerikanisch-Samoa)</xsl:when>
      		<xsl:when test="$myparam='AD'"><xsl:value-of select="$myparam"/> (Andorra)</xsl:when>
      		<xsl:when test="$myparam='AO'"><xsl:value-of select="$myparam"/> (Angola)</xsl:when>
      		<xsl:when test="$myparam='AI'"><xsl:value-of select="$myparam"/> (Anguilla)</xsl:when>
      		<xsl:when test="$myparam='AQ'"><xsl:value-of select="$myparam"/> (Antarktis)</xsl:when>
      		<xsl:when test="$myparam='AG'"><xsl:value-of select="$myparam"/> (Antigua und Barbuda)</xsl:when>
      		<xsl:when test="$myparam='GQ'"><xsl:value-of select="$myparam"/> (Äquatorialguinea)</xsl:when>
      		<xsl:when test="$myparam='SY'"><xsl:value-of select="$myparam"/> (Arabische Republik Syrien)</xsl:when>
      		<xsl:when test="$myparam='AR'"><xsl:value-of select="$myparam"/> (Argentinien)</xsl:when>
      		<xsl:when test="$myparam='AM'"><xsl:value-of select="$myparam"/> (Armenien)</xsl:when>
      		<xsl:when test="$myparam='AW'"><xsl:value-of select="$myparam"/> (Aruba)</xsl:when>
      		<xsl:when test="$myparam='AZ'"><xsl:value-of select="$myparam"/> (Aserbaidschan)</xsl:when>
      		<xsl:when test="$myparam='ET'"><xsl:value-of select="$myparam"/> (Äthiopien)</xsl:when>
      		<xsl:when test="$myparam='AU'"><xsl:value-of select="$myparam"/> (Australien)</xsl:when>
      		<xsl:when test="$myparam='BS'"><xsl:value-of select="$myparam"/> (Bahamas)</xsl:when>
      		<xsl:when test="$myparam='BH'"><xsl:value-of select="$myparam"/> (Bahrain)</xsl:when>
      		<xsl:when test="$myparam='BD'"><xsl:value-of select="$myparam"/> (Bangladesch)</xsl:when>
      		<xsl:when test="$myparam='BB'"><xsl:value-of select="$myparam"/> (Barbados)</xsl:when>
      		<xsl:when test="$myparam='BE'"><xsl:value-of select="$myparam"/> (Belgien)</xsl:when>
      		<xsl:when test="$myparam='BZ'"><xsl:value-of select="$myparam"/> (Belize)</xsl:when>
      		<xsl:when test="$myparam='BJ'"><xsl:value-of select="$myparam"/> (Benin)</xsl:when>
      		<xsl:when test="$myparam='BM'"><xsl:value-of select="$myparam"/> (Bermuda)</xsl:when>
      		<xsl:when test="$myparam='BT'"><xsl:value-of select="$myparam"/> (Bhutan)</xsl:when>
      		<xsl:when test="$myparam='VE'"><xsl:value-of select="$myparam"/> (Bolivarische Republik Venezuela)</xsl:when>
      		<xsl:when test="$myparam='BQ'"><xsl:value-of select="$myparam"/> (Bonaire, St. Eustatius und Saba)</xsl:when>
      		<xsl:when test="$myparam='BA'"><xsl:value-of select="$myparam"/> (Bosnien und Herzegowina)</xsl:when>
      		<xsl:when test="$myparam='BW'"><xsl:value-of select="$myparam"/> (Botsuana)</xsl:when>
      		<xsl:when test="$myparam='BV'"><xsl:value-of select="$myparam"/> (Bouvetinsel)</xsl:when>
      		<xsl:when test="$myparam='BR'"><xsl:value-of select="$myparam"/> (Brasilien)</xsl:when>
      		<xsl:when test="$myparam='VG'"><xsl:value-of select="$myparam"/> (Britische Jungferninseln)</xsl:when>
      		<xsl:when test="$myparam='IO'"><xsl:value-of select="$myparam"/> (Britisches Territorium im Indischen Ozean)</xsl:when>
      		<xsl:when test="$myparam='BN'"><xsl:value-of select="$myparam"/> (Brunei Darussalam)</xsl:when>
      		<xsl:when test="$myparam='BG'"><xsl:value-of select="$myparam"/> (Bulgarien)</xsl:when>
      		<xsl:when test="$myparam='BF'"><xsl:value-of select="$myparam"/> (Burkina Faso)</xsl:when>
      		<xsl:when test="$myparam='BI'"><xsl:value-of select="$myparam"/> (Burundi)</xsl:when>
      		<xsl:when test="$myparam='CV'"><xsl:value-of select="$myparam"/> (Cabo Verde)</xsl:when>
      		<xsl:when test="$myparam='CL'"><xsl:value-of select="$myparam"/> (Chile)</xsl:when>
      		<xsl:when test="$myparam='CN'"><xsl:value-of select="$myparam"/> (China)</xsl:when>
      		<xsl:when test="$myparam='CK'"><xsl:value-of select="$myparam"/> (Cookinseln)</xsl:when>
      		<xsl:when test="$myparam='CR'"><xsl:value-of select="$myparam"/> (Costa Rica)</xsl:when>
      		<xsl:when test="$myparam='CI'"><xsl:value-of select="$myparam"/> (Côte d’Ivoire)</xsl:when>
      		<xsl:when test="$myparam='CW'"><xsl:value-of select="$myparam"/> (Curaçao)</xsl:when>
      		<xsl:when test="$myparam='DK'"><xsl:value-of select="$myparam"/> (Dänemark)</xsl:when>
      		<xsl:when test="$myparam='CD'"><xsl:value-of select="$myparam"/> (Demokratische Republik Kongo)</xsl:when>
      		<xsl:when test="$myparam='KP'"><xsl:value-of select="$myparam"/> (Demokratische Volksrepublik Korea)</xsl:when>
      		<xsl:when test="$myparam='LA'"><xsl:value-of select="$myparam"/> (Demokratische Volksrepublik Laos)</xsl:when>
      		<xsl:when test="$myparam='DE'"><xsl:value-of select="$myparam"/> (Deutschland)</xsl:when>
      		<xsl:when test="$myparam='DM'"><xsl:value-of select="$myparam"/> (Dominica)</xsl:when>
      		<xsl:when test="$myparam='DO'"><xsl:value-of select="$myparam"/> (Dominikanische Republik)</xsl:when>
      		<xsl:when test="$myparam='DJ'"><xsl:value-of select="$myparam"/> (Dschibuti)</xsl:when>
      		<xsl:when test="$myparam='EC'"><xsl:value-of select="$myparam"/> (Ecuador)</xsl:when>
      		<xsl:when test="$myparam='MK'"><xsl:value-of select="$myparam"/> (Nordmazedonien)</xsl:when>
      		<xsl:when test="$myparam='SV'"><xsl:value-of select="$myparam"/> (El Salvador)</xsl:when>
      		<xsl:when test="$myparam='ER'"><xsl:value-of select="$myparam"/> (Eritrea)</xsl:when>
      		<xsl:when test="$myparam='EE'"><xsl:value-of select="$myparam"/> (Estland)</xsl:when>
      		<xsl:when test="$myparam='FK'"><xsl:value-of select="$myparam"/> (Falklandinseln (Malwinen))</xsl:when>
      		<xsl:when test="$myparam='FO'"><xsl:value-of select="$myparam"/> (Färöer)</xsl:when>
      		<xsl:when test="$myparam='FJ'"><xsl:value-of select="$myparam"/> (Fidschi)</xsl:when>
      		<xsl:when test="$myparam='FI'"><xsl:value-of select="$myparam"/> (Finnland)</xsl:when>
      		<xsl:when test="$myparam='FM'"><xsl:value-of select="$myparam"/> (Föderierte Staaten von Mikronesien)</xsl:when>
      		<xsl:when test="$myparam='FR'"><xsl:value-of select="$myparam"/> (Frankreich)</xsl:when>
      		<xsl:when test="$myparam='TF'"><xsl:value-of select="$myparam"/> (Französische Süd- und Antarktisgebiete)</xsl:when>
      		<xsl:when test="$myparam='GF'"><xsl:value-of select="$myparam"/> (Französisch-Guayana)</xsl:when>
      		<xsl:when test="$myparam='PF'"><xsl:value-of select="$myparam"/> (Französisch-Polynesien)</xsl:when>
      		<xsl:when test="$myparam='GA'"><xsl:value-of select="$myparam"/> (Gabun)</xsl:when>
      		<xsl:when test="$myparam='GM'"><xsl:value-of select="$myparam"/> (Gambia)</xsl:when>
      		<xsl:when test="$myparam='GE'"><xsl:value-of select="$myparam"/> (Georgien)</xsl:when>
      		<xsl:when test="$myparam='GH'"><xsl:value-of select="$myparam"/> (Ghana)</xsl:when>
      		<xsl:when test="$myparam='GI'"><xsl:value-of select="$myparam"/> (Gibraltar)</xsl:when>
      		<xsl:when test="$myparam='GD'"><xsl:value-of select="$myparam"/> (Grenada)</xsl:when>
      		<xsl:when test="$myparam='GR'"><xsl:value-of select="$myparam"/> (Griechenland)</xsl:when>
      		<xsl:when test="$myparam='GL'"><xsl:value-of select="$myparam"/> (Grönland)</xsl:when>
      		<xsl:when test="$myparam='GP'"><xsl:value-of select="$myparam"/> (Guadeloupe)</xsl:when>
      		<xsl:when test="$myparam='GU'"><xsl:value-of select="$myparam"/> (Guam)</xsl:when>
      		<xsl:when test="$myparam='GT'"><xsl:value-of select="$myparam"/> (Guatemala)</xsl:when>
      		<xsl:when test="$myparam='GG'"><xsl:value-of select="$myparam"/> (Guernsey)</xsl:when>
      		<xsl:when test="$myparam='GN'"><xsl:value-of select="$myparam"/> (Guinea)</xsl:when>
      		<xsl:when test="$myparam='GW'"><xsl:value-of select="$myparam"/> (Guinea-Bissau)</xsl:when>
      		<xsl:when test="$myparam='GY'"><xsl:value-of select="$myparam"/> (Guyana)</xsl:when>
      		<xsl:when test="$myparam='HT'"><xsl:value-of select="$myparam"/> (Haiti)</xsl:when>
      		<xsl:when test="$myparam='HM'"><xsl:value-of select="$myparam"/> (Heard und die McDonaldinseln)</xsl:when>
      		<xsl:when test="$myparam='HN'"><xsl:value-of select="$myparam"/> (Honduras)</xsl:when>
      		<xsl:when test="$myparam='HK'"><xsl:value-of select="$myparam"/> (Hongkong)</xsl:when>
      		<xsl:when test="$myparam='IN'"><xsl:value-of select="$myparam"/> (Indien)</xsl:when>
      		<xsl:when test="$myparam='ID'"><xsl:value-of select="$myparam"/> (Indonesien)</xsl:when>
      		<xsl:when test="$myparam='IM'"><xsl:value-of select="$myparam"/> (Insel Man)</xsl:when>
      		<xsl:when test="$myparam='IQ'"><xsl:value-of select="$myparam"/> (Irak)</xsl:when>
      		<xsl:when test="$myparam='IE'"><xsl:value-of select="$myparam"/> (Irland)</xsl:when>
      		<xsl:when test="$myparam='IR'"><xsl:value-of select="$myparam"/> (Islamische Republik Iran)</xsl:when>
      		<xsl:when test="$myparam='IS'"><xsl:value-of select="$myparam"/> (Island)</xsl:when>
      		<xsl:when test="$myparam='IL'"><xsl:value-of select="$myparam"/> (Israel)</xsl:when>
      		<xsl:when test="$myparam='IT'"><xsl:value-of select="$myparam"/> (Italien)</xsl:when>
      		<xsl:when test="$myparam='JM'"><xsl:value-of select="$myparam"/> (Jamaika)</xsl:when>
      		<xsl:when test="$myparam='JP'"><xsl:value-of select="$myparam"/> (Japan)</xsl:when>
      		<xsl:when test="$myparam='YE'"><xsl:value-of select="$myparam"/> (Jemen)</xsl:when>
      		<xsl:when test="$myparam='JE'"><xsl:value-of select="$myparam"/> (Jersey)</xsl:when>
      		<xsl:when test="$myparam='JO'"><xsl:value-of select="$myparam"/> (Jordanien)</xsl:when>
      		<xsl:when test="$myparam='KY'"><xsl:value-of select="$myparam"/> (Kaimaninseln)</xsl:when>
      		<xsl:when test="$myparam='KH'"><xsl:value-of select="$myparam"/> (Kambodscha)</xsl:when>
      		<xsl:when test="$myparam='CM'"><xsl:value-of select="$myparam"/> (Kamerun)</xsl:when>
      		<xsl:when test="$myparam='CA'"><xsl:value-of select="$myparam"/> (Kanada)</xsl:when>
      		<xsl:when test="$myparam='KZ'"><xsl:value-of select="$myparam"/> (Kasachstan)</xsl:when>
      		<xsl:when test="$myparam='QA'"><xsl:value-of select="$myparam"/> (Katar)</xsl:when>
      		<xsl:when test="$myparam='KE'"><xsl:value-of select="$myparam"/> (Kenia)</xsl:when>
      		<xsl:when test="$myparam='KG'"><xsl:value-of select="$myparam"/> (Kirgisistan)</xsl:when>
      		<xsl:when test="$myparam='KI'"><xsl:value-of select="$myparam"/> (Kiribati)</xsl:when>
      		<xsl:when test="$myparam='CC'"><xsl:value-of select="$myparam"/> (Kokosinseln (Keeling))</xsl:when>
      		<xsl:when test="$myparam='CO'"><xsl:value-of select="$myparam"/> (Kolumbien)</xsl:when>
      		<xsl:when test="$myparam='KM'"><xsl:value-of select="$myparam"/> (Komoren)</xsl:when>
      		<xsl:when test="$myparam='CG'"><xsl:value-of select="$myparam"/> (Kongo)</xsl:when>
      		<xsl:when test="$myparam='HR'"><xsl:value-of select="$myparam"/> (Kroatien)</xsl:when>
      		<xsl:when test="$myparam='CU'"><xsl:value-of select="$myparam"/> (Kuba)</xsl:when>
      		<xsl:when test="$myparam='KW'"><xsl:value-of select="$myparam"/> (Kuwait)</xsl:when>
      		<xsl:when test="$myparam='LS'"><xsl:value-of select="$myparam"/> (Lesotho)</xsl:when>
      		<xsl:when test="$myparam='LV'"><xsl:value-of select="$myparam"/> (Lettland)</xsl:when>
      		<xsl:when test="$myparam='LB'"><xsl:value-of select="$myparam"/> (Libanon)</xsl:when>
      		<xsl:when test="$myparam='LR'"><xsl:value-of select="$myparam"/> (Liberia)</xsl:when>
      		<xsl:when test="$myparam='LY'"><xsl:value-of select="$myparam"/> (Libyen)</xsl:when>
      		<xsl:when test="$myparam='LI'"><xsl:value-of select="$myparam"/> (Liechtenstein)</xsl:when>
      		<xsl:when test="$myparam='LT'"><xsl:value-of select="$myparam"/> (Litauen)</xsl:when>
      		<xsl:when test="$myparam='LU'"><xsl:value-of select="$myparam"/> (Luxemburg)</xsl:when>
      		<xsl:when test="$myparam='MO'"><xsl:value-of select="$myparam"/> (Macau)</xsl:when>
      		<xsl:when test="$myparam='MG'"><xsl:value-of select="$myparam"/> (Madagaskar)</xsl:when>
      		<xsl:when test="$myparam='MW'"><xsl:value-of select="$myparam"/> (Malawi)</xsl:when>
      		<xsl:when test="$myparam='MY'"><xsl:value-of select="$myparam"/> (Malaysia)</xsl:when>
      		<xsl:when test="$myparam='MV'"><xsl:value-of select="$myparam"/> (Malediven)</xsl:when>
      		<xsl:when test="$myparam='ML'"><xsl:value-of select="$myparam"/> (Mali)</xsl:when>
      		<xsl:when test="$myparam='MT'"><xsl:value-of select="$myparam"/> (Malta)</xsl:when>
      		<xsl:when test="$myparam='MP'"><xsl:value-of select="$myparam"/> (Marianen, Nördliche)</xsl:when>
      		<xsl:when test="$myparam='MA'"><xsl:value-of select="$myparam"/> (Marokko)</xsl:when>
      		<xsl:when test="$myparam='MH'"><xsl:value-of select="$myparam"/> (Marshallinseln)</xsl:when>
      		<xsl:when test="$myparam='MQ'"><xsl:value-of select="$myparam"/> (Martinique)</xsl:when>
      		<xsl:when test="$myparam='MR'"><xsl:value-of select="$myparam"/> (Mauretanien)</xsl:when>
      		<xsl:when test="$myparam='MU'"><xsl:value-of select="$myparam"/> (Mauritius)</xsl:when>
      		<xsl:when test="$myparam='YT'"><xsl:value-of select="$myparam"/> (Mayotte)</xsl:when>
      		<xsl:when test="$myparam='MX'"><xsl:value-of select="$myparam"/> (Mexiko)</xsl:when>
      		<xsl:when test="$myparam='MC'"><xsl:value-of select="$myparam"/> (Monaco)</xsl:when>
      		<xsl:when test="$myparam='MN'"><xsl:value-of select="$myparam"/> (Mongolei)</xsl:when>
      		<xsl:when test="$myparam='MS'"><xsl:value-of select="$myparam"/> (Monserrat)</xsl:when>
      		<xsl:when test="$myparam='ME'"><xsl:value-of select="$myparam"/> (Montenegro)</xsl:when>
      		<xsl:when test="$myparam='MZ'"><xsl:value-of select="$myparam"/> (Mosambik)</xsl:when>
      		<xsl:when test="$myparam='MM'"><xsl:value-of select="$myparam"/> (Myanmar)</xsl:when>
      		<xsl:when test="$myparam='NA'"><xsl:value-of select="$myparam"/> (Namibia)</xsl:when>
      		<xsl:when test="$myparam='NR'"><xsl:value-of select="$myparam"/> (Nauru)</xsl:when>
      		<xsl:when test="$myparam='NP'"><xsl:value-of select="$myparam"/> (Nepal)</xsl:when>
      		<xsl:when test="$myparam='NC'"><xsl:value-of select="$myparam"/> (Neukaledonien)</xsl:when>
      		<xsl:when test="$myparam='NZ'"><xsl:value-of select="$myparam"/> (Neuseeland)</xsl:when>
      		<xsl:when test="$myparam='NI'"><xsl:value-of select="$myparam"/> (Nicaragua)</xsl:when>
      		<xsl:when test="$myparam='NL'"><xsl:value-of select="$myparam"/> (Niederlande)</xsl:when>
      		<xsl:when test="$myparam='NE'"><xsl:value-of select="$myparam"/> (Niger)</xsl:when>
      		<xsl:when test="$myparam='NG'"><xsl:value-of select="$myparam"/> (Nigeria)</xsl:when>
      		<xsl:when test="$myparam='NU'"><xsl:value-of select="$myparam"/> (Niue)</xsl:when>
      		<xsl:when test="$myparam='NF'"><xsl:value-of select="$myparam"/> (Norfolkinsel)</xsl:when>
      		<xsl:when test="$myparam='NO'"><xsl:value-of select="$myparam"/> (Norwegen)</xsl:when>
      		<xsl:when test="$myparam='OM'"><xsl:value-of select="$myparam"/> (Oman)</xsl:when>
      		<xsl:when test="$myparam='AT'"><xsl:value-of select="$myparam"/> (Österreich)</xsl:when>
      		<xsl:when test="$myparam='PK'"><xsl:value-of select="$myparam"/> (Pakistan)</xsl:when>
      		<xsl:when test="$myparam='PW'"><xsl:value-of select="$myparam"/> (Palau)</xsl:when>
      		<xsl:when test="$myparam='PS'"><xsl:value-of select="$myparam"/> (Palestine, State of)</xsl:when>
      		<xsl:when test="$myparam='PA'"><xsl:value-of select="$myparam"/> (Panama)</xsl:when>
      		<xsl:when test="$myparam='PG'"><xsl:value-of select="$myparam"/> (Papua-Neuguinea)</xsl:when>
      		<xsl:when test="$myparam='PY'"><xsl:value-of select="$myparam"/> (Paraguay)</xsl:when>
      		<xsl:when test="$myparam='PE'"><xsl:value-of select="$myparam"/> (Peru)</xsl:when>
      		<xsl:when test="$myparam='PH'"><xsl:value-of select="$myparam"/> (Philippinen)</xsl:when>
      		<xsl:when test="$myparam='PN'"><xsl:value-of select="$myparam"/> (Pitcairninseln)</xsl:when>
      		<xsl:when test="$myparam='BO'"><xsl:value-of select="$myparam"/> (Plurinationaler Staat Bolivien)</xsl:when>
      		<xsl:when test="$myparam='PL'"><xsl:value-of select="$myparam"/> (Polen)</xsl:when>
      		<xsl:when test="$myparam='PT'"><xsl:value-of select="$myparam"/> (Portugal)</xsl:when>
      		<xsl:when test="$myparam='PR'"><xsl:value-of select="$myparam"/> (Puerto Rico)</xsl:when>
      		<xsl:when test="$myparam='KR'"><xsl:value-of select="$myparam"/> (Republik Korea)</xsl:when>
      		<xsl:when test="$myparam='MD'"><xsl:value-of select="$myparam"/> (Republik Moldau)</xsl:when>
      		<xsl:when test="$myparam='RE'"><xsl:value-of select="$myparam"/> (Réunion)</xsl:when>
      		<xsl:when test="$myparam='RW'"><xsl:value-of select="$myparam"/> (Ruanda)</xsl:when>
      		<xsl:when test="$myparam='RO'"><xsl:value-of select="$myparam"/> (Rumänien)</xsl:when>
      		<xsl:when test="$myparam='RU'"><xsl:value-of select="$myparam"/> (Russische Föderation)</xsl:when>
      		<xsl:when test="$myparam='SB'"><xsl:value-of select="$myparam"/> (Salomonen)</xsl:when>
      		<xsl:when test="$myparam='ZM'"><xsl:value-of select="$myparam"/> (Sambia)</xsl:when>
      		<xsl:when test="$myparam='WS'"><xsl:value-of select="$myparam"/> (Samoa)</xsl:when>
      		<xsl:when test="$myparam='SM'"><xsl:value-of select="$myparam"/> (San Marino)</xsl:when>
      		<xsl:when test="$myparam='ST'"><xsl:value-of select="$myparam"/> (São Tomé und Príncipe)</xsl:when>
      		<xsl:when test="$myparam='SA'"><xsl:value-of select="$myparam"/> (Saudi-Arabien)</xsl:when>
      		<xsl:when test="$myparam='SE'"><xsl:value-of select="$myparam"/> (Schweden)</xsl:when>
      		<xsl:when test="$myparam='CH'"><xsl:value-of select="$myparam"/> (Schweiz)</xsl:when>
      		<xsl:when test="$myparam='SN'"><xsl:value-of select="$myparam"/> (Senegal)</xsl:when>
      		<xsl:when test="$myparam='RS'"><xsl:value-of select="$myparam"/> (Serbien)</xsl:when>
      		<xsl:when test="$myparam='SC'"><xsl:value-of select="$myparam"/> (Seychellen)</xsl:when>
      		<xsl:when test="$myparam='SL'"><xsl:value-of select="$myparam"/> (Sierra Leone)</xsl:when>
      		<xsl:when test="$myparam='ZW'"><xsl:value-of select="$myparam"/> (Simbabwe)</xsl:when>
      		<xsl:when test="$myparam='SG'"><xsl:value-of select="$myparam"/> (Singapur)</xsl:when>
      		<xsl:when test="$myparam='SK'"><xsl:value-of select="$myparam"/> (Slowakei)</xsl:when>
      		<xsl:when test="$myparam='SI'"><xsl:value-of select="$myparam"/> (Slowenien)</xsl:when>
      		<xsl:when test="$myparam='SO'"><xsl:value-of select="$myparam"/> (Somalia)</xsl:when>
      		<xsl:when test="$myparam='ES'"><xsl:value-of select="$myparam"/> (Spanien)</xsl:when>
      		<xsl:when test="$myparam='LK'"><xsl:value-of select="$myparam"/> (Sri Lanka)</xsl:when>
      		<xsl:when test="$myparam='BL'"><xsl:value-of select="$myparam"/> (St. Barthélemy)</xsl:when>
      		<xsl:when test="$myparam='SH'"><xsl:value-of select="$myparam"/> (St. Helena, Ascension und Tristan da Cunha)</xsl:when>
      		<xsl:when test="$myparam='KN'"><xsl:value-of select="$myparam"/> (St. Kitts und Nevis)</xsl:when>
      		<xsl:when test="$myparam='LC'"><xsl:value-of select="$myparam"/> (St. Lucia)</xsl:when>
      		<xsl:when test="$myparam='MF'"><xsl:value-of select="$myparam"/> (St. Martin (französischer Teil))</xsl:when>
      		<xsl:when test="$myparam='SX'"><xsl:value-of select="$myparam"/> (St. Martin (Niederländischer Teil))</xsl:when>
      		<xsl:when test="$myparam='PM'"><xsl:value-of select="$myparam"/> (St. Pierre und Miquelon)</xsl:when>
      		<xsl:when test="$myparam='VC'"><xsl:value-of select="$myparam"/> (St. Vincent und die Grenadinen)</xsl:when>
      		<xsl:when test="$myparam='ZA'"><xsl:value-of select="$myparam"/> (Südafrika)</xsl:when>
      		<xsl:when test="$myparam='SD'"><xsl:value-of select="$myparam"/> (Sudan)</xsl:when>
      		<xsl:when test="$myparam='GS'"><xsl:value-of select="$myparam"/> (Südgeorgien und die Südlichen Sandwichinseln)</xsl:when>
      		<xsl:when test="$myparam='SS'"><xsl:value-of select="$myparam"/> (Südsudan)</xsl:when>
      		<xsl:when test="$myparam='SR'"><xsl:value-of select="$myparam"/> (Suriname)</xsl:when>
      		<xsl:when test="$myparam='SJ'"><xsl:value-of select="$myparam"/> (Svalbard und Jan Mayen)</xsl:when>
      		<xsl:when test="$myparam='SZ'"><xsl:value-of select="$myparam"/> (Eswatini)</xsl:when>
      		<xsl:when test="$myparam='TJ'"><xsl:value-of select="$myparam"/> (Tadschikistan)</xsl:when>
      		<xsl:when test="$myparam='TW'"><xsl:value-of select="$myparam"/> (Taiwan)</xsl:when>
      		<xsl:when test="$myparam='TH'"><xsl:value-of select="$myparam"/> (Thailand)</xsl:when>
      		<xsl:when test="$myparam='TL'"><xsl:value-of select="$myparam"/> (Timor-Leste)</xsl:when>
      		<xsl:when test="$myparam='TG'"><xsl:value-of select="$myparam"/> (Togo)</xsl:when>
      		<xsl:when test="$myparam='TK'"><xsl:value-of select="$myparam"/> (Tokelau)</xsl:when>
      		<xsl:when test="$myparam='TO'"><xsl:value-of select="$myparam"/> (Tonga)</xsl:when>
      		<xsl:when test="$myparam='TT'"><xsl:value-of select="$myparam"/> (Trinidad und Tobago)</xsl:when>
      		<xsl:when test="$myparam='TD'"><xsl:value-of select="$myparam"/> (Tschad)</xsl:when>
      		<xsl:when test="$myparam='CZ'"><xsl:value-of select="$myparam"/> (Tschechien)</xsl:when>
      		<xsl:when test="$myparam='TN'"><xsl:value-of select="$myparam"/> (Tunesien)</xsl:when>
      		<xsl:when test="$myparam='TR'"><xsl:value-of select="$myparam"/> (Türkei)</xsl:when>
      		<xsl:when test="$myparam='TM'"><xsl:value-of select="$myparam"/> (Turkmenistan)</xsl:when>
      		<xsl:when test="$myparam='TC'"><xsl:value-of select="$myparam"/> (Turks- und Caicosinseln)</xsl:when>
      		<xsl:when test="$myparam='TV'"><xsl:value-of select="$myparam"/> (Tuvalu)</xsl:when>
      		<xsl:when test="$myparam='UG'"><xsl:value-of select="$myparam"/> (Uganda)</xsl:when>
      		<xsl:when test="$myparam='UA'"><xsl:value-of select="$myparam"/> (Ukraine)</xsl:when>
      		<xsl:when test="$myparam='HU'"><xsl:value-of select="$myparam"/> (Ungarn)</xsl:when>
      		<xsl:when test="$myparam='UY'"><xsl:value-of select="$myparam"/> (Uruguay)</xsl:when>
      		<xsl:when test="$myparam='UZ'"><xsl:value-of select="$myparam"/> (Usbekistan)</xsl:when>
      		<xsl:when test="$myparam='VU'"><xsl:value-of select="$myparam"/> (Vanuatu)</xsl:when>
      		<xsl:when test="$myparam='VA'"><xsl:value-of select="$myparam"/> (Vatikanstadt)</xsl:when>
      		<xsl:when test="$myparam='AE'"><xsl:value-of select="$myparam"/> (Vereinigte Arabische Emirate)</xsl:when>
      		<xsl:when test="$myparam='TZ'"><xsl:value-of select="$myparam"/> (Vereinigte Republik Tansania)</xsl:when>
      		<xsl:when test="$myparam='US'"><xsl:value-of select="$myparam"/> (Vereinigte Staaten)</xsl:when>
      		<xsl:when test="$myparam='GB'"><xsl:value-of select="$myparam"/> (Vereinigtes Königreich)</xsl:when>
      		<xsl:when test="$myparam='VN'"><xsl:value-of select="$myparam"/> (Vietnam)</xsl:when>
      		<xsl:when test="$myparam='WF'"><xsl:value-of select="$myparam"/> (Wallis und Futuna)</xsl:when>
      		<xsl:when test="$myparam='CX'"><xsl:value-of select="$myparam"/> (Weihnachtsinsel)</xsl:when>
      		<xsl:when test="$myparam='BY'"><xsl:value-of select="$myparam"/> (Weißrussland)</xsl:when>
      		<xsl:when test="$myparam='EH'"><xsl:value-of select="$myparam"/> (Westsahara)</xsl:when>
      		<xsl:when test="$myparam='CF'"><xsl:value-of select="$myparam"/> (Zentralafrikanische Republik)</xsl:when>
      		<xsl:when test="$myparam='CY'"><xsl:value-of select="$myparam"/> (Zypern)</xsl:when>
   			<xsl:otherwise><xsl:value-of select="$myparam"/></xsl:otherwise>
		</xsl:choose>
	</xsl:template>

</xsl:stylesheet>