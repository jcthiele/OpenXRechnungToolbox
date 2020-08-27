<?xml version="1.0"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template name="code.Currency-Codes">
		<xsl:param name="myparam"/>
		<xsl:choose>
      		<xsl:when test="$myparam='AED'"><xsl:value-of select="$myparam"/> (UAE Dirham)</xsl:when>
      		<xsl:when test="$myparam='AFN'"><xsl:value-of select="$myparam"/> (Afghani)</xsl:when>
      		<xsl:when test="$myparam='ALL'"><xsl:value-of select="$myparam"/> (Lek)</xsl:when>
      		<xsl:when test="$myparam='AMD'"><xsl:value-of select="$myparam"/> (Armenian Dram)</xsl:when>
      		<xsl:when test="$myparam='ANG'"><xsl:value-of select="$myparam"/> (Netherlands Antillean Guilder)</xsl:when>
      		<xsl:when test="$myparam='AOA'"><xsl:value-of select="$myparam"/> (Kwanza)</xsl:when>
      		<xsl:when test="$myparam='ARS'"><xsl:value-of select="$myparam"/> (Argentine Peso)</xsl:when>
      		<xsl:when test="$myparam='AUD'"><xsl:value-of select="$myparam"/> (Australian Dollar)</xsl:when>
      		<xsl:when test="$myparam='AWG'"><xsl:value-of select="$myparam"/> (Aruban Florin)</xsl:when>
      		<xsl:when test="$myparam='AZN'"><xsl:value-of select="$myparam"/> (Azerbaijan Manat)</xsl:when>
      		<xsl:when test="$myparam='BAM'"><xsl:value-of select="$myparam"/> (Convertible Mark)</xsl:when>
      		<xsl:when test="$myparam='BBD'"><xsl:value-of select="$myparam"/> (Barbados Dollar)</xsl:when>
      		<xsl:when test="$myparam='BDT'"><xsl:value-of select="$myparam"/> (Taka)</xsl:when>
      		<xsl:when test="$myparam='BGN'"><xsl:value-of select="$myparam"/> (Bulgarian Lev)</xsl:when>
      		<xsl:when test="$myparam='BHD'"><xsl:value-of select="$myparam"/> (Bahraini Dinar)</xsl:when>
      		<xsl:when test="$myparam='BIF'"><xsl:value-of select="$myparam"/> (Burundi Franc)</xsl:when>
      		<xsl:when test="$myparam='BMD'"><xsl:value-of select="$myparam"/> (Bermudian Dollar)</xsl:when>
      		<xsl:when test="$myparam='BND'"><xsl:value-of select="$myparam"/> (Brunei Dollar)</xsl:when>
      		<xsl:when test="$myparam='BOB'"><xsl:value-of select="$myparam"/> (Boliviano)</xsl:when>
      		<xsl:when test="$myparam='BOV'"><xsl:value-of select="$myparam"/> (Mvdol)</xsl:when>
      		<xsl:when test="$myparam='BRL'"><xsl:value-of select="$myparam"/> (Brazilian Real)</xsl:when>
      		<xsl:when test="$myparam='BSD'"><xsl:value-of select="$myparam"/> (Bahamian Dollar)</xsl:when>
      		<xsl:when test="$myparam='BTN'"><xsl:value-of select="$myparam"/> (Ngultrum)</xsl:when>
      		<xsl:when test="$myparam='BWP'"><xsl:value-of select="$myparam"/> (Pula)</xsl:when>
      		<xsl:when test="$myparam='BYN'"><xsl:value-of select="$myparam"/> (Belarusian Ruble)</xsl:when>
      		<xsl:when test="$myparam='BZD'"><xsl:value-of select="$myparam"/> (Belize Dollar)</xsl:when>
      		<xsl:when test="$myparam='CAD'"><xsl:value-of select="$myparam"/> (Canadian Dollar)</xsl:when>
      		<xsl:when test="$myparam='CDF'"><xsl:value-of select="$myparam"/> (Congolese Franc)</xsl:when>
      		<xsl:when test="$myparam='CHE'"><xsl:value-of select="$myparam"/> (WIR Euro)</xsl:when>
      		<xsl:when test="$myparam='CHF'"><xsl:value-of select="$myparam"/> (Swiss Franc)</xsl:when>
      		<xsl:when test="$myparam='CHW'"><xsl:value-of select="$myparam"/> (WIR Franc)</xsl:when>
      		<xsl:when test="$myparam='CLF'"><xsl:value-of select="$myparam"/> (Unidad de Fomento)</xsl:when>
      		<xsl:when test="$myparam='CLP'"><xsl:value-of select="$myparam"/> (Chilean Peso)</xsl:when>
      		<xsl:when test="$myparam='CNY'"><xsl:value-of select="$myparam"/> (Yuan Renminbi)</xsl:when>
      		<xsl:when test="$myparam='COP'"><xsl:value-of select="$myparam"/> (Colombian Peso)</xsl:when>
      		<xsl:when test="$myparam='COU'"><xsl:value-of select="$myparam"/> (Unidad de Valor Real)</xsl:when>
      		<xsl:when test="$myparam='CRC'"><xsl:value-of select="$myparam"/> (Costa Rican Colon)</xsl:when>
      		<xsl:when test="$myparam='CUC'"><xsl:value-of select="$myparam"/> (Peso Convertible)</xsl:when>
      		<xsl:when test="$myparam='CUP'"><xsl:value-of select="$myparam"/> (Cuban Peso)</xsl:when>
      		<xsl:when test="$myparam='CVE'"><xsl:value-of select="$myparam"/> (Cabo Verde Escudo)</xsl:when>
      		<xsl:when test="$myparam='CZK'"><xsl:value-of select="$myparam"/> (Czech Koruna)</xsl:when>
      		<xsl:when test="$myparam='DJF'"><xsl:value-of select="$myparam"/> (Djibouti Franc)</xsl:when>
      		<xsl:when test="$myparam='DKK'"><xsl:value-of select="$myparam"/> (Danish Krone)</xsl:when>
      		<xsl:when test="$myparam='DOP'"><xsl:value-of select="$myparam"/> (Dominican Peso)</xsl:when>
      		<xsl:when test="$myparam='DZD'"><xsl:value-of select="$myparam"/> (Algerian Dinar)</xsl:when>
      		<xsl:when test="$myparam='EGP'"><xsl:value-of select="$myparam"/> (Egyptian Pound)</xsl:when>
      		<xsl:when test="$myparam='ERN'"><xsl:value-of select="$myparam"/> (Nakfa)</xsl:when>
      		<xsl:when test="$myparam='ETB'"><xsl:value-of select="$myparam"/> (Ethiopian Birr)</xsl:when>
      		<xsl:when test="$myparam='EUR'"><xsl:value-of select="$myparam"/> (Euro)</xsl:when>
      		<xsl:when test="$myparam='FJD'"><xsl:value-of select="$myparam"/> (Fiji Dollar)</xsl:when>
      		<xsl:when test="$myparam='FKP'"><xsl:value-of select="$myparam"/> (Falkland Islands Pound)</xsl:when>
      		<xsl:when test="$myparam='GBP'"><xsl:value-of select="$myparam"/> (Pound Sterling)</xsl:when>
      		<xsl:when test="$myparam='GEL'"><xsl:value-of select="$myparam"/> (Lari)</xsl:when>
      		<xsl:when test="$myparam='GHS'"><xsl:value-of select="$myparam"/> (Ghana Cedi)</xsl:when>
      		<xsl:when test="$myparam='GIP'"><xsl:value-of select="$myparam"/> (Gibraltar Pound)</xsl:when>
      		<xsl:when test="$myparam='GMD'"><xsl:value-of select="$myparam"/> (Dalasi)</xsl:when>
      		<xsl:when test="$myparam='GNF'"><xsl:value-of select="$myparam"/> (Guinean Franc)</xsl:when>
      		<xsl:when test="$myparam='GTQ'"><xsl:value-of select="$myparam"/> (Quetzal)</xsl:when>
      		<xsl:when test="$myparam='GYD'"><xsl:value-of select="$myparam"/> (Guyana Dollar)</xsl:when>
      		<xsl:when test="$myparam='HKD'"><xsl:value-of select="$myparam"/> (Hong Kong Dollar)</xsl:when>
      		<xsl:when test="$myparam='HNL'"><xsl:value-of select="$myparam"/> (Lempira)</xsl:when>
      		<xsl:when test="$myparam='HRK'"><xsl:value-of select="$myparam"/> (Kuna)</xsl:when>
      		<xsl:when test="$myparam='HTG'"><xsl:value-of select="$myparam"/> (Gourde)</xsl:when>
      		<xsl:when test="$myparam='HUF'"><xsl:value-of select="$myparam"/> (Forint)</xsl:when>
      		<xsl:when test="$myparam='IDR'"><xsl:value-of select="$myparam"/> (Rupiah)</xsl:when>
      		<xsl:when test="$myparam='ILS'"><xsl:value-of select="$myparam"/> (New Israeli Sheqel)</xsl:when>
      		<xsl:when test="$myparam='INR'"><xsl:value-of select="$myparam"/> (Indian Rupee)</xsl:when>
      		<xsl:when test="$myparam='IQD'"><xsl:value-of select="$myparam"/> (Iraqi Dinar)</xsl:when>
      		<xsl:when test="$myparam='IRR'"><xsl:value-of select="$myparam"/> (Iranian Rial)</xsl:when>
      		<xsl:when test="$myparam='ISK'"><xsl:value-of select="$myparam"/> (Iceland Krona)</xsl:when>
      		<xsl:when test="$myparam='JMD'"><xsl:value-of select="$myparam"/> (Jamaican Dollar)</xsl:when>
      		<xsl:when test="$myparam='JOD'"><xsl:value-of select="$myparam"/> (Jordanian Dinar)</xsl:when>
      		<xsl:when test="$myparam='JPY'"><xsl:value-of select="$myparam"/> (Yen)</xsl:when>
      		<xsl:when test="$myparam='KES'"><xsl:value-of select="$myparam"/> (Kenyan Shilling)</xsl:when>
      		<xsl:when test="$myparam='KGS'"><xsl:value-of select="$myparam"/> (Som)</xsl:when>
      		<xsl:when test="$myparam='KHR'"><xsl:value-of select="$myparam"/> (Riel)</xsl:when>
      		<xsl:when test="$myparam='KMF'"><xsl:value-of select="$myparam"/> (Comorian Franc)</xsl:when>
      		<xsl:when test="$myparam='KPW'"><xsl:value-of select="$myparam"/> (North Korean Won)</xsl:when>
      		<xsl:when test="$myparam='KRW'"><xsl:value-of select="$myparam"/> (Won)</xsl:when>
      		<xsl:when test="$myparam='KWD'"><xsl:value-of select="$myparam"/> (Kuwaiti Dinar)</xsl:when>
      		<xsl:when test="$myparam='KYD'"><xsl:value-of select="$myparam"/> (Cayman Islands Dollar)</xsl:when>
      		<xsl:when test="$myparam='KZT'"><xsl:value-of select="$myparam"/> (Tenge)</xsl:when>
      		<xsl:when test="$myparam='LAK'"><xsl:value-of select="$myparam"/> (Lao Kip)</xsl:when>
      		<xsl:when test="$myparam='LBP'"><xsl:value-of select="$myparam"/> (Lebanese Pound)</xsl:when>
      		<xsl:when test="$myparam='LKR'"><xsl:value-of select="$myparam"/> (Sri Lanka Rupee)</xsl:when>
      		<xsl:when test="$myparam='LRD'"><xsl:value-of select="$myparam"/> (Liberian Dollar)</xsl:when>
      		<xsl:when test="$myparam='LSL'"><xsl:value-of select="$myparam"/> (Loti)</xsl:when>
      		<xsl:when test="$myparam='LYD'"><xsl:value-of select="$myparam"/> (Libyan Dinar)</xsl:when>
      		<xsl:when test="$myparam='MAD'"><xsl:value-of select="$myparam"/> (Moroccan Dirham)</xsl:when>
      		<xsl:when test="$myparam='MDL'"><xsl:value-of select="$myparam"/> (Moldovan Leu)</xsl:when>
      		<xsl:when test="$myparam='MGA'"><xsl:value-of select="$myparam"/> (Malagasy Ariary)</xsl:when>
      		<xsl:when test="$myparam='MKD'"><xsl:value-of select="$myparam"/> (Denar)</xsl:when>
      		<xsl:when test="$myparam='MMK'"><xsl:value-of select="$myparam"/> (Kyat)</xsl:when>
      		<xsl:when test="$myparam='MNT'"><xsl:value-of select="$myparam"/> (Tugrik)</xsl:when>
      		<xsl:when test="$myparam='MOP'"><xsl:value-of select="$myparam"/> (Pataca)</xsl:when>
      		<xsl:when test="$myparam='MRO'"><xsl:value-of select="$myparam"/> (Ouguiya)</xsl:when>
      		<xsl:when test="$myparam='MUR'"><xsl:value-of select="$myparam"/> (Mauritius Rupee)</xsl:when>
      		<xsl:when test="$myparam='MVR'"><xsl:value-of select="$myparam"/> (Rufiyaa)</xsl:when>
      		<xsl:when test="$myparam='MWK'"><xsl:value-of select="$myparam"/> (Malawi Kwacha)</xsl:when>
      		<xsl:when test="$myparam='MXN'"><xsl:value-of select="$myparam"/> (Mexican Peso)</xsl:when>
      		<xsl:when test="$myparam='MXV'"><xsl:value-of select="$myparam"/> (Mexican Unidad de Inversion (UDI))</xsl:when>
      		<xsl:when test="$myparam='MYR'"><xsl:value-of select="$myparam"/> (Malaysian Ringgit)</xsl:when>
      		<xsl:when test="$myparam='MZN'"><xsl:value-of select="$myparam"/> (Mozambique Metical)</xsl:when>
      		<xsl:when test="$myparam='NAD'"><xsl:value-of select="$myparam"/> (Namibia Dollar)</xsl:when>
      		<xsl:when test="$myparam='NGN'"><xsl:value-of select="$myparam"/> (Naira)</xsl:when>
      		<xsl:when test="$myparam='NIO'"><xsl:value-of select="$myparam"/> (Cordoba Oro)</xsl:when>
      		<xsl:when test="$myparam='NOK'"><xsl:value-of select="$myparam"/> (Norwegian Krone)</xsl:when>
      		<xsl:when test="$myparam='NPR'"><xsl:value-of select="$myparam"/> (Nepalese Rupee)</xsl:when>
      		<xsl:when test="$myparam='NZD'"><xsl:value-of select="$myparam"/> (New Zealand Dollar)</xsl:when>
      		<xsl:when test="$myparam='OMR'"><xsl:value-of select="$myparam"/> (Rial Omani)</xsl:when>
      		<xsl:when test="$myparam='PAB'"><xsl:value-of select="$myparam"/> (Balboa)</xsl:when>
      		<xsl:when test="$myparam='PEN'"><xsl:value-of select="$myparam"/> (Sol)</xsl:when>
      		<xsl:when test="$myparam='PGK'"><xsl:value-of select="$myparam"/> (Kina)</xsl:when>
      		<xsl:when test="$myparam='PHP'"><xsl:value-of select="$myparam"/> (Philippine Piso)</xsl:when>
      		<xsl:when test="$myparam='PKR'"><xsl:value-of select="$myparam"/> (Pakistan Rupee)</xsl:when>
      		<xsl:when test="$myparam='PLN'"><xsl:value-of select="$myparam"/> (Zloty)</xsl:when>
      		<xsl:when test="$myparam='PYG'"><xsl:value-of select="$myparam"/> (Guarani)</xsl:when>
      		<xsl:when test="$myparam='QAR'"><xsl:value-of select="$myparam"/> (Qatari Rial)</xsl:when>
      		<xsl:when test="$myparam='RON'"><xsl:value-of select="$myparam"/> (Romanian Leu)</xsl:when>
      		<xsl:when test="$myparam='RSD'"><xsl:value-of select="$myparam"/> (Serbian Dinar)</xsl:when>
      		<xsl:when test="$myparam='RUB'"><xsl:value-of select="$myparam"/> (Russian Ruble)</xsl:when>
      		<xsl:when test="$myparam='RWF'"><xsl:value-of select="$myparam"/> (Rwanda Franc)</xsl:when>
      		<xsl:when test="$myparam='SAR'"><xsl:value-of select="$myparam"/> (Saudi Riyal)</xsl:when>
      		<xsl:when test="$myparam='SBD'"><xsl:value-of select="$myparam"/> (Solomon Islands Dollar)</xsl:when>
      		<xsl:when test="$myparam='SCR'"><xsl:value-of select="$myparam"/> (Seychelles Rupee)</xsl:when>
      		<xsl:when test="$myparam='SDG'"><xsl:value-of select="$myparam"/> (Sudanese Pound)</xsl:when>
      		<xsl:when test="$myparam='SEK'"><xsl:value-of select="$myparam"/> (Swedish Krona)</xsl:when>
      		<xsl:when test="$myparam='SGD'"><xsl:value-of select="$myparam"/> (Singapore Dollar)</xsl:when>
      		<xsl:when test="$myparam='SHP'"><xsl:value-of select="$myparam"/> (Saint Helena Pound)</xsl:when>
      		<xsl:when test="$myparam='SLL'"><xsl:value-of select="$myparam"/> (Leone)</xsl:when>
      		<xsl:when test="$myparam='SOS'"><xsl:value-of select="$myparam"/> (Somali Shilling)</xsl:when>
      		<xsl:when test="$myparam='SRD'"><xsl:value-of select="$myparam"/> (Surinam Dollar)</xsl:when>
      		<xsl:when test="$myparam='SSP'"><xsl:value-of select="$myparam"/> (South Sudanese Pound)</xsl:when>
      		<xsl:when test="$myparam='STD'"><xsl:value-of select="$myparam"/> (Dobra)</xsl:when>
      		<xsl:when test="$myparam='SVC'"><xsl:value-of select="$myparam"/> (El Salvador Colon)</xsl:when>
      		<xsl:when test="$myparam='SYP'"><xsl:value-of select="$myparam"/> (Syrian Pound)</xsl:when>
      		<xsl:when test="$myparam='SZL'"><xsl:value-of select="$myparam"/> (Lilangeni)</xsl:when>
      		<xsl:when test="$myparam='THB'"><xsl:value-of select="$myparam"/> (Baht)</xsl:when>
      		<xsl:when test="$myparam='TJS'"><xsl:value-of select="$myparam"/> (Somoni)</xsl:when>
      		<xsl:when test="$myparam='TMT'"><xsl:value-of select="$myparam"/> (Turkmenistan New Manat)</xsl:when>
      		<xsl:when test="$myparam='TND'"><xsl:value-of select="$myparam"/> (Tunisian Dinar)</xsl:when>
      		<xsl:when test="$myparam='TOP'"><xsl:value-of select="$myparam"/> (Pa’anga)</xsl:when>
      		<xsl:when test="$myparam='TRY'"><xsl:value-of select="$myparam"/> (Turkish Lira)</xsl:when>
      		<xsl:when test="$myparam='TTD'"><xsl:value-of select="$myparam"/> (Trinidad and Tobago Dollar)</xsl:when>
      		<xsl:when test="$myparam='TWD'"><xsl:value-of select="$myparam"/> (New Taiwan Dollar)</xsl:when>
      		<xsl:when test="$myparam='TZS'"><xsl:value-of select="$myparam"/> (Tanzanian Shilling)</xsl:when>
      		<xsl:when test="$myparam='UAH'"><xsl:value-of select="$myparam"/> (Hryvnia)</xsl:when>
      		<xsl:when test="$myparam='UGX'"><xsl:value-of select="$myparam"/> (Uganda Shilling)</xsl:when>
      		<xsl:when test="$myparam='USD'"><xsl:value-of select="$myparam"/> (US Dollar)</xsl:when>
      		<xsl:when test="$myparam='USN'"><xsl:value-of select="$myparam"/> (US Dollar (Next day))</xsl:when>
      		<xsl:when test="$myparam='UYI'"><xsl:value-of select="$myparam"/> (Uruguay Peso en Unidades Indexadas (URUIURUI))</xsl:when>
      		<xsl:when test="$myparam='UYU'"><xsl:value-of select="$myparam"/> (Peso Uruguayo)</xsl:when>
      		<xsl:when test="$myparam='UZS'"><xsl:value-of select="$myparam"/> (Uzbekistan Sum)</xsl:when>
      		<xsl:when test="$myparam='VEF'"><xsl:value-of select="$myparam"/> (Bolívar)</xsl:when>
      		<xsl:when test="$myparam='VND'"><xsl:value-of select="$myparam"/> (Dong)</xsl:when>
      		<xsl:when test="$myparam='VUV'"><xsl:value-of select="$myparam"/> (Vatu)</xsl:when>
      		<xsl:when test="$myparam='WST'"><xsl:value-of select="$myparam"/> (Tala)</xsl:when>
      		<xsl:when test="$myparam='XAF'"><xsl:value-of select="$myparam"/> (CFA Franc BEAC)</xsl:when>
      		<xsl:when test="$myparam='XAG'"><xsl:value-of select="$myparam"/> (Silver)</xsl:when>
      		<xsl:when test="$myparam='XAU'"><xsl:value-of select="$myparam"/> (Gold)</xsl:when>
      		<xsl:when test="$myparam='XBA'"><xsl:value-of select="$myparam"/> (Bond Markets Unit European Composite Unit (EURCO))</xsl:when>
      		<xsl:when test="$myparam='XBB'"><xsl:value-of select="$myparam"/> (Bond Markets Unit European Monetary Unit (E.M.U.-6))</xsl:when>
      		<xsl:when test="$myparam='XBC'"><xsl:value-of select="$myparam"/> (Bond Markets Unit European Unit of Account 9 (E.U.A.-9))</xsl:when>
      		<xsl:when test="$myparam='XBD'"><xsl:value-of select="$myparam"/> (Bond Markets Unit European Unit of Account 17 (E.U.A.-17))</xsl:when>
      		<xsl:when test="$myparam='XCD'"><xsl:value-of select="$myparam"/> (East Caribbean Dollar)</xsl:when>
      		<xsl:when test="$myparam='XDR'"><xsl:value-of select="$myparam"/> (SDR (Special Drawing Right))</xsl:when>
      		<xsl:when test="$myparam='XOF'"><xsl:value-of select="$myparam"/> (CFA Franc BCEAO)</xsl:when>
      		<xsl:when test="$myparam='XPD'"><xsl:value-of select="$myparam"/> (Palladium)</xsl:when>
      		<xsl:when test="$myparam='XPF'"><xsl:value-of select="$myparam"/> (CFP Franc)</xsl:when>
      		<xsl:when test="$myparam='XPT'"><xsl:value-of select="$myparam"/> (Platinum)</xsl:when>
      		<xsl:when test="$myparam='XSU'"><xsl:value-of select="$myparam"/> (Sucre)</xsl:when>
      		<xsl:when test="$myparam='XTS'"><xsl:value-of select="$myparam"/> (Codes specifically reserved for testing purposes)</xsl:when>
      		<xsl:when test="$myparam='XUA'"><xsl:value-of select="$myparam"/> (ADB Unit of Account)</xsl:when>
      		<xsl:when test="$myparam='XXX'"><xsl:value-of select="$myparam"/> (The codes assigned for transactions where no currency is involved)</xsl:when>
      		<xsl:when test="$myparam='YER'"><xsl:value-of select="$myparam"/> (Yemeni Rial)</xsl:when>
      		<xsl:when test="$myparam='ZAR'"><xsl:value-of select="$myparam"/> (Rand)</xsl:when>
      		<xsl:when test="$myparam='ZMW'"><xsl:value-of select="$myparam"/> (Zambian Kwacha)</xsl:when>
      		<xsl:when test="$myparam='ZWL'"><xsl:value-of select="$myparam"/> (Zimbabwe Dollar)</xsl:when>
   			<xsl:otherwise><xsl:value-of select="$myparam"/></xsl:otherwise>
		</xsl:choose>
	</xsl:template>

</xsl:stylesheet>