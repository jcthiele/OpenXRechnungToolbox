<?xml version="1.0"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template name="code.rec20">
		<xsl:param name="myparam"/>
		<xsl:choose>
      		<xsl:when test="$myparam='10'"><xsl:value-of select="$myparam"/> (group)</xsl:when>
      		<xsl:when test="$myparam='11'"><xsl:value-of select="$myparam"/> (outfit)</xsl:when>
      		<xsl:when test="$myparam='13'"><xsl:value-of select="$myparam"/> (ration)</xsl:when>
      		<xsl:when test="$myparam='14'"><xsl:value-of select="$myparam"/> (shot)</xsl:when>
      		<xsl:when test="$myparam='15'"><xsl:value-of select="$myparam"/> (stick, military)</xsl:when>
      		<xsl:when test="$myparam='20'"><xsl:value-of select="$myparam"/> (twenty foot container)</xsl:when>
      		<xsl:when test="$myparam='21'"><xsl:value-of select="$myparam"/> (forty foot container)</xsl:when>
      		<xsl:when test="$myparam='22'"><xsl:value-of select="$myparam"/> (decilitre per gram)</xsl:when>
      		<xsl:when test="$myparam='23'"><xsl:value-of select="$myparam"/> (gram per cubic centimetre)</xsl:when>
      		<xsl:when test="$myparam='24'"><xsl:value-of select="$myparam"/> (theoretical pound)</xsl:when>
      		<xsl:when test="$myparam='25'"><xsl:value-of select="$myparam"/> (gram per square centimetre)</xsl:when>
      		<xsl:when test="$myparam='27'"><xsl:value-of select="$myparam"/> (theoretical ton)</xsl:when>
      		<xsl:when test="$myparam='28'"><xsl:value-of select="$myparam"/> (kilogram per square metre)</xsl:when>
      		<xsl:when test="$myparam='33'"><xsl:value-of select="$myparam"/> (kilopascal square metre per gram)</xsl:when>
      		<xsl:when test="$myparam='34'"><xsl:value-of select="$myparam"/> (kilopascal per millimetre)</xsl:when>
      		<xsl:when test="$myparam='35'"><xsl:value-of select="$myparam"/> (millilitre per square centimetre second)</xsl:when>
      		<xsl:when test="$myparam='37'"><xsl:value-of select="$myparam"/> (ounce per square foot)</xsl:when>
      		<xsl:when test="$myparam='38'"><xsl:value-of select="$myparam"/> (ounce per square foot per 0,01inch)</xsl:when>
      		<xsl:when test="$myparam='40'"><xsl:value-of select="$myparam"/> (millilitre per second)</xsl:when>
      		<xsl:when test="$myparam='41'"><xsl:value-of select="$myparam"/> (millilitre per minute)</xsl:when>
      		<xsl:when test="$myparam='56'"><xsl:value-of select="$myparam"/> (sitas)</xsl:when>
      		<xsl:when test="$myparam='57'"><xsl:value-of select="$myparam"/> (mesh)</xsl:when>
      		<xsl:when test="$myparam='58'"><xsl:value-of select="$myparam"/> (net kilogram)</xsl:when>
      		<xsl:when test="$myparam='59'"><xsl:value-of select="$myparam"/> (part per million)</xsl:when>
      		<xsl:when test="$myparam='60'"><xsl:value-of select="$myparam"/> (percent weight)</xsl:when>
      		<xsl:when test="$myparam='61'"><xsl:value-of select="$myparam"/> (part per billion (US))</xsl:when>
      		<xsl:when test="$myparam='74'"><xsl:value-of select="$myparam"/> (millipascal)</xsl:when>
      		<xsl:when test="$myparam='77'"><xsl:value-of select="$myparam"/> (milli-inch)</xsl:when>
      		<xsl:when test="$myparam='80'"><xsl:value-of select="$myparam"/> (pound per square inch absolute)</xsl:when>
      		<xsl:when test="$myparam='81'"><xsl:value-of select="$myparam"/> (henry)</xsl:when>
      		<xsl:when test="$myparam='85'"><xsl:value-of select="$myparam"/> (foot pound-force)</xsl:when>
      		<xsl:when test="$myparam='87'"><xsl:value-of select="$myparam"/> (pound per cubic foot)</xsl:when>
      		<xsl:when test="$myparam='89'"><xsl:value-of select="$myparam"/> (poise)</xsl:when>
      		<xsl:when test="$myparam='91'"><xsl:value-of select="$myparam"/> (stokes)</xsl:when>
      		<xsl:when test="$myparam='1I'"><xsl:value-of select="$myparam"/> (fixed rate)</xsl:when>
      		<xsl:when test="$myparam='2A'"><xsl:value-of select="$myparam"/> (radian per second)</xsl:when>
      		<xsl:when test="$myparam='2B'"><xsl:value-of select="$myparam"/> (radian per second squared)</xsl:when>
      		<xsl:when test="$myparam='2C'"><xsl:value-of select="$myparam"/> (roentgen)</xsl:when>
      		<xsl:when test="$myparam='2G'"><xsl:value-of select="$myparam"/> (volt AC)</xsl:when>
      		<xsl:when test="$myparam='2H'"><xsl:value-of select="$myparam"/> (volt DC)</xsl:when>
      		<xsl:when test="$myparam='2I'"><xsl:value-of select="$myparam"/> (British thermal unit (international table) per hour)</xsl:when>
      		<xsl:when test="$myparam='2J'"><xsl:value-of select="$myparam"/> (cubic centimetre per second)</xsl:when>
      		<xsl:when test="$myparam='2K'"><xsl:value-of select="$myparam"/> (cubic foot per hour)</xsl:when>
      		<xsl:when test="$myparam='2L'"><xsl:value-of select="$myparam"/> (cubic foot per minute)</xsl:when>
      		<xsl:when test="$myparam='2M'"><xsl:value-of select="$myparam"/> (centimetre per second)</xsl:when>
      		<xsl:when test="$myparam='2N'"><xsl:value-of select="$myparam"/> (decibel)</xsl:when>
      		<xsl:when test="$myparam='2P'"><xsl:value-of select="$myparam"/> (kilobyte)</xsl:when>
      		<xsl:when test="$myparam='2Q'"><xsl:value-of select="$myparam"/> (kilobecquerel)</xsl:when>
      		<xsl:when test="$myparam='2R'"><xsl:value-of select="$myparam"/> (kilocurie)</xsl:when>
      		<xsl:when test="$myparam='2U'"><xsl:value-of select="$myparam"/> (megagram)</xsl:when>
      		<xsl:when test="$myparam='2X'"><xsl:value-of select="$myparam"/> (metre per minute)</xsl:when>
      		<xsl:when test="$myparam='2Y'"><xsl:value-of select="$myparam"/> (milliroentgen)</xsl:when>
      		<xsl:when test="$myparam='2Z'"><xsl:value-of select="$myparam"/> (millivolt)</xsl:when>
      		<xsl:when test="$myparam='3B'"><xsl:value-of select="$myparam"/> (megajoule)</xsl:when>
      		<xsl:when test="$myparam='3C'"><xsl:value-of select="$myparam"/> (manmonth)</xsl:when>
      		<xsl:when test="$myparam='4C'"><xsl:value-of select="$myparam"/> (centistokes)</xsl:when>
      		<xsl:when test="$myparam='4G'"><xsl:value-of select="$myparam"/> (microlitre)</xsl:when>
      		<xsl:when test="$myparam='4H'"><xsl:value-of select="$myparam"/> (micrometre (micron))</xsl:when>
      		<xsl:when test="$myparam='4K'"><xsl:value-of select="$myparam"/> (milliampere)</xsl:when>
      		<xsl:when test="$myparam='4L'"><xsl:value-of select="$myparam"/> (megabyte)</xsl:when>
      		<xsl:when test="$myparam='4M'"><xsl:value-of select="$myparam"/> (milligram per hour)</xsl:when>
      		<xsl:when test="$myparam='4N'"><xsl:value-of select="$myparam"/> (megabecquerel)</xsl:when>
      		<xsl:when test="$myparam='4O'"><xsl:value-of select="$myparam"/> (microfarad)</xsl:when>
      		<xsl:when test="$myparam='4P'"><xsl:value-of select="$myparam"/> (newton per metre)</xsl:when>
      		<xsl:when test="$myparam='4Q'"><xsl:value-of select="$myparam"/> (ounce inch)</xsl:when>
      		<xsl:when test="$myparam='4R'"><xsl:value-of select="$myparam"/> (ounce foot)</xsl:when>
      		<xsl:when test="$myparam='4T'"><xsl:value-of select="$myparam"/> (picofarad)</xsl:when>
      		<xsl:when test="$myparam='4U'"><xsl:value-of select="$myparam"/> (pound per hour)</xsl:when>
      		<xsl:when test="$myparam='4W'"><xsl:value-of select="$myparam"/> (ton (US) per hour)</xsl:when>
      		<xsl:when test="$myparam='4X'"><xsl:value-of select="$myparam"/> (kilolitre per hour)</xsl:when>
      		<xsl:when test="$myparam='5A'"><xsl:value-of select="$myparam"/> (barrel (US) per minute)</xsl:when>
      		<xsl:when test="$myparam='5B'"><xsl:value-of select="$myparam"/> (batch)</xsl:when>
      		<xsl:when test="$myparam='5E'"><xsl:value-of select="$myparam"/> (MMSCF/day)</xsl:when>
      		<xsl:when test="$myparam='5J'"><xsl:value-of select="$myparam"/> (hydraulic horse power)</xsl:when>
      		<xsl:when test="$myparam='A10'"><xsl:value-of select="$myparam"/> (ampere square metre per joule second)</xsl:when>
      		<xsl:when test="$myparam='A11'"><xsl:value-of select="$myparam"/> (angstrom)</xsl:when>
      		<xsl:when test="$myparam='A12'"><xsl:value-of select="$myparam"/> (astronomical unit)</xsl:when>
      		<xsl:when test="$myparam='A13'"><xsl:value-of select="$myparam"/> (attojoule)</xsl:when>
      		<xsl:when test="$myparam='A14'"><xsl:value-of select="$myparam"/> (barn)</xsl:when>
      		<xsl:when test="$myparam='A15'"><xsl:value-of select="$myparam"/> (barn per electronvolt)</xsl:when>
      		<xsl:when test="$myparam='A16'"><xsl:value-of select="$myparam"/> (barn per steradian electronvolt)</xsl:when>
      		<xsl:when test="$myparam='A17'"><xsl:value-of select="$myparam"/> (barn per steradian)</xsl:when>
      		<xsl:when test="$myparam='A18'"><xsl:value-of select="$myparam"/> (becquerel per kilogram)</xsl:when>
      		<xsl:when test="$myparam='A19'"><xsl:value-of select="$myparam"/> (becquerel per cubic metre)</xsl:when>
      		<xsl:when test="$myparam='A2'"><xsl:value-of select="$myparam"/> (ampere per centimetre)</xsl:when>
      		<xsl:when test="$myparam='A20'"><xsl:value-of select="$myparam"/> (British thermal unit (international table) per second square foot degree Rankine)</xsl:when>
      		<xsl:when test="$myparam='A21'"><xsl:value-of select="$myparam"/> (British thermal unit (international table) per pound degree Rankine)</xsl:when>
      		<xsl:when test="$myparam='A22'"><xsl:value-of select="$myparam"/> (British thermal unit (international table) per second foot degree Rankine)</xsl:when>
      		<xsl:when test="$myparam='A23'"><xsl:value-of select="$myparam"/> (British thermal unit (international table) per hour square foot degree Rankine)</xsl:when>
      		<xsl:when test="$myparam='A24'"><xsl:value-of select="$myparam"/> (candela per square metre)</xsl:when>
      		<xsl:when test="$myparam='A26'"><xsl:value-of select="$myparam"/> (coulomb metre)</xsl:when>
      		<xsl:when test="$myparam='A27'"><xsl:value-of select="$myparam"/> (coulomb metre squared per volt)</xsl:when>
      		<xsl:when test="$myparam='A28'"><xsl:value-of select="$myparam"/> (coulomb per cubic centimetre)</xsl:when>
      		<xsl:when test="$myparam='A29'"><xsl:value-of select="$myparam"/> (coulomb per cubic metre)</xsl:when>
      		<xsl:when test="$myparam='A3'"><xsl:value-of select="$myparam"/> (ampere per millimetre)</xsl:when>
      		<xsl:when test="$myparam='A30'"><xsl:value-of select="$myparam"/> (coulomb per cubic millimetre)</xsl:when>
      		<xsl:when test="$myparam='A31'"><xsl:value-of select="$myparam"/> (coulomb per kilogram second)</xsl:when>
      		<xsl:when test="$myparam='A32'"><xsl:value-of select="$myparam"/> (coulomb per mole)</xsl:when>
      		<xsl:when test="$myparam='A33'"><xsl:value-of select="$myparam"/> (coulomb per square centimetre)</xsl:when>
      		<xsl:when test="$myparam='A34'"><xsl:value-of select="$myparam"/> (coulomb per square metre)</xsl:when>
      		<xsl:when test="$myparam='A35'"><xsl:value-of select="$myparam"/> (coulomb per square millimetre)</xsl:when>
      		<xsl:when test="$myparam='A36'"><xsl:value-of select="$myparam"/> (cubic centimetre per mole)</xsl:when>
      		<xsl:when test="$myparam='A37'"><xsl:value-of select="$myparam"/> (cubic decimetre per mole)</xsl:when>
      		<xsl:when test="$myparam='A38'"><xsl:value-of select="$myparam"/> (cubic metre per coulomb)</xsl:when>
      		<xsl:when test="$myparam='A39'"><xsl:value-of select="$myparam"/> (cubic metre per kilogram)</xsl:when>
      		<xsl:when test="$myparam='A4'"><xsl:value-of select="$myparam"/> (ampere per square centimetre)</xsl:when>
      		<xsl:when test="$myparam='A40'"><xsl:value-of select="$myparam"/> (cubic metre per mole)</xsl:when>
      		<xsl:when test="$myparam='A41'"><xsl:value-of select="$myparam"/> (ampere per square metre)</xsl:when>
      		<xsl:when test="$myparam='A42'"><xsl:value-of select="$myparam"/> (curie per kilogram)</xsl:when>
      		<xsl:when test="$myparam='A43'"><xsl:value-of select="$myparam"/> (deadweight tonnage)</xsl:when>
      		<xsl:when test="$myparam='A44'"><xsl:value-of select="$myparam"/> (decalitre)</xsl:when>
      		<xsl:when test="$myparam='A45'"><xsl:value-of select="$myparam"/> (decametre)</xsl:when>
      		<xsl:when test="$myparam='A47'"><xsl:value-of select="$myparam"/> (decitex)</xsl:when>
      		<xsl:when test="$myparam='A48'"><xsl:value-of select="$myparam"/> (degree Rankine)</xsl:when>
      		<xsl:when test="$myparam='A49'"><xsl:value-of select="$myparam"/> (denier)</xsl:when>
      		<xsl:when test="$myparam='A5'"><xsl:value-of select="$myparam"/> (ampere square metre)</xsl:when>
      		<xsl:when test="$myparam='A53'"><xsl:value-of select="$myparam"/> (electronvolt)</xsl:when>
      		<xsl:when test="$myparam='A54'"><xsl:value-of select="$myparam"/> (electronvolt per metre)</xsl:when>
      		<xsl:when test="$myparam='A55'"><xsl:value-of select="$myparam"/> (electronvolt square metre)</xsl:when>
      		<xsl:when test="$myparam='A56'"><xsl:value-of select="$myparam"/> (electronvolt square metre per kilogram)</xsl:when>
      		<xsl:when test="$myparam='A59'"><xsl:value-of select="$myparam"/> (8-part cloud cover)</xsl:when>
      		<xsl:when test="$myparam='A6'"><xsl:value-of select="$myparam"/> (ampere per square metre kelvin squared)</xsl:when>
      		<xsl:when test="$myparam='A68'"><xsl:value-of select="$myparam"/> (exajoule)</xsl:when>
      		<xsl:when test="$myparam='A69'"><xsl:value-of select="$myparam"/> (farad per metre)</xsl:when>
      		<xsl:when test="$myparam='A7'"><xsl:value-of select="$myparam"/> (ampere per square millimetre)</xsl:when>
      		<xsl:when test="$myparam='A70'"><xsl:value-of select="$myparam"/> (femtojoule)</xsl:when>
      		<xsl:when test="$myparam='A71'"><xsl:value-of select="$myparam"/> (femtometre)</xsl:when>
      		<xsl:when test="$myparam='A73'"><xsl:value-of select="$myparam"/> (foot per second squared)</xsl:when>
      		<xsl:when test="$myparam='A74'"><xsl:value-of select="$myparam"/> (foot pound-force per second)</xsl:when>
      		<xsl:when test="$myparam='A75'"><xsl:value-of select="$myparam"/> (freight ton)</xsl:when>
      		<xsl:when test="$myparam='A76'"><xsl:value-of select="$myparam"/> (gal)</xsl:when>
      		<xsl:when test="$myparam='A8'"><xsl:value-of select="$myparam"/> (ampere second)</xsl:when>
      		<xsl:when test="$myparam='A84'"><xsl:value-of select="$myparam"/> (gigacoulomb per cubic metre)</xsl:when>
      		<xsl:when test="$myparam='A85'"><xsl:value-of select="$myparam"/> (gigaelectronvolt)</xsl:when>
      		<xsl:when test="$myparam='A86'"><xsl:value-of select="$myparam"/> (gigahertz)</xsl:when>
      		<xsl:when test="$myparam='A87'"><xsl:value-of select="$myparam"/> (gigaohm)</xsl:when>
      		<xsl:when test="$myparam='A88'"><xsl:value-of select="$myparam"/> (gigaohm metre)</xsl:when>
      		<xsl:when test="$myparam='A89'"><xsl:value-of select="$myparam"/> (gigapascal)</xsl:when>
      		<xsl:when test="$myparam='A9'"><xsl:value-of select="$myparam"/> (rate)</xsl:when>
      		<xsl:when test="$myparam='A90'"><xsl:value-of select="$myparam"/> (gigawatt)</xsl:when>
      		<xsl:when test="$myparam='A91'"><xsl:value-of select="$myparam"/> (gon)</xsl:when>
      		<xsl:when test="$myparam='A93'"><xsl:value-of select="$myparam"/> (gram per cubic metre)</xsl:when>
      		<xsl:when test="$myparam='A94'"><xsl:value-of select="$myparam"/> (gram per mole)</xsl:when>
      		<xsl:when test="$myparam='A95'"><xsl:value-of select="$myparam"/> (gray)</xsl:when>
      		<xsl:when test="$myparam='A96'"><xsl:value-of select="$myparam"/> (gray per second)</xsl:when>
      		<xsl:when test="$myparam='A97'"><xsl:value-of select="$myparam"/> (hectopascal)</xsl:when>
      		<xsl:when test="$myparam='A98'"><xsl:value-of select="$myparam"/> (henry per metre)</xsl:when>
      		<xsl:when test="$myparam='A99'"><xsl:value-of select="$myparam"/> (bit)</xsl:when>
      		<xsl:when test="$myparam='AA'"><xsl:value-of select="$myparam"/> (ball)</xsl:when>
      		<xsl:when test="$myparam='AB'"><xsl:value-of select="$myparam"/> (bulk pack)</xsl:when>
      		<xsl:when test="$myparam='ACR'"><xsl:value-of select="$myparam"/> (acre)</xsl:when>
      		<xsl:when test="$myparam='ACT'"><xsl:value-of select="$myparam"/> (activity)</xsl:when>
      		<xsl:when test="$myparam='AD'"><xsl:value-of select="$myparam"/> (byte)</xsl:when>
      		<xsl:when test="$myparam='AE'"><xsl:value-of select="$myparam"/> (ampere per metre)</xsl:when>
      		<xsl:when test="$myparam='AH'"><xsl:value-of select="$myparam"/> (additional minute)</xsl:when>
      		<xsl:when test="$myparam='AI'"><xsl:value-of select="$myparam"/> (average minute per call)</xsl:when>
      		<xsl:when test="$myparam='AK'"><xsl:value-of select="$myparam"/> (fathom)</xsl:when>
      		<xsl:when test="$myparam='AL'"><xsl:value-of select="$myparam"/> (access line)</xsl:when>
      		<xsl:when test="$myparam='AMH'"><xsl:value-of select="$myparam"/> (ampere hour)</xsl:when>
      		<xsl:when test="$myparam='AMP'"><xsl:value-of select="$myparam"/> (ampere)</xsl:when>
      		<xsl:when test="$myparam='ANN'"><xsl:value-of select="$myparam"/> (year)</xsl:when>
      		<xsl:when test="$myparam='APZ'"><xsl:value-of select="$myparam"/> (troy ounce or apothecary ounce)</xsl:when>
      		<xsl:when test="$myparam='AQ'"><xsl:value-of select="$myparam"/> (anti-hemophilic factor (AHF) unit)</xsl:when>
      		<xsl:when test="$myparam='AS'"><xsl:value-of select="$myparam"/> (assortment)</xsl:when>
      		<xsl:when test="$myparam='ASM'"><xsl:value-of select="$myparam"/> (alcoholic strength by mass)</xsl:when>
      		<xsl:when test="$myparam='ASU'"><xsl:value-of select="$myparam"/> (alcoholic strength by volume)</xsl:when>
      		<xsl:when test="$myparam='ATM'"><xsl:value-of select="$myparam"/> (standard atmosphere)</xsl:when>
      		<xsl:when test="$myparam='AWG'"><xsl:value-of select="$myparam"/> (american wire gauge)</xsl:when>
      		<xsl:when test="$myparam='AY'"><xsl:value-of select="$myparam"/> (assembly)</xsl:when>
      		<xsl:when test="$myparam='AZ'"><xsl:value-of select="$myparam"/> (British thermal unit (international table) per pound)</xsl:when>
      		<xsl:when test="$myparam='B1'"><xsl:value-of select="$myparam"/> (barrel (US) per day)</xsl:when>
      		<xsl:when test="$myparam='B10'"><xsl:value-of select="$myparam"/> (bit per second)</xsl:when>
      		<xsl:when test="$myparam='B11'"><xsl:value-of select="$myparam"/> (joule per kilogram kelvin)</xsl:when>
      		<xsl:when test="$myparam='B12'"><xsl:value-of select="$myparam"/> (joule per metre)</xsl:when>
      		<xsl:when test="$myparam='B13'"><xsl:value-of select="$myparam"/> (joule per square metre)</xsl:when>
      		<xsl:when test="$myparam='B14'"><xsl:value-of select="$myparam"/> (joule per metre to the fourth power)</xsl:when>
      		<xsl:when test="$myparam='B15'"><xsl:value-of select="$myparam"/> (joule per mole)</xsl:when>
      		<xsl:when test="$myparam='B16'"><xsl:value-of select="$myparam"/> (joule per mole kelvin)</xsl:when>
      		<xsl:when test="$myparam='B17'"><xsl:value-of select="$myparam"/> (credit)</xsl:when>
      		<xsl:when test="$myparam='B18'"><xsl:value-of select="$myparam"/> (joule second)</xsl:when>
      		<xsl:when test="$myparam='B19'"><xsl:value-of select="$myparam"/> (digit)</xsl:when>
      		<xsl:when test="$myparam='B20'"><xsl:value-of select="$myparam"/> (joule square metre per kilogram)</xsl:when>
      		<xsl:when test="$myparam='B21'"><xsl:value-of select="$myparam"/> (kelvin per watt)</xsl:when>
      		<xsl:when test="$myparam='B22'"><xsl:value-of select="$myparam"/> (kiloampere)</xsl:when>
      		<xsl:when test="$myparam='B23'"><xsl:value-of select="$myparam"/> (kiloampere per square metre)</xsl:when>
      		<xsl:when test="$myparam='B24'"><xsl:value-of select="$myparam"/> (kiloampere per metre)</xsl:when>
      		<xsl:when test="$myparam='B25'"><xsl:value-of select="$myparam"/> (kilobecquerel per kilogram)</xsl:when>
      		<xsl:when test="$myparam='B26'"><xsl:value-of select="$myparam"/> (kilocoulomb)</xsl:when>
      		<xsl:when test="$myparam='B27'"><xsl:value-of select="$myparam"/> (kilocoulomb per cubic metre)</xsl:when>
      		<xsl:when test="$myparam='B28'"><xsl:value-of select="$myparam"/> (kilocoulomb per square metre)</xsl:when>
      		<xsl:when test="$myparam='B29'"><xsl:value-of select="$myparam"/> (kiloelectronvolt)</xsl:when>
      		<xsl:when test="$myparam='B3'"><xsl:value-of select="$myparam"/> (batting pound)</xsl:when>
      		<xsl:when test="$myparam='B30'"><xsl:value-of select="$myparam"/> (gibibit)</xsl:when>
      		<xsl:when test="$myparam='B31'"><xsl:value-of select="$myparam"/> (kilogram metre per second)</xsl:when>
      		<xsl:when test="$myparam='B32'"><xsl:value-of select="$myparam"/> (kilogram metre squared)</xsl:when>
      		<xsl:when test="$myparam='B33'"><xsl:value-of select="$myparam"/> (kilogram metre squared per second)</xsl:when>
      		<xsl:when test="$myparam='B34'"><xsl:value-of select="$myparam"/> (kilogram per cubic decimetre)</xsl:when>
      		<xsl:when test="$myparam='B35'"><xsl:value-of select="$myparam"/> (kilogram per litre)</xsl:when>
      		<xsl:when test="$myparam='B4'"><xsl:value-of select="$myparam"/> (barrel, imperial)</xsl:when>
      		<xsl:when test="$myparam='B41'"><xsl:value-of select="$myparam"/> (kilojoule per kelvin)</xsl:when>
      		<xsl:when test="$myparam='B42'"><xsl:value-of select="$myparam"/> (kilojoule per kilogram)</xsl:when>
      		<xsl:when test="$myparam='B43'"><xsl:value-of select="$myparam"/> (kilojoule per kilogram kelvin)</xsl:when>
      		<xsl:when test="$myparam='B44'"><xsl:value-of select="$myparam"/> (kilojoule per mole)</xsl:when>
      		<xsl:when test="$myparam='B45'"><xsl:value-of select="$myparam"/> (kilomole)</xsl:when>
      		<xsl:when test="$myparam='B46'"><xsl:value-of select="$myparam"/> (kilomole per cubic metre)</xsl:when>
      		<xsl:when test="$myparam='B47'"><xsl:value-of select="$myparam"/> (kilonewton)</xsl:when>
      		<xsl:when test="$myparam='B48'"><xsl:value-of select="$myparam"/> (kilonewton metre)</xsl:when>
      		<xsl:when test="$myparam='B49'"><xsl:value-of select="$myparam"/> (kiloohm)</xsl:when>
      		<xsl:when test="$myparam='B50'"><xsl:value-of select="$myparam"/> (kiloohm metre)</xsl:when>
      		<xsl:when test="$myparam='B52'"><xsl:value-of select="$myparam"/> (kilosecond)</xsl:when>
      		<xsl:when test="$myparam='B53'"><xsl:value-of select="$myparam"/> (kilosiemens)</xsl:when>
      		<xsl:when test="$myparam='B54'"><xsl:value-of select="$myparam"/> (kilosiemens per metre)</xsl:when>
      		<xsl:when test="$myparam='B55'"><xsl:value-of select="$myparam"/> (kilovolt per metre)</xsl:when>
      		<xsl:when test="$myparam='B56'"><xsl:value-of select="$myparam"/> (kiloweber per metre)</xsl:when>
      		<xsl:when test="$myparam='B57'"><xsl:value-of select="$myparam"/> (light year)</xsl:when>
      		<xsl:when test="$myparam='B58'"><xsl:value-of select="$myparam"/> (litre per mole)</xsl:when>
      		<xsl:when test="$myparam='B59'"><xsl:value-of select="$myparam"/> (lumen hour)</xsl:when>
      		<xsl:when test="$myparam='B60'"><xsl:value-of select="$myparam"/> (lumen per square metre)</xsl:when>
      		<xsl:when test="$myparam='B61'"><xsl:value-of select="$myparam"/> (lumen per watt)</xsl:when>
      		<xsl:when test="$myparam='B62'"><xsl:value-of select="$myparam"/> (lumen second)</xsl:when>
      		<xsl:when test="$myparam='B63'"><xsl:value-of select="$myparam"/> (lux hour)</xsl:when>
      		<xsl:when test="$myparam='B64'"><xsl:value-of select="$myparam"/> (lux second)</xsl:when>
      		<xsl:when test="$myparam='B66'"><xsl:value-of select="$myparam"/> (megaampere per square metre)</xsl:when>
      		<xsl:when test="$myparam='B67'"><xsl:value-of select="$myparam"/> (megabecquerel per kilogram)</xsl:when>
      		<xsl:when test="$myparam='B68'"><xsl:value-of select="$myparam"/> (gigabit)</xsl:when>
      		<xsl:when test="$myparam='B69'"><xsl:value-of select="$myparam"/> (megacoulomb per cubic metre)</xsl:when>
      		<xsl:when test="$myparam='B7'"><xsl:value-of select="$myparam"/> (cycle)</xsl:when>
      		<xsl:when test="$myparam='B70'"><xsl:value-of select="$myparam"/> (megacoulomb per square metre)</xsl:when>
      		<xsl:when test="$myparam='B71'"><xsl:value-of select="$myparam"/> (megaelectronvolt)</xsl:when>
      		<xsl:when test="$myparam='B72'"><xsl:value-of select="$myparam"/> (megagram per cubic metre)</xsl:when>
      		<xsl:when test="$myparam='B73'"><xsl:value-of select="$myparam"/> (meganewton)</xsl:when>
      		<xsl:when test="$myparam='B74'"><xsl:value-of select="$myparam"/> (meganewton metre)</xsl:when>
      		<xsl:when test="$myparam='B75'"><xsl:value-of select="$myparam"/> (megaohm)</xsl:when>
      		<xsl:when test="$myparam='B76'"><xsl:value-of select="$myparam"/> (megaohm metre)</xsl:when>
      		<xsl:when test="$myparam='B77'"><xsl:value-of select="$myparam"/> (megasiemens per metre)</xsl:when>
      		<xsl:when test="$myparam='B78'"><xsl:value-of select="$myparam"/> (megavolt)</xsl:when>
      		<xsl:when test="$myparam='B79'"><xsl:value-of select="$myparam"/> (megavolt per metre)</xsl:when>
      		<xsl:when test="$myparam='B8'"><xsl:value-of select="$myparam"/> (joule per cubic metre)</xsl:when>
      		<xsl:when test="$myparam='B80'"><xsl:value-of select="$myparam"/> (gigabit per second)</xsl:when>
      		<xsl:when test="$myparam='B81'"><xsl:value-of select="$myparam"/> (reciprocal metre squared reciprocal second)</xsl:when>
      		<xsl:when test="$myparam='B82'"><xsl:value-of select="$myparam"/> (inch per linear foot)</xsl:when>
      		<xsl:when test="$myparam='B83'"><xsl:value-of select="$myparam"/> (metre to the fourth power)</xsl:when>
      		<xsl:when test="$myparam='B84'"><xsl:value-of select="$myparam"/> (microampere)</xsl:when>
      		<xsl:when test="$myparam='B85'"><xsl:value-of select="$myparam"/> (microbar)</xsl:when>
      		<xsl:when test="$myparam='B86'"><xsl:value-of select="$myparam"/> (microcoulomb)</xsl:when>
      		<xsl:when test="$myparam='B87'"><xsl:value-of select="$myparam"/> (microcoulomb per cubic metre)</xsl:when>
      		<xsl:when test="$myparam='B88'"><xsl:value-of select="$myparam"/> (microcoulomb per square metre)</xsl:when>
      		<xsl:when test="$myparam='B89'"><xsl:value-of select="$myparam"/> (microfarad per metre)</xsl:when>
      		<xsl:when test="$myparam='B90'"><xsl:value-of select="$myparam"/> (microhenry)</xsl:when>
      		<xsl:when test="$myparam='B91'"><xsl:value-of select="$myparam"/> (microhenry per metre)</xsl:when>
      		<xsl:when test="$myparam='B92'"><xsl:value-of select="$myparam"/> (micronewton)</xsl:when>
      		<xsl:when test="$myparam='B93'"><xsl:value-of select="$myparam"/> (micronewton metre)</xsl:when>
      		<xsl:when test="$myparam='B94'"><xsl:value-of select="$myparam"/> (microohm)</xsl:when>
      		<xsl:when test="$myparam='B95'"><xsl:value-of select="$myparam"/> (microohm metre)</xsl:when>
      		<xsl:when test="$myparam='B96'"><xsl:value-of select="$myparam"/> (micropascal)</xsl:when>
      		<xsl:when test="$myparam='B97'"><xsl:value-of select="$myparam"/> (microradian)</xsl:when>
      		<xsl:when test="$myparam='B98'"><xsl:value-of select="$myparam"/> (microsecond)</xsl:when>
      		<xsl:when test="$myparam='B99'"><xsl:value-of select="$myparam"/> (microsiemens)</xsl:when>
      		<xsl:when test="$myparam='BAR'"><xsl:value-of select="$myparam"/> (bar [unit of pressure])</xsl:when>
      		<xsl:when test="$myparam='BB'"><xsl:value-of select="$myparam"/> (base box)</xsl:when>
      		<xsl:when test="$myparam='BFT'"><xsl:value-of select="$myparam"/> (board foot)</xsl:when>
      		<xsl:when test="$myparam='BHP'"><xsl:value-of select="$myparam"/> (brake horse power)</xsl:when>
      		<xsl:when test="$myparam='BIL'"><xsl:value-of select="$myparam"/> (billion (EUR))</xsl:when>
      		<xsl:when test="$myparam='BLD'"><xsl:value-of select="$myparam"/> (dry barrel (US))</xsl:when>
      		<xsl:when test="$myparam='BLL'"><xsl:value-of select="$myparam"/> (barrel (US))</xsl:when>
      		<xsl:when test="$myparam='BP'"><xsl:value-of select="$myparam"/> (hundred board foot)</xsl:when>
      		<xsl:when test="$myparam='BPM'"><xsl:value-of select="$myparam"/> (beats per minute)</xsl:when>
      		<xsl:when test="$myparam='BQL'"><xsl:value-of select="$myparam"/> (becquerel)</xsl:when>
      		<xsl:when test="$myparam='BTU'"><xsl:value-of select="$myparam"/> (British thermal unit (international table))</xsl:when>
      		<xsl:when test="$myparam='BUA'"><xsl:value-of select="$myparam"/> (bushel (US))</xsl:when>
      		<xsl:when test="$myparam='BUI'"><xsl:value-of select="$myparam"/> (bushel (UK))</xsl:when>
      		<xsl:when test="$myparam='C0'"><xsl:value-of select="$myparam"/> (call)</xsl:when>
      		<xsl:when test="$myparam='C10'"><xsl:value-of select="$myparam"/> (millifarad)</xsl:when>
      		<xsl:when test="$myparam='C11'"><xsl:value-of select="$myparam"/> (milligal)</xsl:when>
      		<xsl:when test="$myparam='C12'"><xsl:value-of select="$myparam"/> (milligram per metre)</xsl:when>
      		<xsl:when test="$myparam='C13'"><xsl:value-of select="$myparam"/> (milligray)</xsl:when>
      		<xsl:when test="$myparam='C14'"><xsl:value-of select="$myparam"/> (millihenry)</xsl:when>
      		<xsl:when test="$myparam='C15'"><xsl:value-of select="$myparam"/> (millijoule)</xsl:when>
      		<xsl:when test="$myparam='C16'"><xsl:value-of select="$myparam"/> (millimetre per second)</xsl:when>
      		<xsl:when test="$myparam='C17'"><xsl:value-of select="$myparam"/> (millimetre squared per second)</xsl:when>
      		<xsl:when test="$myparam='C18'"><xsl:value-of select="$myparam"/> (millimole)</xsl:when>
      		<xsl:when test="$myparam='C19'"><xsl:value-of select="$myparam"/> (mole per kilogram)</xsl:when>
      		<xsl:when test="$myparam='C20'"><xsl:value-of select="$myparam"/> (millinewton)</xsl:when>
      		<xsl:when test="$myparam='C21'"><xsl:value-of select="$myparam"/> (kibibit)</xsl:when>
      		<xsl:when test="$myparam='C22'"><xsl:value-of select="$myparam"/> (millinewton per metre)</xsl:when>
      		<xsl:when test="$myparam='C23'"><xsl:value-of select="$myparam"/> (milliohm metre)</xsl:when>
      		<xsl:when test="$myparam='C24'"><xsl:value-of select="$myparam"/> (millipascal second)</xsl:when>
      		<xsl:when test="$myparam='C25'"><xsl:value-of select="$myparam"/> (milliradian)</xsl:when>
      		<xsl:when test="$myparam='C26'"><xsl:value-of select="$myparam"/> (millisecond)</xsl:when>
      		<xsl:when test="$myparam='C27'"><xsl:value-of select="$myparam"/> (millisiemens)</xsl:when>
      		<xsl:when test="$myparam='C28'"><xsl:value-of select="$myparam"/> (millisievert)</xsl:when>
      		<xsl:when test="$myparam='C29'"><xsl:value-of select="$myparam"/> (millitesla)</xsl:when>
      		<xsl:when test="$myparam='C3'"><xsl:value-of select="$myparam"/> (microvolt per metre)</xsl:when>
      		<xsl:when test="$myparam='C30'"><xsl:value-of select="$myparam"/> (millivolt per metre)</xsl:when>
      		<xsl:when test="$myparam='C31'"><xsl:value-of select="$myparam"/> (milliwatt)</xsl:when>
      		<xsl:when test="$myparam='C32'"><xsl:value-of select="$myparam"/> (milliwatt per square metre)</xsl:when>
      		<xsl:when test="$myparam='C33'"><xsl:value-of select="$myparam"/> (milliweber)</xsl:when>
      		<xsl:when test="$myparam='C34'"><xsl:value-of select="$myparam"/> (mole)</xsl:when>
      		<xsl:when test="$myparam='C35'"><xsl:value-of select="$myparam"/> (mole per cubic decimetre)</xsl:when>
      		<xsl:when test="$myparam='C36'"><xsl:value-of select="$myparam"/> (mole per cubic metre)</xsl:when>
      		<xsl:when test="$myparam='C37'"><xsl:value-of select="$myparam"/> (kilobit)</xsl:when>
      		<xsl:when test="$myparam='C38'"><xsl:value-of select="$myparam"/> (mole per litre)</xsl:when>
      		<xsl:when test="$myparam='C39'"><xsl:value-of select="$myparam"/> (nanoampere)</xsl:when>
      		<xsl:when test="$myparam='C40'"><xsl:value-of select="$myparam"/> (nanocoulomb)</xsl:when>
      		<xsl:when test="$myparam='C41'"><xsl:value-of select="$myparam"/> (nanofarad)</xsl:when>
      		<xsl:when test="$myparam='C42'"><xsl:value-of select="$myparam"/> (nanofarad per metre)</xsl:when>
      		<xsl:when test="$myparam='C43'"><xsl:value-of select="$myparam"/> (nanohenry)</xsl:when>
      		<xsl:when test="$myparam='C44'"><xsl:value-of select="$myparam"/> (nanohenry per metre)</xsl:when>
      		<xsl:when test="$myparam='C45'"><xsl:value-of select="$myparam"/> (nanometre)</xsl:when>
      		<xsl:when test="$myparam='C46'"><xsl:value-of select="$myparam"/> (nanoohm metre)</xsl:when>
      		<xsl:when test="$myparam='C47'"><xsl:value-of select="$myparam"/> (nanosecond)</xsl:when>
      		<xsl:when test="$myparam='C48'"><xsl:value-of select="$myparam"/> (nanotesla)</xsl:when>
      		<xsl:when test="$myparam='C49'"><xsl:value-of select="$myparam"/> (nanowatt)</xsl:when>
      		<xsl:when test="$myparam='C50'"><xsl:value-of select="$myparam"/> (neper)</xsl:when>
      		<xsl:when test="$myparam='C51'"><xsl:value-of select="$myparam"/> (neper per second)</xsl:when>
      		<xsl:when test="$myparam='C52'"><xsl:value-of select="$myparam"/> (picometre)</xsl:when>
      		<xsl:when test="$myparam='C53'"><xsl:value-of select="$myparam"/> (newton metre second)</xsl:when>
      		<xsl:when test="$myparam='C54'"><xsl:value-of select="$myparam"/> (newton metre squared per kilogram squared)</xsl:when>
      		<xsl:when test="$myparam='C55'"><xsl:value-of select="$myparam"/> (newton per square metre)</xsl:when>
      		<xsl:when test="$myparam='C56'"><xsl:value-of select="$myparam"/> (newton per square millimetre)</xsl:when>
      		<xsl:when test="$myparam='C57'"><xsl:value-of select="$myparam"/> (newton second)</xsl:when>
      		<xsl:when test="$myparam='C58'"><xsl:value-of select="$myparam"/> (newton second per metre)</xsl:when>
      		<xsl:when test="$myparam='C59'"><xsl:value-of select="$myparam"/> (octave)</xsl:when>
      		<xsl:when test="$myparam='C60'"><xsl:value-of select="$myparam"/> (ohm centimetre)</xsl:when>
      		<xsl:when test="$myparam='C61'"><xsl:value-of select="$myparam"/> (ohm metre)</xsl:when>
      		<xsl:when test="$myparam='C62'"><xsl:value-of select="$myparam"/> (one)</xsl:when>
      		<xsl:when test="$myparam='C63'"><xsl:value-of select="$myparam"/> (parsec)</xsl:when>
      		<xsl:when test="$myparam='C64'"><xsl:value-of select="$myparam"/> (pascal per kelvin)</xsl:when>
      		<xsl:when test="$myparam='C65'"><xsl:value-of select="$myparam"/> (pascal second)</xsl:when>
      		<xsl:when test="$myparam='C66'"><xsl:value-of select="$myparam"/> (pascal second per cubic metre)</xsl:when>
      		<xsl:when test="$myparam='C67'"><xsl:value-of select="$myparam"/> (pascal second per metre)</xsl:when>
      		<xsl:when test="$myparam='C68'"><xsl:value-of select="$myparam"/> (petajoule)</xsl:when>
      		<xsl:when test="$myparam='C69'"><xsl:value-of select="$myparam"/> (phon)</xsl:when>
      		<xsl:when test="$myparam='C7'"><xsl:value-of select="$myparam"/> (centipoise)</xsl:when>
      		<xsl:when test="$myparam='C70'"><xsl:value-of select="$myparam"/> (picoampere)</xsl:when>
      		<xsl:when test="$myparam='C71'"><xsl:value-of select="$myparam"/> (picocoulomb)</xsl:when>
      		<xsl:when test="$myparam='C72'"><xsl:value-of select="$myparam"/> (picofarad per metre)</xsl:when>
      		<xsl:when test="$myparam='C73'"><xsl:value-of select="$myparam"/> (picohenry)</xsl:when>
      		<xsl:when test="$myparam='C74'"><xsl:value-of select="$myparam"/> (kilobit per second)</xsl:when>
      		<xsl:when test="$myparam='C75'"><xsl:value-of select="$myparam"/> (picowatt)</xsl:when>
      		<xsl:when test="$myparam='C76'"><xsl:value-of select="$myparam"/> (picowatt per square metre)</xsl:when>
      		<xsl:when test="$myparam='C78'"><xsl:value-of select="$myparam"/> (pound-force)</xsl:when>
      		<xsl:when test="$myparam='C79'"><xsl:value-of select="$myparam"/> (kilovolt ampere hour)</xsl:when>
      		<xsl:when test="$myparam='C8'"><xsl:value-of select="$myparam"/> (millicoulomb per kilogram)</xsl:when>
      		<xsl:when test="$myparam='C80'"><xsl:value-of select="$myparam"/> (rad)</xsl:when>
      		<xsl:when test="$myparam='C81'"><xsl:value-of select="$myparam"/> (radian)</xsl:when>
      		<xsl:when test="$myparam='C82'"><xsl:value-of select="$myparam"/> (radian square metre per mole)</xsl:when>
      		<xsl:when test="$myparam='C83'"><xsl:value-of select="$myparam"/> (radian square metre per kilogram)</xsl:when>
      		<xsl:when test="$myparam='C84'"><xsl:value-of select="$myparam"/> (radian per metre)</xsl:when>
      		<xsl:when test="$myparam='C85'"><xsl:value-of select="$myparam"/> (reciprocal angstrom)</xsl:when>
      		<xsl:when test="$myparam='C86'"><xsl:value-of select="$myparam"/> (reciprocal cubic metre)</xsl:when>
      		<xsl:when test="$myparam='C87'"><xsl:value-of select="$myparam"/> (reciprocal cubic metre per second)</xsl:when>
      		<xsl:when test="$myparam='C88'"><xsl:value-of select="$myparam"/> (reciprocal electron volt per cubic metre)</xsl:when>
      		<xsl:when test="$myparam='C89'"><xsl:value-of select="$myparam"/> (reciprocal henry)</xsl:when>
      		<xsl:when test="$myparam='C9'"><xsl:value-of select="$myparam"/> (coil group)</xsl:when>
      		<xsl:when test="$myparam='C90'"><xsl:value-of select="$myparam"/> (reciprocal joule per cubic metre)</xsl:when>
      		<xsl:when test="$myparam='C91'"><xsl:value-of select="$myparam"/> (reciprocal kelvin or kelvin to the power minus one)</xsl:when>
      		<xsl:when test="$myparam='C92'"><xsl:value-of select="$myparam"/> (reciprocal metre)</xsl:when>
      		<xsl:when test="$myparam='C93'"><xsl:value-of select="$myparam"/> (reciprocal square metre)</xsl:when>
      		<xsl:when test="$myparam='C94'"><xsl:value-of select="$myparam"/> (reciprocal minute)</xsl:when>
      		<xsl:when test="$myparam='C95'"><xsl:value-of select="$myparam"/> (reciprocal mole)</xsl:when>
      		<xsl:when test="$myparam='C96'"><xsl:value-of select="$myparam"/> (reciprocal pascal or pascal to the power minus one)</xsl:when>
      		<xsl:when test="$myparam='C97'"><xsl:value-of select="$myparam"/> (reciprocal second)</xsl:when>
      		<xsl:when test="$myparam='C99'"><xsl:value-of select="$myparam"/> (reciprocal second per metre squared)</xsl:when>
      		<xsl:when test="$myparam='CCT'"><xsl:value-of select="$myparam"/> (carrying capacity in metric ton)</xsl:when>
      		<xsl:when test="$myparam='CDL'"><xsl:value-of select="$myparam"/> (candela)</xsl:when>
      		<xsl:when test="$myparam='CEL'"><xsl:value-of select="$myparam"/> (degree Celsius)</xsl:when>
      		<xsl:when test="$myparam='CEN'"><xsl:value-of select="$myparam"/> (hundred)</xsl:when>
      		<xsl:when test="$myparam='CG'"><xsl:value-of select="$myparam"/> (card)</xsl:when>
      		<xsl:when test="$myparam='CGM'"><xsl:value-of select="$myparam"/> (centigram)</xsl:when>
      		<xsl:when test="$myparam='CKG'"><xsl:value-of select="$myparam"/> (coulomb per kilogram)</xsl:when>
      		<xsl:when test="$myparam='CLF'"><xsl:value-of select="$myparam"/> (hundred leave)</xsl:when>
      		<xsl:when test="$myparam='CLT'"><xsl:value-of select="$myparam"/> (centilitre)</xsl:when>
      		<xsl:when test="$myparam='CMK'"><xsl:value-of select="$myparam"/> (square centimetre)</xsl:when>
      		<xsl:when test="$myparam='CMQ'"><xsl:value-of select="$myparam"/> (cubic centimetre)</xsl:when>
      		<xsl:when test="$myparam='CMT'"><xsl:value-of select="$myparam"/> (centimetre)</xsl:when>
      		<xsl:when test="$myparam='CNP'"><xsl:value-of select="$myparam"/> (hundred pack)</xsl:when>
      		<xsl:when test="$myparam='CNT'"><xsl:value-of select="$myparam"/> (cental (UK))</xsl:when>
      		<xsl:when test="$myparam='COU'"><xsl:value-of select="$myparam"/> (coulomb)</xsl:when>
      		<xsl:when test="$myparam='CTG'"><xsl:value-of select="$myparam"/> (content gram)</xsl:when>
      		<xsl:when test="$myparam='CTM'"><xsl:value-of select="$myparam"/> (metric carat)</xsl:when>
      		<xsl:when test="$myparam='CTN'"><xsl:value-of select="$myparam"/> (content ton (metric))</xsl:when>
      		<xsl:when test="$myparam='CUR'"><xsl:value-of select="$myparam"/> (curie)</xsl:when>
      		<xsl:when test="$myparam='CWA'"><xsl:value-of select="$myparam"/> (hundred pound (cwt) / hundred weight (US))</xsl:when>
      		<xsl:when test="$myparam='CWI'"><xsl:value-of select="$myparam"/> (hundred weight (UK))</xsl:when>
      		<xsl:when test="$myparam='D03'"><xsl:value-of select="$myparam"/> (kilowatt hour per hour)</xsl:when>
      		<xsl:when test="$myparam='D04'"><xsl:value-of select="$myparam"/> (lot [unit of weight])</xsl:when>
      		<xsl:when test="$myparam='D1'"><xsl:value-of select="$myparam"/> (reciprocal second per steradian)</xsl:when>
      		<xsl:when test="$myparam='D10'"><xsl:value-of select="$myparam"/> (siemens per metre)</xsl:when>
      		<xsl:when test="$myparam='D11'"><xsl:value-of select="$myparam"/> (mebibit)</xsl:when>
      		<xsl:when test="$myparam='D12'"><xsl:value-of select="$myparam"/> (siemens square metre per mole)</xsl:when>
      		<xsl:when test="$myparam='D13'"><xsl:value-of select="$myparam"/> (sievert)</xsl:when>
      		<xsl:when test="$myparam='D15'"><xsl:value-of select="$myparam"/> (sone)</xsl:when>
      		<xsl:when test="$myparam='D16'"><xsl:value-of select="$myparam"/> (square centimetre per erg)</xsl:when>
      		<xsl:when test="$myparam='D17'"><xsl:value-of select="$myparam"/> (square centimetre per steradian erg)</xsl:when>
      		<xsl:when test="$myparam='D18'"><xsl:value-of select="$myparam"/> (metre kelvin)</xsl:when>
      		<xsl:when test="$myparam='D19'"><xsl:value-of select="$myparam"/> (square metre kelvin per watt)</xsl:when>
      		<xsl:when test="$myparam='D2'"><xsl:value-of select="$myparam"/> (reciprocal second per steradian metre squared)</xsl:when>
      		<xsl:when test="$myparam='D20'"><xsl:value-of select="$myparam"/> (square metre per joule)</xsl:when>
      		<xsl:when test="$myparam='D21'"><xsl:value-of select="$myparam"/> (square metre per kilogram)</xsl:when>
      		<xsl:when test="$myparam='D22'"><xsl:value-of select="$myparam"/> (square metre per mole)</xsl:when>
      		<xsl:when test="$myparam='D23'"><xsl:value-of select="$myparam"/> (pen gram (protein))</xsl:when>
      		<xsl:when test="$myparam='D24'"><xsl:value-of select="$myparam"/> (square metre per steradian)</xsl:when>
      		<xsl:when test="$myparam='D25'"><xsl:value-of select="$myparam"/> (square metre per steradian joule)</xsl:when>
      		<xsl:when test="$myparam='D26'"><xsl:value-of select="$myparam"/> (square metre per volt second)</xsl:when>
      		<xsl:when test="$myparam='D27'"><xsl:value-of select="$myparam"/> (steradian)</xsl:when>
      		<xsl:when test="$myparam='D29'"><xsl:value-of select="$myparam"/> (terahertz)</xsl:when>
      		<xsl:when test="$myparam='D30'"><xsl:value-of select="$myparam"/> (terajoule)</xsl:when>
      		<xsl:when test="$myparam='D31'"><xsl:value-of select="$myparam"/> (terawatt)</xsl:when>
      		<xsl:when test="$myparam='D32'"><xsl:value-of select="$myparam"/> (terawatt hour)</xsl:when>
      		<xsl:when test="$myparam='D33'"><xsl:value-of select="$myparam"/> (tesla)</xsl:when>
      		<xsl:when test="$myparam='D34'"><xsl:value-of select="$myparam"/> (tex)</xsl:when>
      		<xsl:when test="$myparam='D36'"><xsl:value-of select="$myparam"/> (megabit)</xsl:when>
      		<xsl:when test="$myparam='D41'"><xsl:value-of select="$myparam"/> (tonne per cubic metre)</xsl:when>
      		<xsl:when test="$myparam='D42'"><xsl:value-of select="$myparam"/> (tropical year)</xsl:when>
      		<xsl:when test="$myparam='D43'"><xsl:value-of select="$myparam"/> (unified atomic mass unit)</xsl:when>
      		<xsl:when test="$myparam='D44'"><xsl:value-of select="$myparam"/> (var)</xsl:when>
      		<xsl:when test="$myparam='D45'"><xsl:value-of select="$myparam"/> (volt squared per kelvin squared)</xsl:when>
      		<xsl:when test="$myparam='D46'"><xsl:value-of select="$myparam"/> (volt - ampere)</xsl:when>
      		<xsl:when test="$myparam='D47'"><xsl:value-of select="$myparam"/> (volt per centimetre)</xsl:when>
      		<xsl:when test="$myparam='D48'"><xsl:value-of select="$myparam"/> (volt per kelvin)</xsl:when>
      		<xsl:when test="$myparam='D49'"><xsl:value-of select="$myparam"/> (millivolt per kelvin)</xsl:when>
      		<xsl:when test="$myparam='D5'"><xsl:value-of select="$myparam"/> (kilogram per square centimetre)</xsl:when>
      		<xsl:when test="$myparam='D50'"><xsl:value-of select="$myparam"/> (volt per metre)</xsl:when>
      		<xsl:when test="$myparam='D51'"><xsl:value-of select="$myparam"/> (volt per millimetre)</xsl:when>
      		<xsl:when test="$myparam='D52'"><xsl:value-of select="$myparam"/> (watt per kelvin)</xsl:when>
      		<xsl:when test="$myparam='D53'"><xsl:value-of select="$myparam"/> (watt per metre kelvin)</xsl:when>
      		<xsl:when test="$myparam='D54'"><xsl:value-of select="$myparam"/> (watt per square metre)</xsl:when>
      		<xsl:when test="$myparam='D55'"><xsl:value-of select="$myparam"/> (watt per square metre kelvin)</xsl:when>
      		<xsl:when test="$myparam='D56'"><xsl:value-of select="$myparam"/> (watt per square metre kelvin to the fourth power)</xsl:when>
      		<xsl:when test="$myparam='D57'"><xsl:value-of select="$myparam"/> (watt per steradian)</xsl:when>
      		<xsl:when test="$myparam='D58'"><xsl:value-of select="$myparam"/> (watt per steradian square metre)</xsl:when>
      		<xsl:when test="$myparam='D59'"><xsl:value-of select="$myparam"/> (weber per metre)</xsl:when>
      		<xsl:when test="$myparam='D6'"><xsl:value-of select="$myparam"/> (roentgen per second)</xsl:when>
      		<xsl:when test="$myparam='D60'"><xsl:value-of select="$myparam"/> (weber per millimetre)</xsl:when>
      		<xsl:when test="$myparam='D61'"><xsl:value-of select="$myparam"/> (minute [unit of angle])</xsl:when>
      		<xsl:when test="$myparam='D62'"><xsl:value-of select="$myparam"/> (second [unit of angle])</xsl:when>
      		<xsl:when test="$myparam='D63'"><xsl:value-of select="$myparam"/> (book)</xsl:when>
      		<xsl:when test="$myparam='D65'"><xsl:value-of select="$myparam"/> (round)</xsl:when>
      		<xsl:when test="$myparam='D68'"><xsl:value-of select="$myparam"/> (number of words)</xsl:when>
      		<xsl:when test="$myparam='D69'"><xsl:value-of select="$myparam"/> (inch to the fourth power)</xsl:when>
      		<xsl:when test="$myparam='D73'"><xsl:value-of select="$myparam"/> (joule square metre)</xsl:when>
      		<xsl:when test="$myparam='D74'"><xsl:value-of select="$myparam"/> (kilogram per mole)</xsl:when>
      		<xsl:when test="$myparam='D77'"><xsl:value-of select="$myparam"/> (megacoulomb)</xsl:when>
      		<xsl:when test="$myparam='D78'"><xsl:value-of select="$myparam"/> (megajoule per second)</xsl:when>
      		<xsl:when test="$myparam='D80'"><xsl:value-of select="$myparam"/> (microwatt)</xsl:when>
      		<xsl:when test="$myparam='D81'"><xsl:value-of select="$myparam"/> (microtesla)</xsl:when>
      		<xsl:when test="$myparam='D82'"><xsl:value-of select="$myparam"/> (microvolt)</xsl:when>
      		<xsl:when test="$myparam='D83'"><xsl:value-of select="$myparam"/> (millinewton metre)</xsl:when>
      		<xsl:when test="$myparam='D85'"><xsl:value-of select="$myparam"/> (microwatt per square metre)</xsl:when>
      		<xsl:when test="$myparam='D86'"><xsl:value-of select="$myparam"/> (millicoulomb)</xsl:when>
      		<xsl:when test="$myparam='D87'"><xsl:value-of select="$myparam"/> (millimole per kilogram)</xsl:when>
      		<xsl:when test="$myparam='D88'"><xsl:value-of select="$myparam"/> (millicoulomb per cubic metre)</xsl:when>
      		<xsl:when test="$myparam='D89'"><xsl:value-of select="$myparam"/> (millicoulomb per square metre)</xsl:when>
      		<xsl:when test="$myparam='D91'"><xsl:value-of select="$myparam"/> (rem)</xsl:when>
      		<xsl:when test="$myparam='D93'"><xsl:value-of select="$myparam"/> (second per cubic metre)</xsl:when>
      		<xsl:when test="$myparam='D94'"><xsl:value-of select="$myparam"/> (second per cubic metre radian)</xsl:when>
      		<xsl:when test="$myparam='D95'"><xsl:value-of select="$myparam"/> (joule per gram)</xsl:when>
      		<xsl:when test="$myparam='DAA'"><xsl:value-of select="$myparam"/> (decare)</xsl:when>
      		<xsl:when test="$myparam='DAD'"><xsl:value-of select="$myparam"/> (ten day)</xsl:when>
      		<xsl:when test="$myparam='DAY'"><xsl:value-of select="$myparam"/> (day)</xsl:when>
      		<xsl:when test="$myparam='DB'"><xsl:value-of select="$myparam"/> (dry pound)</xsl:when>
      		<xsl:when test="$myparam='DD'"><xsl:value-of select="$myparam"/> (degree [unit of angle])</xsl:when>
      		<xsl:when test="$myparam='DEC'"><xsl:value-of select="$myparam"/> (decade)</xsl:when>
      		<xsl:when test="$myparam='DG'"><xsl:value-of select="$myparam"/> (decigram)</xsl:when>
      		<xsl:when test="$myparam='DJ'"><xsl:value-of select="$myparam"/> (decagram)</xsl:when>
      		<xsl:when test="$myparam='DLT'"><xsl:value-of select="$myparam"/> (decilitre)</xsl:when>
      		<xsl:when test="$myparam='DMA'"><xsl:value-of select="$myparam"/> (cubic decametre)</xsl:when>
      		<xsl:when test="$myparam='DMK'"><xsl:value-of select="$myparam"/> (square decimetre)</xsl:when>
      		<xsl:when test="$myparam='DMO'"><xsl:value-of select="$myparam"/> (standard kilolitre)</xsl:when>
      		<xsl:when test="$myparam='DMQ'"><xsl:value-of select="$myparam"/> (cubic decimetre)</xsl:when>
      		<xsl:when test="$myparam='DMT'"><xsl:value-of select="$myparam"/> (decimetre)</xsl:when>
      		<xsl:when test="$myparam='DN'"><xsl:value-of select="$myparam"/> (decinewton metre)</xsl:when>
      		<xsl:when test="$myparam='DPC'"><xsl:value-of select="$myparam"/> (dozen piece)</xsl:when>
      		<xsl:when test="$myparam='DPR'"><xsl:value-of select="$myparam"/> (dozen pair)</xsl:when>
      		<xsl:when test="$myparam='DPT'"><xsl:value-of select="$myparam"/> (displacement tonnage)</xsl:when>
      		<xsl:when test="$myparam='DRA'"><xsl:value-of select="$myparam"/> (dram (US))</xsl:when>
      		<xsl:when test="$myparam='DRI'"><xsl:value-of select="$myparam"/> (dram (UK))</xsl:when>
      		<xsl:when test="$myparam='DRL'"><xsl:value-of select="$myparam"/> (dozen roll)</xsl:when>
      		<xsl:when test="$myparam='DT'"><xsl:value-of select="$myparam"/> (dry ton)</xsl:when>
      		<xsl:when test="$myparam='DTN'"><xsl:value-of select="$myparam"/> (decitonne)</xsl:when>
      		<xsl:when test="$myparam='DWT'"><xsl:value-of select="$myparam"/> (pennyweight)</xsl:when>
      		<xsl:when test="$myparam='DZN'"><xsl:value-of select="$myparam"/> (dozen)</xsl:when>
      		<xsl:when test="$myparam='DZP'"><xsl:value-of select="$myparam"/> (dozen pack)</xsl:when>
      		<xsl:when test="$myparam='E01'"><xsl:value-of select="$myparam"/> (newton per square centimetre)</xsl:when>
      		<xsl:when test="$myparam='E07'"><xsl:value-of select="$myparam"/> (megawatt hour per hour)</xsl:when>
      		<xsl:when test="$myparam='E08'"><xsl:value-of select="$myparam"/> (megawatt per hertz)</xsl:when>
      		<xsl:when test="$myparam='E09'"><xsl:value-of select="$myparam"/> (milliampere hour)</xsl:when>
      		<xsl:when test="$myparam='E10'"><xsl:value-of select="$myparam"/> (degree day)</xsl:when>
      		<xsl:when test="$myparam='E12'"><xsl:value-of select="$myparam"/> (mille)</xsl:when>
      		<xsl:when test="$myparam='E14'"><xsl:value-of select="$myparam"/> (kilocalorie (international table))</xsl:when>
      		<xsl:when test="$myparam='E15'"><xsl:value-of select="$myparam"/> (kilocalorie (thermochemical) per hour)</xsl:when>
      		<xsl:when test="$myparam='E16'"><xsl:value-of select="$myparam"/> (million Btu(IT) per hour)</xsl:when>
      		<xsl:when test="$myparam='E17'"><xsl:value-of select="$myparam"/> (cubic foot per second)</xsl:when>
      		<xsl:when test="$myparam='E18'"><xsl:value-of select="$myparam"/> (tonne per hour)</xsl:when>
      		<xsl:when test="$myparam='E19'"><xsl:value-of select="$myparam"/> (ping)</xsl:when>
      		<xsl:when test="$myparam='E20'"><xsl:value-of select="$myparam"/> (megabit per second)</xsl:when>
      		<xsl:when test="$myparam='E21'"><xsl:value-of select="$myparam"/> (shares)</xsl:when>
      		<xsl:when test="$myparam='E22'"><xsl:value-of select="$myparam"/> (TEU)</xsl:when>
      		<xsl:when test="$myparam='E23'"><xsl:value-of select="$myparam"/> (tyre)</xsl:when>
      		<xsl:when test="$myparam='E25'"><xsl:value-of select="$myparam"/> (active unit)</xsl:when>
      		<xsl:when test="$myparam='E27'"><xsl:value-of select="$myparam"/> (dose)</xsl:when>
      		<xsl:when test="$myparam='E28'"><xsl:value-of select="$myparam"/> (air dry ton)</xsl:when>
      		<xsl:when test="$myparam='E30'"><xsl:value-of select="$myparam"/> (strand)</xsl:when>
      		<xsl:when test="$myparam='E31'"><xsl:value-of select="$myparam"/> (square metre per litre)</xsl:when>
      		<xsl:when test="$myparam='E32'"><xsl:value-of select="$myparam"/> (litre per hour)</xsl:when>
      		<xsl:when test="$myparam='E33'"><xsl:value-of select="$myparam"/> (foot per thousand)</xsl:when>
      		<xsl:when test="$myparam='E34'"><xsl:value-of select="$myparam"/> (gigabyte)</xsl:when>
      		<xsl:when test="$myparam='E35'"><xsl:value-of select="$myparam"/> (terabyte)</xsl:when>
      		<xsl:when test="$myparam='E36'"><xsl:value-of select="$myparam"/> (petabyte)</xsl:when>
      		<xsl:when test="$myparam='E37'"><xsl:value-of select="$myparam"/> (pixel)</xsl:when>
      		<xsl:when test="$myparam='E38'"><xsl:value-of select="$myparam"/> (megapixel)</xsl:when>
      		<xsl:when test="$myparam='E39'"><xsl:value-of select="$myparam"/> (dots per inch)</xsl:when>
      		<xsl:when test="$myparam='E4'"><xsl:value-of select="$myparam"/> (gross kilogram)</xsl:when>
      		<xsl:when test="$myparam='E40'"><xsl:value-of select="$myparam"/> (part per hundred thousand)</xsl:when>
      		<xsl:when test="$myparam='E41'"><xsl:value-of select="$myparam"/> (kilogram-force per square millimetre)</xsl:when>
      		<xsl:when test="$myparam='E42'"><xsl:value-of select="$myparam"/> (kilogram-force per square centimetre)</xsl:when>
      		<xsl:when test="$myparam='E43'"><xsl:value-of select="$myparam"/> (joule per square centimetre)</xsl:when>
      		<xsl:when test="$myparam='E44'"><xsl:value-of select="$myparam"/> (kilogram-force metre per square centimetre)</xsl:when>
      		<xsl:when test="$myparam='E45'"><xsl:value-of select="$myparam"/> (milliohm)</xsl:when>
      		<xsl:when test="$myparam='E46'"><xsl:value-of select="$myparam"/> (kilowatt hour per cubic metre)</xsl:when>
      		<xsl:when test="$myparam='E47'"><xsl:value-of select="$myparam"/> (kilowatt hour per kelvin)</xsl:when>
      		<xsl:when test="$myparam='E48'"><xsl:value-of select="$myparam"/> (service unit)</xsl:when>
      		<xsl:when test="$myparam='E49'"><xsl:value-of select="$myparam"/> (working day)</xsl:when>
      		<xsl:when test="$myparam='E50'"><xsl:value-of select="$myparam"/> (accounting unit)</xsl:when>
      		<xsl:when test="$myparam='E51'"><xsl:value-of select="$myparam"/> (job)</xsl:when>
      		<xsl:when test="$myparam='E52'"><xsl:value-of select="$myparam"/> (run foot)</xsl:when>
      		<xsl:when test="$myparam='E53'"><xsl:value-of select="$myparam"/> (test)</xsl:when>
      		<xsl:when test="$myparam='E54'"><xsl:value-of select="$myparam"/> (trip)</xsl:when>
      		<xsl:when test="$myparam='E55'"><xsl:value-of select="$myparam"/> (use)</xsl:when>
      		<xsl:when test="$myparam='E56'"><xsl:value-of select="$myparam"/> (well)</xsl:when>
      		<xsl:when test="$myparam='E57'"><xsl:value-of select="$myparam"/> (zone)</xsl:when>
      		<xsl:when test="$myparam='E58'"><xsl:value-of select="$myparam"/> (exabit per second)</xsl:when>
      		<xsl:when test="$myparam='E59'"><xsl:value-of select="$myparam"/> (exbibyte)</xsl:when>
      		<xsl:when test="$myparam='E60'"><xsl:value-of select="$myparam"/> (pebibyte)</xsl:when>
      		<xsl:when test="$myparam='E61'"><xsl:value-of select="$myparam"/> (tebibyte)</xsl:when>
      		<xsl:when test="$myparam='E62'"><xsl:value-of select="$myparam"/> (gibibyte)</xsl:when>
      		<xsl:when test="$myparam='E63'"><xsl:value-of select="$myparam"/> (mebibyte)</xsl:when>
      		<xsl:when test="$myparam='E64'"><xsl:value-of select="$myparam"/> (kibibyte)</xsl:when>
      		<xsl:when test="$myparam='E65'"><xsl:value-of select="$myparam"/> (exbibit per metre)</xsl:when>
      		<xsl:when test="$myparam='E66'"><xsl:value-of select="$myparam"/> (exbibit per square metre)</xsl:when>
      		<xsl:when test="$myparam='E67'"><xsl:value-of select="$myparam"/> (exbibit per cubic metre)</xsl:when>
      		<xsl:when test="$myparam='E68'"><xsl:value-of select="$myparam"/> (gigabyte per second)</xsl:when>
      		<xsl:when test="$myparam='E69'"><xsl:value-of select="$myparam"/> (gibibit per metre)</xsl:when>
      		<xsl:when test="$myparam='E70'"><xsl:value-of select="$myparam"/> (gibibit per square metre)</xsl:when>
      		<xsl:when test="$myparam='E71'"><xsl:value-of select="$myparam"/> (gibibit per cubic metre)</xsl:when>
      		<xsl:when test="$myparam='E72'"><xsl:value-of select="$myparam"/> (kibibit per metre)</xsl:when>
      		<xsl:when test="$myparam='E73'"><xsl:value-of select="$myparam"/> (kibibit per square metre)</xsl:when>
      		<xsl:when test="$myparam='E74'"><xsl:value-of select="$myparam"/> (kibibit per cubic metre)</xsl:when>
      		<xsl:when test="$myparam='E75'"><xsl:value-of select="$myparam"/> (mebibit per metre)</xsl:when>
      		<xsl:when test="$myparam='E76'"><xsl:value-of select="$myparam"/> (mebibit per square metre)</xsl:when>
      		<xsl:when test="$myparam='E77'"><xsl:value-of select="$myparam"/> (mebibit per cubic metre)</xsl:when>
      		<xsl:when test="$myparam='E78'"><xsl:value-of select="$myparam"/> (petabit)</xsl:when>
      		<xsl:when test="$myparam='E79'"><xsl:value-of select="$myparam"/> (petabit per second)</xsl:when>
      		<xsl:when test="$myparam='E80'"><xsl:value-of select="$myparam"/> (pebibit per metre)</xsl:when>
      		<xsl:when test="$myparam='E81'"><xsl:value-of select="$myparam"/> (pebibit per square metre)</xsl:when>
      		<xsl:when test="$myparam='E82'"><xsl:value-of select="$myparam"/> (pebibit per cubic metre)</xsl:when>
      		<xsl:when test="$myparam='E83'"><xsl:value-of select="$myparam"/> (terabit)</xsl:when>
      		<xsl:when test="$myparam='E84'"><xsl:value-of select="$myparam"/> (terabit per second)</xsl:when>
      		<xsl:when test="$myparam='E85'"><xsl:value-of select="$myparam"/> (tebibit per metre)</xsl:when>
      		<xsl:when test="$myparam='E86'"><xsl:value-of select="$myparam"/> (tebibit per cubic metre)</xsl:when>
      		<xsl:when test="$myparam='E87'"><xsl:value-of select="$myparam"/> (tebibit per square metre)</xsl:when>
      		<xsl:when test="$myparam='E88'"><xsl:value-of select="$myparam"/> (bit per metre)</xsl:when>
      		<xsl:when test="$myparam='E89'"><xsl:value-of select="$myparam"/> (bit per square metre)</xsl:when>
      		<xsl:when test="$myparam='E90'"><xsl:value-of select="$myparam"/> (reciprocal centimetre)</xsl:when>
      		<xsl:when test="$myparam='E91'"><xsl:value-of select="$myparam"/> (reciprocal day)</xsl:when>
      		<xsl:when test="$myparam='E92'"><xsl:value-of select="$myparam"/> (cubic decimetre per hour)</xsl:when>
      		<xsl:when test="$myparam='E93'"><xsl:value-of select="$myparam"/> (kilogram per hour)</xsl:when>
      		<xsl:when test="$myparam='E94'"><xsl:value-of select="$myparam"/> (kilomole per second)</xsl:when>
      		<xsl:when test="$myparam='E95'"><xsl:value-of select="$myparam"/> (mole per second)</xsl:when>
      		<xsl:when test="$myparam='E96'"><xsl:value-of select="$myparam"/> (degree per second)</xsl:when>
      		<xsl:when test="$myparam='E97'"><xsl:value-of select="$myparam"/> (millimetre per degree Celcius metre)</xsl:when>
      		<xsl:when test="$myparam='E98'"><xsl:value-of select="$myparam"/> (degree Celsius per kelvin)</xsl:when>
      		<xsl:when test="$myparam='E99'"><xsl:value-of select="$myparam"/> (hectopascal per bar)</xsl:when>
      		<xsl:when test="$myparam='EA'"><xsl:value-of select="$myparam"/> (each)</xsl:when>
      		<xsl:when test="$myparam='EB'"><xsl:value-of select="$myparam"/> (electronic mail box)</xsl:when>
      		<xsl:when test="$myparam='EQ'"><xsl:value-of select="$myparam"/> (equivalent gallon)</xsl:when>
      		<xsl:when test="$myparam='F01'"><xsl:value-of select="$myparam"/> (bit per cubic metre)</xsl:when>
      		<xsl:when test="$myparam='F02'"><xsl:value-of select="$myparam"/> (kelvin per kelvin)</xsl:when>
      		<xsl:when test="$myparam='F03'"><xsl:value-of select="$myparam"/> (kilopascal per bar)</xsl:when>
      		<xsl:when test="$myparam='F04'"><xsl:value-of select="$myparam"/> (millibar per bar)</xsl:when>
      		<xsl:when test="$myparam='F05'"><xsl:value-of select="$myparam"/> (megapascal per bar)</xsl:when>
      		<xsl:when test="$myparam='F06'"><xsl:value-of select="$myparam"/> (poise per bar)</xsl:when>
      		<xsl:when test="$myparam='F07'"><xsl:value-of select="$myparam"/> (pascal per bar)</xsl:when>
      		<xsl:when test="$myparam='F08'"><xsl:value-of select="$myparam"/> (milliampere per inch)</xsl:when>
      		<xsl:when test="$myparam='F10'"><xsl:value-of select="$myparam"/> (kelvin per hour)</xsl:when>
      		<xsl:when test="$myparam='F11'"><xsl:value-of select="$myparam"/> (kelvin per minute)</xsl:when>
      		<xsl:when test="$myparam='F12'"><xsl:value-of select="$myparam"/> (kelvin per second)</xsl:when>
      		<xsl:when test="$myparam='F13'"><xsl:value-of select="$myparam"/> (slug)</xsl:when>
      		<xsl:when test="$myparam='F14'"><xsl:value-of select="$myparam"/> (gram per kelvin)</xsl:when>
      		<xsl:when test="$myparam='F15'"><xsl:value-of select="$myparam"/> (kilogram per kelvin)</xsl:when>
      		<xsl:when test="$myparam='F16'"><xsl:value-of select="$myparam"/> (milligram per kelvin)</xsl:when>
      		<xsl:when test="$myparam='F17'"><xsl:value-of select="$myparam"/> (pound-force per foot)</xsl:when>
      		<xsl:when test="$myparam='F18'"><xsl:value-of select="$myparam"/> (kilogram square centimetre)</xsl:when>
      		<xsl:when test="$myparam='F19'"><xsl:value-of select="$myparam"/> (kilogram square millimetre)</xsl:when>
      		<xsl:when test="$myparam='F20'"><xsl:value-of select="$myparam"/> (pound inch squared)</xsl:when>
      		<xsl:when test="$myparam='F21'"><xsl:value-of select="$myparam"/> (pound-force inch)</xsl:when>
      		<xsl:when test="$myparam='F22'"><xsl:value-of select="$myparam"/> (pound-force foot per ampere)</xsl:when>
      		<xsl:when test="$myparam='F23'"><xsl:value-of select="$myparam"/> (gram per cubic decimetre)</xsl:when>
      		<xsl:when test="$myparam='F24'"><xsl:value-of select="$myparam"/> (kilogram per kilomol)</xsl:when>
      		<xsl:when test="$myparam='F25'"><xsl:value-of select="$myparam"/> (gram per hertz)</xsl:when>
      		<xsl:when test="$myparam='F26'"><xsl:value-of select="$myparam"/> (gram per day)</xsl:when>
      		<xsl:when test="$myparam='F27'"><xsl:value-of select="$myparam"/> (gram per hour)</xsl:when>
      		<xsl:when test="$myparam='F28'"><xsl:value-of select="$myparam"/> (gram per minute)</xsl:when>
      		<xsl:when test="$myparam='F29'"><xsl:value-of select="$myparam"/> (gram per second)</xsl:when>
      		<xsl:when test="$myparam='F30'"><xsl:value-of select="$myparam"/> (kilogram per day)</xsl:when>
      		<xsl:when test="$myparam='F31'"><xsl:value-of select="$myparam"/> (kilogram per minute)</xsl:when>
      		<xsl:when test="$myparam='F32'"><xsl:value-of select="$myparam"/> (milligram per day)</xsl:when>
      		<xsl:when test="$myparam='F33'"><xsl:value-of select="$myparam"/> (milligram per minute)</xsl:when>
      		<xsl:when test="$myparam='F34'"><xsl:value-of select="$myparam"/> (milligram per second)</xsl:when>
      		<xsl:when test="$myparam='F35'"><xsl:value-of select="$myparam"/> (gram per day kelvin)</xsl:when>
      		<xsl:when test="$myparam='F36'"><xsl:value-of select="$myparam"/> (gram per hour kelvin)</xsl:when>
      		<xsl:when test="$myparam='F37'"><xsl:value-of select="$myparam"/> (gram per minute kelvin)</xsl:when>
      		<xsl:when test="$myparam='F38'"><xsl:value-of select="$myparam"/> (gram per second kelvin)</xsl:when>
      		<xsl:when test="$myparam='F39'"><xsl:value-of select="$myparam"/> (kilogram per day kelvin)</xsl:when>
      		<xsl:when test="$myparam='F40'"><xsl:value-of select="$myparam"/> (kilogram per hour kelvin)</xsl:when>
      		<xsl:when test="$myparam='F41'"><xsl:value-of select="$myparam"/> (kilogram per minute kelvin)</xsl:when>
      		<xsl:when test="$myparam='F42'"><xsl:value-of select="$myparam"/> (kilogram per second kelvin)</xsl:when>
      		<xsl:when test="$myparam='F43'"><xsl:value-of select="$myparam"/> (milligram per day kelvin)</xsl:when>
      		<xsl:when test="$myparam='F44'"><xsl:value-of select="$myparam"/> (milligram per hour kelvin)</xsl:when>
      		<xsl:when test="$myparam='F45'"><xsl:value-of select="$myparam"/> (milligram per minute kelvin)</xsl:when>
      		<xsl:when test="$myparam='F46'"><xsl:value-of select="$myparam"/> (milligram per second kelvin)</xsl:when>
      		<xsl:when test="$myparam='F47'"><xsl:value-of select="$myparam"/> (newton per millimetre)</xsl:when>
      		<xsl:when test="$myparam='F48'"><xsl:value-of select="$myparam"/> (pound-force per inch)</xsl:when>
      		<xsl:when test="$myparam='F49'"><xsl:value-of select="$myparam"/> (rod [unit of distance])</xsl:when>
      		<xsl:when test="$myparam='F50'"><xsl:value-of select="$myparam"/> (micrometre per kelvin)</xsl:when>
      		<xsl:when test="$myparam='F51'"><xsl:value-of select="$myparam"/> (centimetre per kelvin)</xsl:when>
      		<xsl:when test="$myparam='F52'"><xsl:value-of select="$myparam"/> (metre per kelvin)</xsl:when>
      		<xsl:when test="$myparam='F53'"><xsl:value-of select="$myparam"/> (millimetre per kelvin)</xsl:when>
      		<xsl:when test="$myparam='F54'"><xsl:value-of select="$myparam"/> (milliohm per metre)</xsl:when>
      		<xsl:when test="$myparam='F55'"><xsl:value-of select="$myparam"/> (ohm per mile (statute mile))</xsl:when>
      		<xsl:when test="$myparam='F56'"><xsl:value-of select="$myparam"/> (ohm per kilometre)</xsl:when>
      		<xsl:when test="$myparam='F57'"><xsl:value-of select="$myparam"/> (milliampere per pound-force per square inch)</xsl:when>
      		<xsl:when test="$myparam='F58'"><xsl:value-of select="$myparam"/> (reciprocal bar)</xsl:when>
      		<xsl:when test="$myparam='F59'"><xsl:value-of select="$myparam"/> (milliampere per bar)</xsl:when>
      		<xsl:when test="$myparam='F60'"><xsl:value-of select="$myparam"/> (degree Celsius per bar)</xsl:when>
      		<xsl:when test="$myparam='F61'"><xsl:value-of select="$myparam"/> (kelvin per bar)</xsl:when>
      		<xsl:when test="$myparam='F62'"><xsl:value-of select="$myparam"/> (gram per day bar)</xsl:when>
      		<xsl:when test="$myparam='F63'"><xsl:value-of select="$myparam"/> (gram per hour bar)</xsl:when>
      		<xsl:when test="$myparam='F64'"><xsl:value-of select="$myparam"/> (gram per minute bar)</xsl:when>
      		<xsl:when test="$myparam='F65'"><xsl:value-of select="$myparam"/> (gram per second bar)</xsl:when>
      		<xsl:when test="$myparam='F66'"><xsl:value-of select="$myparam"/> (kilogram per day bar)</xsl:when>
      		<xsl:when test="$myparam='F67'"><xsl:value-of select="$myparam"/> (kilogram per hour bar)</xsl:when>
      		<xsl:when test="$myparam='F68'"><xsl:value-of select="$myparam"/> (kilogram per minute bar)</xsl:when>
      		<xsl:when test="$myparam='F69'"><xsl:value-of select="$myparam"/> (kilogram per second bar)</xsl:when>
      		<xsl:when test="$myparam='F70'"><xsl:value-of select="$myparam"/> (milligram per day bar)</xsl:when>
      		<xsl:when test="$myparam='F71'"><xsl:value-of select="$myparam"/> (milligram per hour bar)</xsl:when>
      		<xsl:when test="$myparam='F72'"><xsl:value-of select="$myparam"/> (milligram per minute bar)</xsl:when>
      		<xsl:when test="$myparam='F73'"><xsl:value-of select="$myparam"/> (milligram per second bar)</xsl:when>
      		<xsl:when test="$myparam='F74'"><xsl:value-of select="$myparam"/> (gram per bar)</xsl:when>
      		<xsl:when test="$myparam='F75'"><xsl:value-of select="$myparam"/> (milligram per bar)</xsl:when>
      		<xsl:when test="$myparam='F76'"><xsl:value-of select="$myparam"/> (milliampere per millimetre)</xsl:when>
      		<xsl:when test="$myparam='F77'"><xsl:value-of select="$myparam"/> (pascal second per kelvin)</xsl:when>
      		<xsl:when test="$myparam='F78'"><xsl:value-of select="$myparam"/> (inch of water)</xsl:when>
      		<xsl:when test="$myparam='F79'"><xsl:value-of select="$myparam"/> (inch of mercury)</xsl:when>
      		<xsl:when test="$myparam='F80'"><xsl:value-of select="$myparam"/> (water horse power)</xsl:when>
      		<xsl:when test="$myparam='F81'"><xsl:value-of select="$myparam"/> (bar per kelvin)</xsl:when>
      		<xsl:when test="$myparam='F82'"><xsl:value-of select="$myparam"/> (hectopascal per kelvin)</xsl:when>
      		<xsl:when test="$myparam='F83'"><xsl:value-of select="$myparam"/> (kilopascal per kelvin)</xsl:when>
      		<xsl:when test="$myparam='F84'"><xsl:value-of select="$myparam"/> (millibar per kelvin)</xsl:when>
      		<xsl:when test="$myparam='F85'"><xsl:value-of select="$myparam"/> (megapascal per kelvin)</xsl:when>
      		<xsl:when test="$myparam='F86'"><xsl:value-of select="$myparam"/> (poise per kelvin)</xsl:when>
      		<xsl:when test="$myparam='F87'"><xsl:value-of select="$myparam"/> (volt per litre minute)</xsl:when>
      		<xsl:when test="$myparam='F88'"><xsl:value-of select="$myparam"/> (newton centimetre)</xsl:when>
      		<xsl:when test="$myparam='F89'"><xsl:value-of select="$myparam"/> (newton metre per degree)</xsl:when>
      		<xsl:when test="$myparam='F90'"><xsl:value-of select="$myparam"/> (newton metre per ampere)</xsl:when>
      		<xsl:when test="$myparam='F91'"><xsl:value-of select="$myparam"/> (bar litre per second)</xsl:when>
      		<xsl:when test="$myparam='F92'"><xsl:value-of select="$myparam"/> (bar cubic metre per second)</xsl:when>
      		<xsl:when test="$myparam='F93'"><xsl:value-of select="$myparam"/> (hectopascal litre per second)</xsl:when>
      		<xsl:when test="$myparam='F94'"><xsl:value-of select="$myparam"/> (hectopascal cubic metre per second)</xsl:when>
      		<xsl:when test="$myparam='F95'"><xsl:value-of select="$myparam"/> (millibar litre per second)</xsl:when>
      		<xsl:when test="$myparam='F96'"><xsl:value-of select="$myparam"/> (millibar cubic metre per second)</xsl:when>
      		<xsl:when test="$myparam='F97'"><xsl:value-of select="$myparam"/> (megapascal litre per second)</xsl:when>
      		<xsl:when test="$myparam='F98'"><xsl:value-of select="$myparam"/> (megapascal cubic metre per second)</xsl:when>
      		<xsl:when test="$myparam='F99'"><xsl:value-of select="$myparam"/> (pascal litre per second)</xsl:when>
      		<xsl:when test="$myparam='FAH'"><xsl:value-of select="$myparam"/> (degree Fahrenheit)</xsl:when>
      		<xsl:when test="$myparam='FAR'"><xsl:value-of select="$myparam"/> (farad)</xsl:when>
      		<xsl:when test="$myparam='FBM'"><xsl:value-of select="$myparam"/> (fibre metre)</xsl:when>
      		<xsl:when test="$myparam='FC'"><xsl:value-of select="$myparam"/> (thousand cubic foot)</xsl:when>
      		<xsl:when test="$myparam='FF'"><xsl:value-of select="$myparam"/> (hundred cubic metre)</xsl:when>
      		<xsl:when test="$myparam='FH'"><xsl:value-of select="$myparam"/> (micromole)</xsl:when>
      		<xsl:when test="$myparam='FIT'"><xsl:value-of select="$myparam"/> (failures in time)</xsl:when>
      		<xsl:when test="$myparam='FL'"><xsl:value-of select="$myparam"/> (flake ton)</xsl:when>
      		<xsl:when test="$myparam='FOT'"><xsl:value-of select="$myparam"/> (foot)</xsl:when>
      		<xsl:when test="$myparam='FP'"><xsl:value-of select="$myparam"/> (pound per square foot)</xsl:when>
      		<xsl:when test="$myparam='FR'"><xsl:value-of select="$myparam"/> (foot per minute)</xsl:when>
      		<xsl:when test="$myparam='FS'"><xsl:value-of select="$myparam"/> (foot per second)</xsl:when>
      		<xsl:when test="$myparam='FTK'"><xsl:value-of select="$myparam"/> (square foot)</xsl:when>
      		<xsl:when test="$myparam='FTQ'"><xsl:value-of select="$myparam"/> (cubic foot)</xsl:when>
      		<xsl:when test="$myparam='G01'"><xsl:value-of select="$myparam"/> (pascal cubic metre per second)</xsl:when>
      		<xsl:when test="$myparam='G04'"><xsl:value-of select="$myparam"/> (centimetre per bar)</xsl:when>
      		<xsl:when test="$myparam='G05'"><xsl:value-of select="$myparam"/> (metre per bar)</xsl:when>
      		<xsl:when test="$myparam='G06'"><xsl:value-of select="$myparam"/> (millimetre per bar)</xsl:when>
      		<xsl:when test="$myparam='G08'"><xsl:value-of select="$myparam"/> (square inch per second)</xsl:when>
      		<xsl:when test="$myparam='G09'"><xsl:value-of select="$myparam"/> (square metre per second kelvin)</xsl:when>
      		<xsl:when test="$myparam='G10'"><xsl:value-of select="$myparam"/> (stokes per kelvin)</xsl:when>
      		<xsl:when test="$myparam='G11'"><xsl:value-of select="$myparam"/> (gram per cubic centimetre bar)</xsl:when>
      		<xsl:when test="$myparam='G12'"><xsl:value-of select="$myparam"/> (gram per cubic decimetre bar)</xsl:when>
      		<xsl:when test="$myparam='G13'"><xsl:value-of select="$myparam"/> (gram per litre bar)</xsl:when>
      		<xsl:when test="$myparam='G14'"><xsl:value-of select="$myparam"/> (gram per cubic metre bar)</xsl:when>
      		<xsl:when test="$myparam='G15'"><xsl:value-of select="$myparam"/> (gram per millilitre bar)</xsl:when>
      		<xsl:when test="$myparam='G16'"><xsl:value-of select="$myparam"/> (kilogram per cubic centimetre bar)</xsl:when>
      		<xsl:when test="$myparam='G17'"><xsl:value-of select="$myparam"/> (kilogram per litre bar)</xsl:when>
      		<xsl:when test="$myparam='G18'"><xsl:value-of select="$myparam"/> (kilogram per cubic metre bar)</xsl:when>
      		<xsl:when test="$myparam='G19'"><xsl:value-of select="$myparam"/> (newton metre per kilogram)</xsl:when>
      		<xsl:when test="$myparam='G2'"><xsl:value-of select="$myparam"/> (US gallon per minute)</xsl:when>
      		<xsl:when test="$myparam='G20'"><xsl:value-of select="$myparam"/> (pound-force foot per pound)</xsl:when>
      		<xsl:when test="$myparam='G21'"><xsl:value-of select="$myparam"/> (cup [unit of volume])</xsl:when>
      		<xsl:when test="$myparam='G23'"><xsl:value-of select="$myparam"/> (peck)</xsl:when>
      		<xsl:when test="$myparam='G24'"><xsl:value-of select="$myparam"/> (tablespoon (US))</xsl:when>
      		<xsl:when test="$myparam='G25'"><xsl:value-of select="$myparam"/> (teaspoon (US))</xsl:when>
      		<xsl:when test="$myparam='G26'"><xsl:value-of select="$myparam"/> (stere)</xsl:when>
      		<xsl:when test="$myparam='G27'"><xsl:value-of select="$myparam"/> (cubic centimetre per kelvin)</xsl:when>
      		<xsl:when test="$myparam='G28'"><xsl:value-of select="$myparam"/> (litre per kelvin)</xsl:when>
      		<xsl:when test="$myparam='G29'"><xsl:value-of select="$myparam"/> (cubic metre per kelvin)</xsl:when>
      		<xsl:when test="$myparam='G3'"><xsl:value-of select="$myparam"/> (Imperial gallon per minute)</xsl:when>
      		<xsl:when test="$myparam='G30'"><xsl:value-of select="$myparam"/> (millilitre per kelvin)</xsl:when>
      		<xsl:when test="$myparam='G31'"><xsl:value-of select="$myparam"/> (kilogram per cubic centimetre)</xsl:when>
      		<xsl:when test="$myparam='G32'"><xsl:value-of select="$myparam"/> (ounce (avoirdupois) per cubic yard)</xsl:when>
      		<xsl:when test="$myparam='G33'"><xsl:value-of select="$myparam"/> (gram per cubic centimetre kelvin)</xsl:when>
      		<xsl:when test="$myparam='G34'"><xsl:value-of select="$myparam"/> (gram per cubic decimetre kelvin)</xsl:when>
      		<xsl:when test="$myparam='G35'"><xsl:value-of select="$myparam"/> (gram per litre kelvin)</xsl:when>
      		<xsl:when test="$myparam='G36'"><xsl:value-of select="$myparam"/> (gram per cubic metre kelvin)</xsl:when>
      		<xsl:when test="$myparam='G37'"><xsl:value-of select="$myparam"/> (gram per millilitre kelvin)</xsl:when>
      		<xsl:when test="$myparam='G38'"><xsl:value-of select="$myparam"/> (kilogram per cubic centimetre kelvin)</xsl:when>
      		<xsl:when test="$myparam='G39'"><xsl:value-of select="$myparam"/> (kilogram per litre kelvin)</xsl:when>
      		<xsl:when test="$myparam='G40'"><xsl:value-of select="$myparam"/> (kilogram per cubic metre kelvin)</xsl:when>
      		<xsl:when test="$myparam='G41'"><xsl:value-of select="$myparam"/> (square metre per second bar)</xsl:when>
      		<xsl:when test="$myparam='G42'"><xsl:value-of select="$myparam"/> (microsiemens per centimetre)</xsl:when>
      		<xsl:when test="$myparam='G43'"><xsl:value-of select="$myparam"/> (microsiemens per metre)</xsl:when>
      		<xsl:when test="$myparam='G44'"><xsl:value-of select="$myparam"/> (nanosiemens per centimetre)</xsl:when>
      		<xsl:when test="$myparam='G45'"><xsl:value-of select="$myparam"/> (nanosiemens per metre)</xsl:when>
      		<xsl:when test="$myparam='G46'"><xsl:value-of select="$myparam"/> (stokes per bar)</xsl:when>
      		<xsl:when test="$myparam='G47'"><xsl:value-of select="$myparam"/> (cubic centimetre per day)</xsl:when>
      		<xsl:when test="$myparam='G48'"><xsl:value-of select="$myparam"/> (cubic centimetre per hour)</xsl:when>
      		<xsl:when test="$myparam='G49'"><xsl:value-of select="$myparam"/> (cubic centimetre per minute)</xsl:when>
      		<xsl:when test="$myparam='G50'"><xsl:value-of select="$myparam"/> (gallon (US) per hour)</xsl:when>
      		<xsl:when test="$myparam='G51'"><xsl:value-of select="$myparam"/> (litre per second)</xsl:when>
      		<xsl:when test="$myparam='G52'"><xsl:value-of select="$myparam"/> (cubic metre per day)</xsl:when>
      		<xsl:when test="$myparam='G53'"><xsl:value-of select="$myparam"/> (cubic metre per minute)</xsl:when>
      		<xsl:when test="$myparam='G54'"><xsl:value-of select="$myparam"/> (millilitre per day)</xsl:when>
      		<xsl:when test="$myparam='G55'"><xsl:value-of select="$myparam"/> (millilitre per hour)</xsl:when>
      		<xsl:when test="$myparam='G56'"><xsl:value-of select="$myparam"/> (cubic inch per hour)</xsl:when>
      		<xsl:when test="$myparam='G57'"><xsl:value-of select="$myparam"/> (cubic inch per minute)</xsl:when>
      		<xsl:when test="$myparam='G58'"><xsl:value-of select="$myparam"/> (cubic inch per second)</xsl:when>
      		<xsl:when test="$myparam='G59'"><xsl:value-of select="$myparam"/> (milliampere per litre minute)</xsl:when>
      		<xsl:when test="$myparam='G60'"><xsl:value-of select="$myparam"/> (volt per bar)</xsl:when>
      		<xsl:when test="$myparam='G61'"><xsl:value-of select="$myparam"/> (cubic centimetre per day kelvin)</xsl:when>
      		<xsl:when test="$myparam='G62'"><xsl:value-of select="$myparam"/> (cubic centimetre per hour kelvin)</xsl:when>
      		<xsl:when test="$myparam='G63'"><xsl:value-of select="$myparam"/> (cubic centimetre per minute kelvin)</xsl:when>
      		<xsl:when test="$myparam='G64'"><xsl:value-of select="$myparam"/> (cubic centimetre per second kelvin)</xsl:when>
      		<xsl:when test="$myparam='G65'"><xsl:value-of select="$myparam"/> (litre per day kelvin)</xsl:when>
      		<xsl:when test="$myparam='G66'"><xsl:value-of select="$myparam"/> (litre per hour kelvin)</xsl:when>
      		<xsl:when test="$myparam='G67'"><xsl:value-of select="$myparam"/> (litre per minute kelvin)</xsl:when>
      		<xsl:when test="$myparam='G68'"><xsl:value-of select="$myparam"/> (litre per second kelvin)</xsl:when>
      		<xsl:when test="$myparam='G69'"><xsl:value-of select="$myparam"/> (cubic metre per day kelvin)</xsl:when>
      		<xsl:when test="$myparam='G70'"><xsl:value-of select="$myparam"/> (cubic metre per hour kelvin)</xsl:when>
      		<xsl:when test="$myparam='G71'"><xsl:value-of select="$myparam"/> (cubic metre per minute kelvin)</xsl:when>
      		<xsl:when test="$myparam='G72'"><xsl:value-of select="$myparam"/> (cubic metre per second kelvin)</xsl:when>
      		<xsl:when test="$myparam='G73'"><xsl:value-of select="$myparam"/> (millilitre per day kelvin)</xsl:when>
      		<xsl:when test="$myparam='G74'"><xsl:value-of select="$myparam"/> (millilitre per hour kelvin)</xsl:when>
      		<xsl:when test="$myparam='G75'"><xsl:value-of select="$myparam"/> (millilitre per minute kelvin)</xsl:when>
      		<xsl:when test="$myparam='G76'"><xsl:value-of select="$myparam"/> (millilitre per second kelvin)</xsl:when>
      		<xsl:when test="$myparam='G77'"><xsl:value-of select="$myparam"/> (millimetre to the fourth power)</xsl:when>
      		<xsl:when test="$myparam='G78'"><xsl:value-of select="$myparam"/> (cubic centimetre per day bar)</xsl:when>
      		<xsl:when test="$myparam='G79'"><xsl:value-of select="$myparam"/> (cubic centimetre per hour bar)</xsl:when>
      		<xsl:when test="$myparam='G80'"><xsl:value-of select="$myparam"/> (cubic centimetre per minute bar)</xsl:when>
      		<xsl:when test="$myparam='G81'"><xsl:value-of select="$myparam"/> (cubic centimetre per second bar)</xsl:when>
      		<xsl:when test="$myparam='G82'"><xsl:value-of select="$myparam"/> (litre per day bar)</xsl:when>
      		<xsl:when test="$myparam='G83'"><xsl:value-of select="$myparam"/> (litre per hour bar)</xsl:when>
      		<xsl:when test="$myparam='G84'"><xsl:value-of select="$myparam"/> (litre per minute bar)</xsl:when>
      		<xsl:when test="$myparam='G85'"><xsl:value-of select="$myparam"/> (litre per second bar)</xsl:when>
      		<xsl:when test="$myparam='G86'"><xsl:value-of select="$myparam"/> (cubic metre per day bar)</xsl:when>
      		<xsl:when test="$myparam='G87'"><xsl:value-of select="$myparam"/> (cubic metre per hour bar)</xsl:when>
      		<xsl:when test="$myparam='G88'"><xsl:value-of select="$myparam"/> (cubic metre per minute bar)</xsl:when>
      		<xsl:when test="$myparam='G89'"><xsl:value-of select="$myparam"/> (cubic metre per second bar)</xsl:when>
      		<xsl:when test="$myparam='G90'"><xsl:value-of select="$myparam"/> (millilitre per day bar)</xsl:when>
      		<xsl:when test="$myparam='G91'"><xsl:value-of select="$myparam"/> (millilitre per hour bar)</xsl:when>
      		<xsl:when test="$myparam='G92'"><xsl:value-of select="$myparam"/> (millilitre per minute bar)</xsl:when>
      		<xsl:when test="$myparam='G93'"><xsl:value-of select="$myparam"/> (millilitre per second bar)</xsl:when>
      		<xsl:when test="$myparam='G94'"><xsl:value-of select="$myparam"/> (cubic centimetre per bar)</xsl:when>
      		<xsl:when test="$myparam='G95'"><xsl:value-of select="$myparam"/> (litre per bar)</xsl:when>
      		<xsl:when test="$myparam='G96'"><xsl:value-of select="$myparam"/> (cubic metre per bar)</xsl:when>
      		<xsl:when test="$myparam='G97'"><xsl:value-of select="$myparam"/> (millilitre per bar)</xsl:when>
      		<xsl:when test="$myparam='G98'"><xsl:value-of select="$myparam"/> (microhenry per kiloohm)</xsl:when>
      		<xsl:when test="$myparam='G99'"><xsl:value-of select="$myparam"/> (microhenry per ohm)</xsl:when>
      		<xsl:when test="$myparam='GB'"><xsl:value-of select="$myparam"/> (gallon (US) per day)</xsl:when>
      		<xsl:when test="$myparam='GBQ'"><xsl:value-of select="$myparam"/> (gigabecquerel)</xsl:when>
      		<xsl:when test="$myparam='GDW'"><xsl:value-of select="$myparam"/> (gram, dry weight)</xsl:when>
      		<xsl:when test="$myparam='GE'"><xsl:value-of select="$myparam"/> (pound per gallon (US))</xsl:when>
      		<xsl:when test="$myparam='GF'"><xsl:value-of select="$myparam"/> (gram per metre (gram per 100 centimetres))</xsl:when>
      		<xsl:when test="$myparam='GFI'"><xsl:value-of select="$myparam"/> (gram of fissile isotope)</xsl:when>
      		<xsl:when test="$myparam='GGR'"><xsl:value-of select="$myparam"/> (great gross)</xsl:when>
      		<xsl:when test="$myparam='GIA'"><xsl:value-of select="$myparam"/> (gill (US))</xsl:when>
      		<xsl:when test="$myparam='GIC'"><xsl:value-of select="$myparam"/> (gram, including container)</xsl:when>
      		<xsl:when test="$myparam='GII'"><xsl:value-of select="$myparam"/> (gill (UK))</xsl:when>
      		<xsl:when test="$myparam='GIP'"><xsl:value-of select="$myparam"/> (gram, including inner packaging)</xsl:when>
      		<xsl:when test="$myparam='GJ'"><xsl:value-of select="$myparam"/> (gram per millilitre)</xsl:when>
      		<xsl:when test="$myparam='GL'"><xsl:value-of select="$myparam"/> (gram per litre)</xsl:when>
      		<xsl:when test="$myparam='GLD'"><xsl:value-of select="$myparam"/> (dry gallon (US))</xsl:when>
      		<xsl:when test="$myparam='GLI'"><xsl:value-of select="$myparam"/> (gallon (UK))</xsl:when>
      		<xsl:when test="$myparam='GLL'"><xsl:value-of select="$myparam"/> (gallon (US))</xsl:when>
      		<xsl:when test="$myparam='GM'"><xsl:value-of select="$myparam"/> (gram per square metre)</xsl:when>
      		<xsl:when test="$myparam='GO'"><xsl:value-of select="$myparam"/> (milligram per square metre)</xsl:when>
      		<xsl:when test="$myparam='GP'"><xsl:value-of select="$myparam"/> (milligram per cubic metre)</xsl:when>
      		<xsl:when test="$myparam='GQ'"><xsl:value-of select="$myparam"/> (microgram per cubic metre)</xsl:when>
      		<xsl:when test="$myparam='GRM'"><xsl:value-of select="$myparam"/> (gram)</xsl:when>
      		<xsl:when test="$myparam='GRN'"><xsl:value-of select="$myparam"/> (grain)</xsl:when>
      		<xsl:when test="$myparam='GRO'"><xsl:value-of select="$myparam"/> (gross)</xsl:when>
      		<xsl:when test="$myparam='GV'"><xsl:value-of select="$myparam"/> (gigajoule)</xsl:when>
      		<xsl:when test="$myparam='GWH'"><xsl:value-of select="$myparam"/> (gigawatt hour)</xsl:when>
      		<xsl:when test="$myparam='H03'"><xsl:value-of select="$myparam"/> (henry per kiloohm)</xsl:when>
      		<xsl:when test="$myparam='H04'"><xsl:value-of select="$myparam"/> (henry per ohm)</xsl:when>
      		<xsl:when test="$myparam='H05'"><xsl:value-of select="$myparam"/> (millihenry per kiloohm)</xsl:when>
      		<xsl:when test="$myparam='H06'"><xsl:value-of select="$myparam"/> (millihenry per ohm)</xsl:when>
      		<xsl:when test="$myparam='H07'"><xsl:value-of select="$myparam"/> (pascal second per bar)</xsl:when>
      		<xsl:when test="$myparam='H08'"><xsl:value-of select="$myparam"/> (microbecquerel)</xsl:when>
      		<xsl:when test="$myparam='H09'"><xsl:value-of select="$myparam"/> (reciprocal year)</xsl:when>
      		<xsl:when test="$myparam='H10'"><xsl:value-of select="$myparam"/> (reciprocal hour)</xsl:when>
      		<xsl:when test="$myparam='H11'"><xsl:value-of select="$myparam"/> (reciprocal month)</xsl:when>
      		<xsl:when test="$myparam='H12'"><xsl:value-of select="$myparam"/> (degree Celsius per hour)</xsl:when>
      		<xsl:when test="$myparam='H13'"><xsl:value-of select="$myparam"/> (degree Celsius per minute)</xsl:when>
      		<xsl:when test="$myparam='H14'"><xsl:value-of select="$myparam"/> (degree Celsius per second)</xsl:when>
      		<xsl:when test="$myparam='H15'"><xsl:value-of select="$myparam"/> (square centimetre per gram)</xsl:when>
      		<xsl:when test="$myparam='H16'"><xsl:value-of select="$myparam"/> (square decametre)</xsl:when>
      		<xsl:when test="$myparam='H18'"><xsl:value-of select="$myparam"/> (square hectometre)</xsl:when>
      		<xsl:when test="$myparam='H19'"><xsl:value-of select="$myparam"/> (cubic hectometre)</xsl:when>
      		<xsl:when test="$myparam='H20'"><xsl:value-of select="$myparam"/> (cubic kilometre)</xsl:when>
      		<xsl:when test="$myparam='H21'"><xsl:value-of select="$myparam"/> (blank)</xsl:when>
      		<xsl:when test="$myparam='H22'"><xsl:value-of select="$myparam"/> (volt square inch per pound-force)</xsl:when>
      		<xsl:when test="$myparam='H23'"><xsl:value-of select="$myparam"/> (volt per inch)</xsl:when>
      		<xsl:when test="$myparam='H24'"><xsl:value-of select="$myparam"/> (volt per microsecond)</xsl:when>
      		<xsl:when test="$myparam='H25'"><xsl:value-of select="$myparam"/> (percent per kelvin)</xsl:when>
      		<xsl:when test="$myparam='H26'"><xsl:value-of select="$myparam"/> (ohm per metre)</xsl:when>
      		<xsl:when test="$myparam='H27'"><xsl:value-of select="$myparam"/> (degree per metre)</xsl:when>
      		<xsl:when test="$myparam='H28'"><xsl:value-of select="$myparam"/> (microfarad per kilometre)</xsl:when>
      		<xsl:when test="$myparam='H29'"><xsl:value-of select="$myparam"/> (microgram per litre)</xsl:when>
      		<xsl:when test="$myparam='H30'"><xsl:value-of select="$myparam"/> (square micrometre (square micron))</xsl:when>
      		<xsl:when test="$myparam='H31'"><xsl:value-of select="$myparam"/> (ampere per kilogram)</xsl:when>
      		<xsl:when test="$myparam='H32'"><xsl:value-of select="$myparam"/> (ampere squared second)</xsl:when>
      		<xsl:when test="$myparam='H33'"><xsl:value-of select="$myparam"/> (farad per kilometre)</xsl:when>
      		<xsl:when test="$myparam='H34'"><xsl:value-of select="$myparam"/> (hertz metre)</xsl:when>
      		<xsl:when test="$myparam='H35'"><xsl:value-of select="$myparam"/> (kelvin metre per watt)</xsl:when>
      		<xsl:when test="$myparam='H36'"><xsl:value-of select="$myparam"/> (megaohm per kilometre)</xsl:when>
      		<xsl:when test="$myparam='H37'"><xsl:value-of select="$myparam"/> (megaohm per metre)</xsl:when>
      		<xsl:when test="$myparam='H38'"><xsl:value-of select="$myparam"/> (megaampere)</xsl:when>
      		<xsl:when test="$myparam='H39'"><xsl:value-of select="$myparam"/> (megahertz kilometre)</xsl:when>
      		<xsl:when test="$myparam='H40'"><xsl:value-of select="$myparam"/> (newton per ampere)</xsl:when>
      		<xsl:when test="$myparam='H41'"><xsl:value-of select="$myparam"/> (newton metre watt to the power minus 0,5)</xsl:when>
      		<xsl:when test="$myparam='H42'"><xsl:value-of select="$myparam"/> (pascal per metre)</xsl:when>
      		<xsl:when test="$myparam='H43'"><xsl:value-of select="$myparam"/> (siemens per centimetre)</xsl:when>
      		<xsl:when test="$myparam='H44'"><xsl:value-of select="$myparam"/> (teraohm)</xsl:when>
      		<xsl:when test="$myparam='H45'"><xsl:value-of select="$myparam"/> (volt second per metre)</xsl:when>
      		<xsl:when test="$myparam='H46'"><xsl:value-of select="$myparam"/> (volt per second)</xsl:when>
      		<xsl:when test="$myparam='H47'"><xsl:value-of select="$myparam"/> (watt per cubic metre)</xsl:when>
      		<xsl:when test="$myparam='H48'"><xsl:value-of select="$myparam"/> (attofarad)</xsl:when>
      		<xsl:when test="$myparam='H49'"><xsl:value-of select="$myparam"/> (centimetre per hour)</xsl:when>
      		<xsl:when test="$myparam='H50'"><xsl:value-of select="$myparam"/> (reciprocal cubic centimetre)</xsl:when>
      		<xsl:when test="$myparam='H51'"><xsl:value-of select="$myparam"/> (decibel per kilometre)</xsl:when>
      		<xsl:when test="$myparam='H52'"><xsl:value-of select="$myparam"/> (decibel per metre)</xsl:when>
      		<xsl:when test="$myparam='H53'"><xsl:value-of select="$myparam"/> (kilogram per bar)</xsl:when>
      		<xsl:when test="$myparam='H54'"><xsl:value-of select="$myparam"/> (kilogram per cubic decimetre kelvin)</xsl:when>
      		<xsl:when test="$myparam='H55'"><xsl:value-of select="$myparam"/> (kilogram per cubic decimetre bar)</xsl:when>
      		<xsl:when test="$myparam='H56'"><xsl:value-of select="$myparam"/> (kilogram per square metre second)</xsl:when>
      		<xsl:when test="$myparam='H57'"><xsl:value-of select="$myparam"/> (inch per two pi radiant)</xsl:when>
      		<xsl:when test="$myparam='H58'"><xsl:value-of select="$myparam"/> (metre per volt second)</xsl:when>
      		<xsl:when test="$myparam='H59'"><xsl:value-of select="$myparam"/> (square metre per newton)</xsl:when>
      		<xsl:when test="$myparam='H60'"><xsl:value-of select="$myparam"/> (cubic metre per cubic metre)</xsl:when>
      		<xsl:when test="$myparam='H61'"><xsl:value-of select="$myparam"/> (millisiemens per centimetre)</xsl:when>
      		<xsl:when test="$myparam='H62'"><xsl:value-of select="$myparam"/> (millivolt per minute)</xsl:when>
      		<xsl:when test="$myparam='H63'"><xsl:value-of select="$myparam"/> (milligram per square centimetre)</xsl:when>
      		<xsl:when test="$myparam='H64'"><xsl:value-of select="$myparam"/> (milligram per gram)</xsl:when>
      		<xsl:when test="$myparam='H65'"><xsl:value-of select="$myparam"/> (millilitre per cubic metre)</xsl:when>
      		<xsl:when test="$myparam='H66'"><xsl:value-of select="$myparam"/> (millimetre per year)</xsl:when>
      		<xsl:when test="$myparam='H67'"><xsl:value-of select="$myparam"/> (millimetre per hour)</xsl:when>
      		<xsl:when test="$myparam='H68'"><xsl:value-of select="$myparam"/> (millimole per gram)</xsl:when>
      		<xsl:when test="$myparam='H69'"><xsl:value-of select="$myparam"/> (picopascal per kilometre)</xsl:when>
      		<xsl:when test="$myparam='H70'"><xsl:value-of select="$myparam"/> (picosecond)</xsl:when>
      		<xsl:when test="$myparam='H71'"><xsl:value-of select="$myparam"/> (percent per month)</xsl:when>
      		<xsl:when test="$myparam='H72'"><xsl:value-of select="$myparam"/> (percent per hectobar)</xsl:when>
      		<xsl:when test="$myparam='H73'"><xsl:value-of select="$myparam"/> (percent per decakelvin)</xsl:when>
      		<xsl:when test="$myparam='H74'"><xsl:value-of select="$myparam"/> (watt per metre)</xsl:when>
      		<xsl:when test="$myparam='H75'"><xsl:value-of select="$myparam"/> (decapascal)</xsl:when>
      		<xsl:when test="$myparam='H76'"><xsl:value-of select="$myparam"/> (gram per millimetre)</xsl:when>
      		<xsl:when test="$myparam='H77'"><xsl:value-of select="$myparam"/> (module width)</xsl:when>
      		<xsl:when test="$myparam='H79'"><xsl:value-of select="$myparam"/> (French gauge)</xsl:when>
      		<xsl:when test="$myparam='H80'"><xsl:value-of select="$myparam"/> (rack unit)</xsl:when>
      		<xsl:when test="$myparam='H81'"><xsl:value-of select="$myparam"/> (millimetre per minute)</xsl:when>
      		<xsl:when test="$myparam='H82'"><xsl:value-of select="$myparam"/> (big point)</xsl:when>
      		<xsl:when test="$myparam='H83'"><xsl:value-of select="$myparam"/> (litre per kilogram)</xsl:when>
      		<xsl:when test="$myparam='H84'"><xsl:value-of select="$myparam"/> (gram millimetre)</xsl:when>
      		<xsl:when test="$myparam='H85'"><xsl:value-of select="$myparam"/> (reciprocal week)</xsl:when>
      		<xsl:when test="$myparam='H87'"><xsl:value-of select="$myparam"/> (piece)</xsl:when>
      		<xsl:when test="$myparam='H88'"><xsl:value-of select="$myparam"/> (megaohm kilometre)</xsl:when>
      		<xsl:when test="$myparam='H89'"><xsl:value-of select="$myparam"/> (percent per ohm)</xsl:when>
      		<xsl:when test="$myparam='H90'"><xsl:value-of select="$myparam"/> (percent per degree)</xsl:when>
      		<xsl:when test="$myparam='H91'"><xsl:value-of select="$myparam"/> (percent per ten thousand)</xsl:when>
      		<xsl:when test="$myparam='H92'"><xsl:value-of select="$myparam"/> (percent per one hundred thousand)</xsl:when>
      		<xsl:when test="$myparam='H93'"><xsl:value-of select="$myparam"/> (percent per hundred)</xsl:when>
      		<xsl:when test="$myparam='H94'"><xsl:value-of select="$myparam"/> (percent per thousand)</xsl:when>
      		<xsl:when test="$myparam='H95'"><xsl:value-of select="$myparam"/> (percent per volt)</xsl:when>
      		<xsl:when test="$myparam='H96'"><xsl:value-of select="$myparam"/> (percent per bar)</xsl:when>
      		<xsl:when test="$myparam='H98'"><xsl:value-of select="$myparam"/> (percent per inch)</xsl:when>
      		<xsl:when test="$myparam='H99'"><xsl:value-of select="$myparam"/> (percent per metre)</xsl:when>
      		<xsl:when test="$myparam='HA'"><xsl:value-of select="$myparam"/> (hank)</xsl:when>
      		<xsl:when test="$myparam='HBA'"><xsl:value-of select="$myparam"/> (hectobar)</xsl:when>
      		<xsl:when test="$myparam='HBX'"><xsl:value-of select="$myparam"/> (hundred boxes)</xsl:when>
      		<xsl:when test="$myparam='HC'"><xsl:value-of select="$myparam"/> (hundred count)</xsl:when>
      		<xsl:when test="$myparam='HDW'"><xsl:value-of select="$myparam"/> (hundred kilogram, dry weight)</xsl:when>
      		<xsl:when test="$myparam='HEA'"><xsl:value-of select="$myparam"/> (head)</xsl:when>
      		<xsl:when test="$myparam='HGM'"><xsl:value-of select="$myparam"/> (hectogram)</xsl:when>
      		<xsl:when test="$myparam='HH'"><xsl:value-of select="$myparam"/> (hundred cubic foot)</xsl:when>
      		<xsl:when test="$myparam='HIU'"><xsl:value-of select="$myparam"/> (hundred international unit)</xsl:when>
      		<xsl:when test="$myparam='HKM'"><xsl:value-of select="$myparam"/> (hundred kilogram, net mass)</xsl:when>
      		<xsl:when test="$myparam='HLT'"><xsl:value-of select="$myparam"/> (hectolitre)</xsl:when>
      		<xsl:when test="$myparam='HM'"><xsl:value-of select="$myparam"/> (mile per hour (statute mile))</xsl:when>
      		<xsl:when test="$myparam='HMQ'"><xsl:value-of select="$myparam"/> (million cubic metre)</xsl:when>
      		<xsl:when test="$myparam='HMT'"><xsl:value-of select="$myparam"/> (hectometre)</xsl:when>
      		<xsl:when test="$myparam='HPA'"><xsl:value-of select="$myparam"/> (hectolitre of pure alcohol)</xsl:when>
      		<xsl:when test="$myparam='HTZ'"><xsl:value-of select="$myparam"/> (hertz)</xsl:when>
      		<xsl:when test="$myparam='HUR'"><xsl:value-of select="$myparam"/> (hour)</xsl:when>
      		<xsl:when test="$myparam='IA'"><xsl:value-of select="$myparam"/> (inch pound (pound inch))</xsl:when>
      		<xsl:when test="$myparam='IE'"><xsl:value-of select="$myparam"/> (person)</xsl:when>
      		<xsl:when test="$myparam='INH'"><xsl:value-of select="$myparam"/> (inch)</xsl:when>
      		<xsl:when test="$myparam='INK'"><xsl:value-of select="$myparam"/> (square inch)</xsl:when>
      		<xsl:when test="$myparam='INQ'"><xsl:value-of select="$myparam"/> (cubic inch)</xsl:when>
      		<xsl:when test="$myparam='ISD'"><xsl:value-of select="$myparam"/> (international sugar degree)</xsl:when>
      		<xsl:when test="$myparam='IU'"><xsl:value-of select="$myparam"/> (inch per second)</xsl:when>
      		<xsl:when test="$myparam='IUG'"><xsl:value-of select="$myparam"/> (international unit per gram)</xsl:when>
      		<xsl:when test="$myparam='IV'"><xsl:value-of select="$myparam"/> (inch per second squared)</xsl:when>
      		<xsl:when test="$myparam='J10'"><xsl:value-of select="$myparam"/> (percent per millimetre)</xsl:when>
      		<xsl:when test="$myparam='J12'"><xsl:value-of select="$myparam"/> (per mille per psi)</xsl:when>
      		<xsl:when test="$myparam='J13'"><xsl:value-of select="$myparam"/> (degree API)</xsl:when>
      		<xsl:when test="$myparam='J14'"><xsl:value-of select="$myparam"/> (degree Baume (origin scale))</xsl:when>
      		<xsl:when test="$myparam='J15'"><xsl:value-of select="$myparam"/> (degree Baume (US heavy))</xsl:when>
      		<xsl:when test="$myparam='J16'"><xsl:value-of select="$myparam"/> (degree Baume (US light))</xsl:when>
      		<xsl:when test="$myparam='J17'"><xsl:value-of select="$myparam"/> (degree Balling)</xsl:when>
      		<xsl:when test="$myparam='J18'"><xsl:value-of select="$myparam"/> (degree Brix)</xsl:when>
      		<xsl:when test="$myparam='J19'"><xsl:value-of select="$myparam"/> (degree Fahrenheit hour square foot per British thermal unit (thermochemical))</xsl:when>
      		<xsl:when test="$myparam='J2'"><xsl:value-of select="$myparam"/> (joule per kilogram)</xsl:when>
      		<xsl:when test="$myparam='J20'"><xsl:value-of select="$myparam"/> (degree Fahrenheit per kelvin)</xsl:when>
      		<xsl:when test="$myparam='J21'"><xsl:value-of select="$myparam"/> (degree Fahrenheit per bar)</xsl:when>
      		<xsl:when test="$myparam='J22'"><xsl:value-of select="$myparam"/> (degree Fahrenheit hour square foot per British thermal unit (international table))</xsl:when>
      		<xsl:when test="$myparam='J23'"><xsl:value-of select="$myparam"/> (degree Fahrenheit per hour)</xsl:when>
      		<xsl:when test="$myparam='J24'"><xsl:value-of select="$myparam"/> (degree Fahrenheit per minute)</xsl:when>
      		<xsl:when test="$myparam='J25'"><xsl:value-of select="$myparam"/> (degree Fahrenheit per second)</xsl:when>
      		<xsl:when test="$myparam='J26'"><xsl:value-of select="$myparam"/> (reciprocal degree Fahrenheit)</xsl:when>
      		<xsl:when test="$myparam='J27'"><xsl:value-of select="$myparam"/> (degree Oechsle)</xsl:when>
      		<xsl:when test="$myparam='J28'"><xsl:value-of select="$myparam"/> (degree Rankine per hour)</xsl:when>
      		<xsl:when test="$myparam='J29'"><xsl:value-of select="$myparam"/> (degree Rankine per minute)</xsl:when>
      		<xsl:when test="$myparam='J30'"><xsl:value-of select="$myparam"/> (degree Rankine per second)</xsl:when>
      		<xsl:when test="$myparam='J31'"><xsl:value-of select="$myparam"/> (degree Twaddell)</xsl:when>
      		<xsl:when test="$myparam='J32'"><xsl:value-of select="$myparam"/> (micropoise)</xsl:when>
      		<xsl:when test="$myparam='J33'"><xsl:value-of select="$myparam"/> (microgram per kilogram)</xsl:when>
      		<xsl:when test="$myparam='J34'"><xsl:value-of select="$myparam"/> (microgram per cubic metre kelvin)</xsl:when>
      		<xsl:when test="$myparam='J35'"><xsl:value-of select="$myparam"/> (microgram per cubic metre bar)</xsl:when>
      		<xsl:when test="$myparam='J36'"><xsl:value-of select="$myparam"/> (microlitre per litre)</xsl:when>
      		<xsl:when test="$myparam='J38'"><xsl:value-of select="$myparam"/> (baud)</xsl:when>
      		<xsl:when test="$myparam='J39'"><xsl:value-of select="$myparam"/> (British thermal unit (mean))</xsl:when>
      		<xsl:when test="$myparam='J40'"><xsl:value-of select="$myparam"/> (British thermal unit (international table) foot per hour square foot degree Fahrenheit)</xsl:when>
      		<xsl:when test="$myparam='J41'"><xsl:value-of select="$myparam"/> (British thermal unit (international table) inch per hour square foot degree Fahrenheit)</xsl:when>
      		<xsl:when test="$myparam='J42'"><xsl:value-of select="$myparam"/> (British thermal unit (international table) inch per second square foot degree Fahrenheit)</xsl:when>
      		<xsl:when test="$myparam='J43'"><xsl:value-of select="$myparam"/> (British thermal unit (international table) per pound degree Fahrenheit)</xsl:when>
      		<xsl:when test="$myparam='J44'"><xsl:value-of select="$myparam"/> (British thermal unit (international table) per minute)</xsl:when>
      		<xsl:when test="$myparam='J45'"><xsl:value-of select="$myparam"/> (British thermal unit (international table) per second)</xsl:when>
      		<xsl:when test="$myparam='J46'"><xsl:value-of select="$myparam"/> (British thermal unit (thermochemical) foot per hour square foot degree Fahrenheit)</xsl:when>
      		<xsl:when test="$myparam='J47'"><xsl:value-of select="$myparam"/> (British thermal unit (thermochemical) per hour)</xsl:when>
      		<xsl:when test="$myparam='J48'"><xsl:value-of select="$myparam"/> (British thermal unit (thermochemical) inch per hour square foot degree Fahrenheit)</xsl:when>
      		<xsl:when test="$myparam='J49'"><xsl:value-of select="$myparam"/> (British thermal unit (thermochemical) inch per second square foot degree Fahrenheit)</xsl:when>
      		<xsl:when test="$myparam='J50'"><xsl:value-of select="$myparam"/> (British thermal unit (thermochemical) per pound degree Fahrenheit)</xsl:when>
      		<xsl:when test="$myparam='J51'"><xsl:value-of select="$myparam"/> (British thermal unit (thermochemical) per minute)</xsl:when>
      		<xsl:when test="$myparam='J52'"><xsl:value-of select="$myparam"/> (British thermal unit (thermochemical) per second)</xsl:when>
      		<xsl:when test="$myparam='J53'"><xsl:value-of select="$myparam"/> (coulomb square metre per kilogram)</xsl:when>
      		<xsl:when test="$myparam='J54'"><xsl:value-of select="$myparam"/> (megabaud)</xsl:when>
      		<xsl:when test="$myparam='J55'"><xsl:value-of select="$myparam"/> (watt second)</xsl:when>
      		<xsl:when test="$myparam='J56'"><xsl:value-of select="$myparam"/> (bar per bar)</xsl:when>
      		<xsl:when test="$myparam='J57'"><xsl:value-of select="$myparam"/> (barrel (UK petroleum))</xsl:when>
      		<xsl:when test="$myparam='J58'"><xsl:value-of select="$myparam"/> (barrel (UK petroleum) per minute)</xsl:when>
      		<xsl:when test="$myparam='J59'"><xsl:value-of select="$myparam"/> (barrel (UK petroleum) per day)</xsl:when>
      		<xsl:when test="$myparam='J60'"><xsl:value-of select="$myparam"/> (barrel (UK petroleum) per hour)</xsl:when>
      		<xsl:when test="$myparam='J61'"><xsl:value-of select="$myparam"/> (barrel (UK petroleum) per second)</xsl:when>
      		<xsl:when test="$myparam='J62'"><xsl:value-of select="$myparam"/> (barrel (US petroleum) per hour)</xsl:when>
      		<xsl:when test="$myparam='J63'"><xsl:value-of select="$myparam"/> (barrel (US petroleum) per second)</xsl:when>
      		<xsl:when test="$myparam='J64'"><xsl:value-of select="$myparam"/> (bushel (UK) per day)</xsl:when>
      		<xsl:when test="$myparam='J65'"><xsl:value-of select="$myparam"/> (bushel (UK) per hour)</xsl:when>
      		<xsl:when test="$myparam='J66'"><xsl:value-of select="$myparam"/> (bushel (UK) per minute)</xsl:when>
      		<xsl:when test="$myparam='J67'"><xsl:value-of select="$myparam"/> (bushel (UK) per second)</xsl:when>
      		<xsl:when test="$myparam='J68'"><xsl:value-of select="$myparam"/> (bushel (US dry) per day)</xsl:when>
      		<xsl:when test="$myparam='J69'"><xsl:value-of select="$myparam"/> (bushel (US dry) per hour)</xsl:when>
      		<xsl:when test="$myparam='J70'"><xsl:value-of select="$myparam"/> (bushel (US dry) per minute)</xsl:when>
      		<xsl:when test="$myparam='J71'"><xsl:value-of select="$myparam"/> (bushel (US dry) per second)</xsl:when>
      		<xsl:when test="$myparam='J72'"><xsl:value-of select="$myparam"/> (centinewton metre)</xsl:when>
      		<xsl:when test="$myparam='J73'"><xsl:value-of select="$myparam"/> (centipoise per kelvin)</xsl:when>
      		<xsl:when test="$myparam='J74'"><xsl:value-of select="$myparam"/> (centipoise per bar)</xsl:when>
      		<xsl:when test="$myparam='J75'"><xsl:value-of select="$myparam"/> (calorie (mean))</xsl:when>
      		<xsl:when test="$myparam='J76'"><xsl:value-of select="$myparam"/> (calorie (international table) per gram degree Celsius)</xsl:when>
      		<xsl:when test="$myparam='J78'"><xsl:value-of select="$myparam"/> (calorie (thermochemical) per centimetre second degree Celsius)</xsl:when>
      		<xsl:when test="$myparam='J79'"><xsl:value-of select="$myparam"/> (calorie (thermochemical) per gram degree Celsius)</xsl:when>
      		<xsl:when test="$myparam='J81'"><xsl:value-of select="$myparam"/> (calorie (thermochemical) per minute)</xsl:when>
      		<xsl:when test="$myparam='J82'"><xsl:value-of select="$myparam"/> (calorie (thermochemical) per second)</xsl:when>
      		<xsl:when test="$myparam='J83'"><xsl:value-of select="$myparam"/> (clo)</xsl:when>
      		<xsl:when test="$myparam='J84'"><xsl:value-of select="$myparam"/> (centimetre per second kelvin)</xsl:when>
      		<xsl:when test="$myparam='J85'"><xsl:value-of select="$myparam"/> (centimetre per second bar)</xsl:when>
      		<xsl:when test="$myparam='J87'"><xsl:value-of select="$myparam"/> (cubic centimetre per cubic metre)</xsl:when>
      		<xsl:when test="$myparam='J90'"><xsl:value-of select="$myparam"/> (cubic decimetre per day)</xsl:when>
      		<xsl:when test="$myparam='J91'"><xsl:value-of select="$myparam"/> (cubic decimetre per cubic metre)</xsl:when>
      		<xsl:when test="$myparam='J92'"><xsl:value-of select="$myparam"/> (cubic decimetre per minute)</xsl:when>
      		<xsl:when test="$myparam='J93'"><xsl:value-of select="$myparam"/> (cubic decimetre per second)</xsl:when>
      		<xsl:when test="$myparam='J95'"><xsl:value-of select="$myparam"/> (ounce (UK fluid) per day)</xsl:when>
      		<xsl:when test="$myparam='J96'"><xsl:value-of select="$myparam"/> (ounce (UK fluid) per hour)</xsl:when>
      		<xsl:when test="$myparam='J97'"><xsl:value-of select="$myparam"/> (ounce (UK fluid) per minute)</xsl:when>
      		<xsl:when test="$myparam='J98'"><xsl:value-of select="$myparam"/> (ounce (UK fluid) per second)</xsl:when>
      		<xsl:when test="$myparam='J99'"><xsl:value-of select="$myparam"/> (ounce (US fluid) per day)</xsl:when>
      		<xsl:when test="$myparam='JE'"><xsl:value-of select="$myparam"/> (joule per kelvin)</xsl:when>
      		<xsl:when test="$myparam='JK'"><xsl:value-of select="$myparam"/> (megajoule per kilogram)</xsl:when>
      		<xsl:when test="$myparam='JM'"><xsl:value-of select="$myparam"/> (megajoule per cubic metre)</xsl:when>
      		<xsl:when test="$myparam='JNT'"><xsl:value-of select="$myparam"/> (pipeline joint)</xsl:when>
      		<xsl:when test="$myparam='JOU'"><xsl:value-of select="$myparam"/> (joule)</xsl:when>
      		<xsl:when test="$myparam='JPS'"><xsl:value-of select="$myparam"/> (hundred metre)</xsl:when>
      		<xsl:when test="$myparam='JWL'"><xsl:value-of select="$myparam"/> (number of jewels)</xsl:when>
      		<xsl:when test="$myparam='K1'"><xsl:value-of select="$myparam"/> (kilowatt demand)</xsl:when>
      		<xsl:when test="$myparam='K10'"><xsl:value-of select="$myparam"/> (ounce (US fluid) per hour)</xsl:when>
      		<xsl:when test="$myparam='K11'"><xsl:value-of select="$myparam"/> (ounce (US fluid) per minute)</xsl:when>
      		<xsl:when test="$myparam='K12'"><xsl:value-of select="$myparam"/> (ounce (US fluid) per second)</xsl:when>
      		<xsl:when test="$myparam='K13'"><xsl:value-of select="$myparam"/> (foot per degree Fahrenheit)</xsl:when>
      		<xsl:when test="$myparam='K14'"><xsl:value-of select="$myparam"/> (foot per hour)</xsl:when>
      		<xsl:when test="$myparam='K15'"><xsl:value-of select="$myparam"/> (foot pound-force per hour)</xsl:when>
      		<xsl:when test="$myparam='K16'"><xsl:value-of select="$myparam"/> (foot pound-force per minute)</xsl:when>
      		<xsl:when test="$myparam='K17'"><xsl:value-of select="$myparam"/> (foot per psi)</xsl:when>
      		<xsl:when test="$myparam='K18'"><xsl:value-of select="$myparam"/> (foot per second degree Fahrenheit)</xsl:when>
      		<xsl:when test="$myparam='K19'"><xsl:value-of select="$myparam"/> (foot per second psi)</xsl:when>
      		<xsl:when test="$myparam='K2'"><xsl:value-of select="$myparam"/> (kilovolt ampere reactive demand)</xsl:when>
      		<xsl:when test="$myparam='K20'"><xsl:value-of select="$myparam"/> (reciprocal cubic foot)</xsl:when>
      		<xsl:when test="$myparam='K21'"><xsl:value-of select="$myparam"/> (cubic foot per degree Fahrenheit)</xsl:when>
      		<xsl:when test="$myparam='K22'"><xsl:value-of select="$myparam"/> (cubic foot per day)</xsl:when>
      		<xsl:when test="$myparam='K23'"><xsl:value-of select="$myparam"/> (cubic foot per psi)</xsl:when>
      		<xsl:when test="$myparam='K26'"><xsl:value-of select="$myparam"/> (gallon (UK) per day)</xsl:when>
      		<xsl:when test="$myparam='K27'"><xsl:value-of select="$myparam"/> (gallon (UK) per hour)</xsl:when>
      		<xsl:when test="$myparam='K28'"><xsl:value-of select="$myparam"/> (gallon (UK) per second)</xsl:when>
      		<xsl:when test="$myparam='K3'"><xsl:value-of select="$myparam"/> (kilovolt ampere reactive hour)</xsl:when>
      		<xsl:when test="$myparam='K30'"><xsl:value-of select="$myparam"/> (gallon (US liquid) per second)</xsl:when>
      		<xsl:when test="$myparam='K31'"><xsl:value-of select="$myparam"/> (gram-force per square centimetre)</xsl:when>
      		<xsl:when test="$myparam='K32'"><xsl:value-of select="$myparam"/> (gill (UK) per day)</xsl:when>
      		<xsl:when test="$myparam='K33'"><xsl:value-of select="$myparam"/> (gill (UK) per hour)</xsl:when>
      		<xsl:when test="$myparam='K34'"><xsl:value-of select="$myparam"/> (gill (UK) per minute)</xsl:when>
      		<xsl:when test="$myparam='K35'"><xsl:value-of select="$myparam"/> (gill (UK) per second)</xsl:when>
      		<xsl:when test="$myparam='K36'"><xsl:value-of select="$myparam"/> (gill (US) per day)</xsl:when>
      		<xsl:when test="$myparam='K37'"><xsl:value-of select="$myparam"/> (gill (US) per hour)</xsl:when>
      		<xsl:when test="$myparam='K38'"><xsl:value-of select="$myparam"/> (gill (US) per minute)</xsl:when>
      		<xsl:when test="$myparam='K39'"><xsl:value-of select="$myparam"/> (gill (US) per second)</xsl:when>
      		<xsl:when test="$myparam='K40'"><xsl:value-of select="$myparam"/> (standard acceleration of free fall)</xsl:when>
      		<xsl:when test="$myparam='K41'"><xsl:value-of select="$myparam"/> (grain per gallon (US))</xsl:when>
      		<xsl:when test="$myparam='K42'"><xsl:value-of select="$myparam"/> (horsepower (boiler))</xsl:when>
      		<xsl:when test="$myparam='K43'"><xsl:value-of select="$myparam"/> (horsepower (electric))</xsl:when>
      		<xsl:when test="$myparam='K45'"><xsl:value-of select="$myparam"/> (inch per degree Fahrenheit)</xsl:when>
      		<xsl:when test="$myparam='K46'"><xsl:value-of select="$myparam"/> (inch per psi)</xsl:when>
      		<xsl:when test="$myparam='K47'"><xsl:value-of select="$myparam"/> (inch per second degree Fahrenheit)</xsl:when>
      		<xsl:when test="$myparam='K48'"><xsl:value-of select="$myparam"/> (inch per second psi)</xsl:when>
      		<xsl:when test="$myparam='K49'"><xsl:value-of select="$myparam"/> (reciprocal cubic inch)</xsl:when>
      		<xsl:when test="$myparam='K50'"><xsl:value-of select="$myparam"/> (kilobaud)</xsl:when>
      		<xsl:when test="$myparam='K51'"><xsl:value-of select="$myparam"/> (kilocalorie (mean))</xsl:when>
      		<xsl:when test="$myparam='K52'"><xsl:value-of select="$myparam"/> (kilocalorie (international table) per hour metre degree Celsius)</xsl:when>
      		<xsl:when test="$myparam='K53'"><xsl:value-of select="$myparam"/> (kilocalorie (thermochemical))</xsl:when>
      		<xsl:when test="$myparam='K54'"><xsl:value-of select="$myparam"/> (kilocalorie (thermochemical) per minute)</xsl:when>
      		<xsl:when test="$myparam='K55'"><xsl:value-of select="$myparam"/> (kilocalorie (thermochemical) per second)</xsl:when>
      		<xsl:when test="$myparam='K58'"><xsl:value-of select="$myparam"/> (kilomole per hour)</xsl:when>
      		<xsl:when test="$myparam='K59'"><xsl:value-of select="$myparam"/> (kilomole per cubic metre kelvin)</xsl:when>
      		<xsl:when test="$myparam='K6'"><xsl:value-of select="$myparam"/> (kilolitre)</xsl:when>
      		<xsl:when test="$myparam='K60'"><xsl:value-of select="$myparam"/> (kilomole per cubic metre bar)</xsl:when>
      		<xsl:when test="$myparam='K61'"><xsl:value-of select="$myparam"/> (kilomole per minute)</xsl:when>
      		<xsl:when test="$myparam='K62'"><xsl:value-of select="$myparam"/> (litre per litre)</xsl:when>
      		<xsl:when test="$myparam='K63'"><xsl:value-of select="$myparam"/> (reciprocal litre)</xsl:when>
      		<xsl:when test="$myparam='K64'"><xsl:value-of select="$myparam"/> (pound (avoirdupois) per degree Fahrenheit)</xsl:when>
      		<xsl:when test="$myparam='K65'"><xsl:value-of select="$myparam"/> (pound (avoirdupois) square foot)</xsl:when>
      		<xsl:when test="$myparam='K66'"><xsl:value-of select="$myparam"/> (pound (avoirdupois) per day)</xsl:when>
      		<xsl:when test="$myparam='K67'"><xsl:value-of select="$myparam"/> (pound per foot hour)</xsl:when>
      		<xsl:when test="$myparam='K68'"><xsl:value-of select="$myparam"/> (pound per foot second)</xsl:when>
      		<xsl:when test="$myparam='K69'"><xsl:value-of select="$myparam"/> (pound (avoirdupois) per cubic foot degree Fahrenheit)</xsl:when>
      		<xsl:when test="$myparam='K70'"><xsl:value-of select="$myparam"/> (pound (avoirdupois) per cubic foot psi)</xsl:when>
      		<xsl:when test="$myparam='K71'"><xsl:value-of select="$myparam"/> (pound (avoirdupois) per gallon (UK))</xsl:when>
      		<xsl:when test="$myparam='K73'"><xsl:value-of select="$myparam"/> (pound (avoirdupois) per hour degree Fahrenheit)</xsl:when>
      		<xsl:when test="$myparam='K74'"><xsl:value-of select="$myparam"/> (pound (avoirdupois) per hour psi)</xsl:when>
      		<xsl:when test="$myparam='K75'"><xsl:value-of select="$myparam"/> (pound (avoirdupois) per cubic inch degree Fahrenheit)</xsl:when>
      		<xsl:when test="$myparam='K76'"><xsl:value-of select="$myparam"/> (pound (avoirdupois) per cubic inch psi)</xsl:when>
      		<xsl:when test="$myparam='K77'"><xsl:value-of select="$myparam"/> (pound (avoirdupois) per psi)</xsl:when>
      		<xsl:when test="$myparam='K78'"><xsl:value-of select="$myparam"/> (pound (avoirdupois) per minute)</xsl:when>
      		<xsl:when test="$myparam='K79'"><xsl:value-of select="$myparam"/> (pound (avoirdupois) per minute degree Fahrenheit)</xsl:when>
      		<xsl:when test="$myparam='K80'"><xsl:value-of select="$myparam"/> (pound (avoirdupois) per minute psi)</xsl:when>
      		<xsl:when test="$myparam='K81'"><xsl:value-of select="$myparam"/> (pound (avoirdupois) per second)</xsl:when>
      		<xsl:when test="$myparam='K82'"><xsl:value-of select="$myparam"/> (pound (avoirdupois) per second degree Fahrenheit)</xsl:when>
      		<xsl:when test="$myparam='K83'"><xsl:value-of select="$myparam"/> (pound (avoirdupois) per second psi)</xsl:when>
      		<xsl:when test="$myparam='K84'"><xsl:value-of select="$myparam"/> (pound per cubic yard)</xsl:when>
      		<xsl:when test="$myparam='K85'"><xsl:value-of select="$myparam"/> (pound-force per square foot)</xsl:when>
      		<xsl:when test="$myparam='K86'"><xsl:value-of select="$myparam"/> (pound-force per square inch degree Fahrenheit)</xsl:when>
      		<xsl:when test="$myparam='K87'"><xsl:value-of select="$myparam"/> (psi cubic inch per second)</xsl:when>
      		<xsl:when test="$myparam='K88'"><xsl:value-of select="$myparam"/> (psi litre per second)</xsl:when>
      		<xsl:when test="$myparam='K89'"><xsl:value-of select="$myparam"/> (psi cubic metre per second)</xsl:when>
      		<xsl:when test="$myparam='K90'"><xsl:value-of select="$myparam"/> (psi cubic yard per second)</xsl:when>
      		<xsl:when test="$myparam='K91'"><xsl:value-of select="$myparam"/> (pound-force second per square foot)</xsl:when>
      		<xsl:when test="$myparam='K92'"><xsl:value-of select="$myparam"/> (pound-force second per square inch)</xsl:when>
      		<xsl:when test="$myparam='K93'"><xsl:value-of select="$myparam"/> (reciprocal psi)</xsl:when>
      		<xsl:when test="$myparam='K94'"><xsl:value-of select="$myparam"/> (quart (UK liquid) per day)</xsl:when>
      		<xsl:when test="$myparam='K95'"><xsl:value-of select="$myparam"/> (quart (UK liquid) per hour)</xsl:when>
      		<xsl:when test="$myparam='K96'"><xsl:value-of select="$myparam"/> (quart (UK liquid) per minute)</xsl:when>
      		<xsl:when test="$myparam='K97'"><xsl:value-of select="$myparam"/> (quart (UK liquid) per second)</xsl:when>
      		<xsl:when test="$myparam='K98'"><xsl:value-of select="$myparam"/> (quart (US liquid) per day)</xsl:when>
      		<xsl:when test="$myparam='K99'"><xsl:value-of select="$myparam"/> (quart (US liquid) per hour)</xsl:when>
      		<xsl:when test="$myparam='KA'"><xsl:value-of select="$myparam"/> (cake)</xsl:when>
      		<xsl:when test="$myparam='KAT'"><xsl:value-of select="$myparam"/> (katal)</xsl:when>
      		<xsl:when test="$myparam='KB'"><xsl:value-of select="$myparam"/> (kilocharacter)</xsl:when>
      		<xsl:when test="$myparam='KBA'"><xsl:value-of select="$myparam"/> (kilobar)</xsl:when>
      		<xsl:when test="$myparam='KCC'"><xsl:value-of select="$myparam"/> (kilogram of choline chloride)</xsl:when>
      		<xsl:when test="$myparam='KDW'"><xsl:value-of select="$myparam"/> (kilogram drained net weight)</xsl:when>
      		<xsl:when test="$myparam='KEL'"><xsl:value-of select="$myparam"/> (kelvin)</xsl:when>
      		<xsl:when test="$myparam='KGM'"><xsl:value-of select="$myparam"/> (kilogram)</xsl:when>
      		<xsl:when test="$myparam='KGS'"><xsl:value-of select="$myparam"/> (kilogram per second)</xsl:when>
      		<xsl:when test="$myparam='KHY'"><xsl:value-of select="$myparam"/> (kilogram of hydrogen peroxide)</xsl:when>
      		<xsl:when test="$myparam='KHZ'"><xsl:value-of select="$myparam"/> (kilohertz)</xsl:when>
      		<xsl:when test="$myparam='KI'"><xsl:value-of select="$myparam"/> (kilogram per millimetre width)</xsl:when>
      		<xsl:when test="$myparam='KIC'"><xsl:value-of select="$myparam"/> (kilogram, including container)</xsl:when>
      		<xsl:when test="$myparam='KIP'"><xsl:value-of select="$myparam"/> (kilogram, including inner packaging)</xsl:when>
      		<xsl:when test="$myparam='KJ'"><xsl:value-of select="$myparam"/> (kilosegment)</xsl:when>
      		<xsl:when test="$myparam='KJO'"><xsl:value-of select="$myparam"/> (kilojoule)</xsl:when>
      		<xsl:when test="$myparam='KL'"><xsl:value-of select="$myparam"/> (kilogram per metre)</xsl:when>
      		<xsl:when test="$myparam='KLK'"><xsl:value-of select="$myparam"/> (lactic dry material percentage)</xsl:when>
      		<xsl:when test="$myparam='KLX'"><xsl:value-of select="$myparam"/> (kilolux)</xsl:when>
      		<xsl:when test="$myparam='KMA'"><xsl:value-of select="$myparam"/> (kilogram of methylamine)</xsl:when>
      		<xsl:when test="$myparam='KMH'"><xsl:value-of select="$myparam"/> (kilometre per hour)</xsl:when>
      		<xsl:when test="$myparam='KMK'"><xsl:value-of select="$myparam"/> (square kilometre)</xsl:when>
      		<xsl:when test="$myparam='KMQ'"><xsl:value-of select="$myparam"/> (kilogram per cubic metre)</xsl:when>
      		<xsl:when test="$myparam='KMT'"><xsl:value-of select="$myparam"/> (kilometre)</xsl:when>
      		<xsl:when test="$myparam='KNI'"><xsl:value-of select="$myparam"/> (kilogram of nitrogen)</xsl:when>
      		<xsl:when test="$myparam='KNM'"><xsl:value-of select="$myparam"/> (kilonewton per square metre)</xsl:when>
      		<xsl:when test="$myparam='KNS'"><xsl:value-of select="$myparam"/> (kilogram named substance)</xsl:when>
      		<xsl:when test="$myparam='KNT'"><xsl:value-of select="$myparam"/> (knot)</xsl:when>
      		<xsl:when test="$myparam='KO'"><xsl:value-of select="$myparam"/> (milliequivalence caustic potash per gram of product)</xsl:when>
      		<xsl:when test="$myparam='KPA'"><xsl:value-of select="$myparam"/> (kilopascal)</xsl:when>
      		<xsl:when test="$myparam='KPH'"><xsl:value-of select="$myparam"/> (kilogram of potassium hydroxide (caustic potash))</xsl:when>
      		<xsl:when test="$myparam='KPO'"><xsl:value-of select="$myparam"/> (kilogram of potassium oxide)</xsl:when>
      		<xsl:when test="$myparam='KPP'"><xsl:value-of select="$myparam"/> (kilogram of phosphorus pentoxide (phosphoric anhydride))</xsl:when>
      		<xsl:when test="$myparam='KR'"><xsl:value-of select="$myparam"/> (kiloroentgen)</xsl:when>
      		<xsl:when test="$myparam='KSD'"><xsl:value-of select="$myparam"/> (kilogram of substance 90 % dry)</xsl:when>
      		<xsl:when test="$myparam='KSH'"><xsl:value-of select="$myparam"/> (kilogram of sodium hydroxide (caustic soda))</xsl:when>
      		<xsl:when test="$myparam='KT'"><xsl:value-of select="$myparam"/> (kit)</xsl:when>
      		<xsl:when test="$myparam='KTN'"><xsl:value-of select="$myparam"/> (kilotonne)</xsl:when>
      		<xsl:when test="$myparam='KUR'"><xsl:value-of select="$myparam"/> (kilogram of uranium)</xsl:when>
      		<xsl:when test="$myparam='KVA'"><xsl:value-of select="$myparam"/> (kilovolt - ampere)</xsl:when>
      		<xsl:when test="$myparam='KVR'"><xsl:value-of select="$myparam"/> (kilovar)</xsl:when>
      		<xsl:when test="$myparam='KVT'"><xsl:value-of select="$myparam"/> (kilovolt)</xsl:when>
      		<xsl:when test="$myparam='KW'"><xsl:value-of select="$myparam"/> (kilogram per millimetre)</xsl:when>
      		<xsl:when test="$myparam='KWH'"><xsl:value-of select="$myparam"/> (kilowatt hour)</xsl:when>
      		<xsl:when test="$myparam='KWN'"><xsl:value-of select="$myparam"/> (Kilowatt hour per normalized cubic metre)</xsl:when>
      		<xsl:when test="$myparam='KWO'"><xsl:value-of select="$myparam"/> (kilogram of tungsten trioxide)</xsl:when>
      		<xsl:when test="$myparam='KWS'"><xsl:value-of select="$myparam"/> (Kilowatt hour per standard cubic metre)</xsl:when>
      		<xsl:when test="$myparam='KWT'"><xsl:value-of select="$myparam"/> (kilowatt)</xsl:when>
      		<xsl:when test="$myparam='KX'"><xsl:value-of select="$myparam"/> (millilitre per kilogram)</xsl:when>
      		<xsl:when test="$myparam='L10'"><xsl:value-of select="$myparam"/> (quart (US liquid) per minute)</xsl:when>
      		<xsl:when test="$myparam='L11'"><xsl:value-of select="$myparam"/> (quart (US liquid) per second)</xsl:when>
      		<xsl:when test="$myparam='L12'"><xsl:value-of select="$myparam"/> (metre per second kelvin)</xsl:when>
      		<xsl:when test="$myparam='L13'"><xsl:value-of select="$myparam"/> (metre per second bar)</xsl:when>
      		<xsl:when test="$myparam='L14'"><xsl:value-of select="$myparam"/> (square metre hour degree Celsius per kilocalorie (international table))</xsl:when>
      		<xsl:when test="$myparam='L15'"><xsl:value-of select="$myparam"/> (millipascal second per kelvin)</xsl:when>
      		<xsl:when test="$myparam='L16'"><xsl:value-of select="$myparam"/> (millipascal second per bar)</xsl:when>
      		<xsl:when test="$myparam='L17'"><xsl:value-of select="$myparam"/> (milligram per cubic metre kelvin)</xsl:when>
      		<xsl:when test="$myparam='L18'"><xsl:value-of select="$myparam"/> (milligram per cubic metre bar)</xsl:when>
      		<xsl:when test="$myparam='L19'"><xsl:value-of select="$myparam"/> (millilitre per litre)</xsl:when>
      		<xsl:when test="$myparam='L2'"><xsl:value-of select="$myparam"/> (litre per minute)</xsl:when>
      		<xsl:when test="$myparam='L20'"><xsl:value-of select="$myparam"/> (reciprocal cubic millimetre)</xsl:when>
      		<xsl:when test="$myparam='L21'"><xsl:value-of select="$myparam"/> (cubic millimetre per cubic metre)</xsl:when>
      		<xsl:when test="$myparam='L23'"><xsl:value-of select="$myparam"/> (mole per hour)</xsl:when>
      		<xsl:when test="$myparam='L24'"><xsl:value-of select="$myparam"/> (mole per kilogram kelvin)</xsl:when>
      		<xsl:when test="$myparam='L25'"><xsl:value-of select="$myparam"/> (mole per kilogram bar)</xsl:when>
      		<xsl:when test="$myparam='L26'"><xsl:value-of select="$myparam"/> (mole per litre kelvin)</xsl:when>
      		<xsl:when test="$myparam='L27'"><xsl:value-of select="$myparam"/> (mole per litre bar)</xsl:when>
      		<xsl:when test="$myparam='L28'"><xsl:value-of select="$myparam"/> (mole per cubic metre kelvin)</xsl:when>
      		<xsl:when test="$myparam='L29'"><xsl:value-of select="$myparam"/> (mole per cubic metre bar)</xsl:when>
      		<xsl:when test="$myparam='L30'"><xsl:value-of select="$myparam"/> (mole per minute)</xsl:when>
      		<xsl:when test="$myparam='L31'"><xsl:value-of select="$myparam"/> (milliroentgen aequivalent men)</xsl:when>
      		<xsl:when test="$myparam='L32'"><xsl:value-of select="$myparam"/> (nanogram per kilogram)</xsl:when>
      		<xsl:when test="$myparam='L33'"><xsl:value-of select="$myparam"/> (ounce (avoirdupois) per day)</xsl:when>
      		<xsl:when test="$myparam='L34'"><xsl:value-of select="$myparam"/> (ounce (avoirdupois) per hour)</xsl:when>
      		<xsl:when test="$myparam='L35'"><xsl:value-of select="$myparam"/> (ounce (avoirdupois) per minute)</xsl:when>
      		<xsl:when test="$myparam='L36'"><xsl:value-of select="$myparam"/> (ounce (avoirdupois) per second)</xsl:when>
      		<xsl:when test="$myparam='L37'"><xsl:value-of select="$myparam"/> (ounce (avoirdupois) per gallon (UK))</xsl:when>
      		<xsl:when test="$myparam='L38'"><xsl:value-of select="$myparam"/> (ounce (avoirdupois) per gallon (US))</xsl:when>
      		<xsl:when test="$myparam='L39'"><xsl:value-of select="$myparam"/> (ounce (avoirdupois) per cubic inch)</xsl:when>
      		<xsl:when test="$myparam='L40'"><xsl:value-of select="$myparam"/> (ounce (avoirdupois)-force)</xsl:when>
      		<xsl:when test="$myparam='L41'"><xsl:value-of select="$myparam"/> (ounce (avoirdupois)-force inch)</xsl:when>
      		<xsl:when test="$myparam='L42'"><xsl:value-of select="$myparam"/> (picosiemens per metre)</xsl:when>
      		<xsl:when test="$myparam='L43'"><xsl:value-of select="$myparam"/> (peck (UK))</xsl:when>
      		<xsl:when test="$myparam='L44'"><xsl:value-of select="$myparam"/> (peck (UK) per day)</xsl:when>
      		<xsl:when test="$myparam='L45'"><xsl:value-of select="$myparam"/> (peck (UK) per hour)</xsl:when>
      		<xsl:when test="$myparam='L46'"><xsl:value-of select="$myparam"/> (peck (UK) per minute)</xsl:when>
      		<xsl:when test="$myparam='L47'"><xsl:value-of select="$myparam"/> (peck (UK) per second)</xsl:when>
      		<xsl:when test="$myparam='L48'"><xsl:value-of select="$myparam"/> (peck (US dry) per day)</xsl:when>
      		<xsl:when test="$myparam='L49'"><xsl:value-of select="$myparam"/> (peck (US dry) per hour)</xsl:when>
      		<xsl:when test="$myparam='L50'"><xsl:value-of select="$myparam"/> (peck (US dry) per minute)</xsl:when>
      		<xsl:when test="$myparam='L51'"><xsl:value-of select="$myparam"/> (peck (US dry) per second)</xsl:when>
      		<xsl:when test="$myparam='L52'"><xsl:value-of select="$myparam"/> (psi per psi)</xsl:when>
      		<xsl:when test="$myparam='L53'"><xsl:value-of select="$myparam"/> (pint (UK) per day)</xsl:when>
      		<xsl:when test="$myparam='L54'"><xsl:value-of select="$myparam"/> (pint (UK) per hour)</xsl:when>
      		<xsl:when test="$myparam='L55'"><xsl:value-of select="$myparam"/> (pint (UK) per minute)</xsl:when>
      		<xsl:when test="$myparam='L56'"><xsl:value-of select="$myparam"/> (pint (UK) per second)</xsl:when>
      		<xsl:when test="$myparam='L57'"><xsl:value-of select="$myparam"/> (pint (US liquid) per day)</xsl:when>
      		<xsl:when test="$myparam='L58'"><xsl:value-of select="$myparam"/> (pint (US liquid) per hour)</xsl:when>
      		<xsl:when test="$myparam='L59'"><xsl:value-of select="$myparam"/> (pint (US liquid) per minute)</xsl:when>
      		<xsl:when test="$myparam='L60'"><xsl:value-of select="$myparam"/> (pint (US liquid) per second)</xsl:when>
      		<xsl:when test="$myparam='L63'"><xsl:value-of select="$myparam"/> (slug per day)</xsl:when>
      		<xsl:when test="$myparam='L64'"><xsl:value-of select="$myparam"/> (slug per foot second)</xsl:when>
      		<xsl:when test="$myparam='L65'"><xsl:value-of select="$myparam"/> (slug per cubic foot)</xsl:when>
      		<xsl:when test="$myparam='L66'"><xsl:value-of select="$myparam"/> (slug per hour)</xsl:when>
      		<xsl:when test="$myparam='L67'"><xsl:value-of select="$myparam"/> (slug per minute)</xsl:when>
      		<xsl:when test="$myparam='L68'"><xsl:value-of select="$myparam"/> (slug per second)</xsl:when>
      		<xsl:when test="$myparam='L69'"><xsl:value-of select="$myparam"/> (tonne per kelvin)</xsl:when>
      		<xsl:when test="$myparam='L70'"><xsl:value-of select="$myparam"/> (tonne per bar)</xsl:when>
      		<xsl:when test="$myparam='L71'"><xsl:value-of select="$myparam"/> (tonne per day)</xsl:when>
      		<xsl:when test="$myparam='L72'"><xsl:value-of select="$myparam"/> (tonne per day kelvin)</xsl:when>
      		<xsl:when test="$myparam='L73'"><xsl:value-of select="$myparam"/> (tonne per day bar)</xsl:when>
      		<xsl:when test="$myparam='L74'"><xsl:value-of select="$myparam"/> (tonne per hour kelvin)</xsl:when>
      		<xsl:when test="$myparam='L75'"><xsl:value-of select="$myparam"/> (tonne per hour bar)</xsl:when>
      		<xsl:when test="$myparam='L76'"><xsl:value-of select="$myparam"/> (tonne per cubic metre kelvin)</xsl:when>
      		<xsl:when test="$myparam='L77'"><xsl:value-of select="$myparam"/> (tonne per cubic metre bar)</xsl:when>
      		<xsl:when test="$myparam='L78'"><xsl:value-of select="$myparam"/> (tonne per minute)</xsl:when>
      		<xsl:when test="$myparam='L79'"><xsl:value-of select="$myparam"/> (tonne per minute kelvin)</xsl:when>
      		<xsl:when test="$myparam='L80'"><xsl:value-of select="$myparam"/> (tonne per minute bar)</xsl:when>
      		<xsl:when test="$myparam='L81'"><xsl:value-of select="$myparam"/> (tonne per second)</xsl:when>
      		<xsl:when test="$myparam='L82'"><xsl:value-of select="$myparam"/> (tonne per second kelvin)</xsl:when>
      		<xsl:when test="$myparam='L83'"><xsl:value-of select="$myparam"/> (tonne per second bar)</xsl:when>
      		<xsl:when test="$myparam='L84'"><xsl:value-of select="$myparam"/> (ton (UK shipping))</xsl:when>
      		<xsl:when test="$myparam='L85'"><xsl:value-of select="$myparam"/> (ton long per day)</xsl:when>
      		<xsl:when test="$myparam='L86'"><xsl:value-of select="$myparam"/> (ton (US shipping))</xsl:when>
      		<xsl:when test="$myparam='L87'"><xsl:value-of select="$myparam"/> (ton short per degree Fahrenheit)</xsl:when>
      		<xsl:when test="$myparam='L88'"><xsl:value-of select="$myparam"/> (ton short per day)</xsl:when>
      		<xsl:when test="$myparam='L89'"><xsl:value-of select="$myparam"/> (ton short per hour degree Fahrenheit)</xsl:when>
      		<xsl:when test="$myparam='L90'"><xsl:value-of select="$myparam"/> (ton short per hour psi)</xsl:when>
      		<xsl:when test="$myparam='L91'"><xsl:value-of select="$myparam"/> (ton short per psi)</xsl:when>
      		<xsl:when test="$myparam='L92'"><xsl:value-of select="$myparam"/> (ton (UK long) per cubic yard)</xsl:when>
      		<xsl:when test="$myparam='L93'"><xsl:value-of select="$myparam"/> (ton (US short) per cubic yard)</xsl:when>
      		<xsl:when test="$myparam='L94'"><xsl:value-of select="$myparam"/> (ton-force (US short))</xsl:when>
      		<xsl:when test="$myparam='L95'"><xsl:value-of select="$myparam"/> (common year)</xsl:when>
      		<xsl:when test="$myparam='L96'"><xsl:value-of select="$myparam"/> (sidereal year)</xsl:when>
      		<xsl:when test="$myparam='L98'"><xsl:value-of select="$myparam"/> (yard per degree Fahrenheit)</xsl:when>
      		<xsl:when test="$myparam='L99'"><xsl:value-of select="$myparam"/> (yard per psi)</xsl:when>
      		<xsl:when test="$myparam='LA'"><xsl:value-of select="$myparam"/> (pound per cubic inch)</xsl:when>
      		<xsl:when test="$myparam='LAC'"><xsl:value-of select="$myparam"/> (lactose excess percentage)</xsl:when>
      		<xsl:when test="$myparam='LBR'"><xsl:value-of select="$myparam"/> (pound)</xsl:when>
      		<xsl:when test="$myparam='LBT'"><xsl:value-of select="$myparam"/> (troy pound (US))</xsl:when>
      		<xsl:when test="$myparam='LD'"><xsl:value-of select="$myparam"/> (litre per day)</xsl:when>
      		<xsl:when test="$myparam='LEF'"><xsl:value-of select="$myparam"/> (leaf)</xsl:when>
      		<xsl:when test="$myparam='LF'"><xsl:value-of select="$myparam"/> (linear foot)</xsl:when>
      		<xsl:when test="$myparam='LH'"><xsl:value-of select="$myparam"/> (labour hour)</xsl:when>
      		<xsl:when test="$myparam='LK'"><xsl:value-of select="$myparam"/> (link)</xsl:when>
      		<xsl:when test="$myparam='LM'"><xsl:value-of select="$myparam"/> (linear metre)</xsl:when>
      		<xsl:when test="$myparam='LN'"><xsl:value-of select="$myparam"/> (length)</xsl:when>
      		<xsl:when test="$myparam='LO'"><xsl:value-of select="$myparam"/> (lot [unit of procurement])</xsl:when>
      		<xsl:when test="$myparam='LP'"><xsl:value-of select="$myparam"/> (liquid pound)</xsl:when>
      		<xsl:when test="$myparam='LPA'"><xsl:value-of select="$myparam"/> (litre of pure alcohol)</xsl:when>
      		<xsl:when test="$myparam='LR'"><xsl:value-of select="$myparam"/> (layer)</xsl:when>
      		<xsl:when test="$myparam='LS'"><xsl:value-of select="$myparam"/> (lump sum)</xsl:when>
      		<xsl:when test="$myparam='LTN'"><xsl:value-of select="$myparam"/> (ton (UK) or long ton (US))</xsl:when>
      		<xsl:when test="$myparam='LTR'"><xsl:value-of select="$myparam"/> (litre)</xsl:when>
      		<xsl:when test="$myparam='LUB'"><xsl:value-of select="$myparam"/> (metric ton, lubricating oil)</xsl:when>
      		<xsl:when test="$myparam='LUM'"><xsl:value-of select="$myparam"/> (lumen)</xsl:when>
      		<xsl:when test="$myparam='LUX'"><xsl:value-of select="$myparam"/> (lux)</xsl:when>
      		<xsl:when test="$myparam='LY'"><xsl:value-of select="$myparam"/> (linear yard)</xsl:when>
      		<xsl:when test="$myparam='M1'"><xsl:value-of select="$myparam"/> (milligram per litre)</xsl:when>
      		<xsl:when test="$myparam='M10'"><xsl:value-of select="$myparam"/> (reciprocal cubic yard)</xsl:when>
      		<xsl:when test="$myparam='M11'"><xsl:value-of select="$myparam"/> (cubic yard per degree Fahrenheit)</xsl:when>
      		<xsl:when test="$myparam='M12'"><xsl:value-of select="$myparam"/> (cubic yard per day)</xsl:when>
      		<xsl:when test="$myparam='M13'"><xsl:value-of select="$myparam"/> (cubic yard per hour)</xsl:when>
      		<xsl:when test="$myparam='M14'"><xsl:value-of select="$myparam"/> (cubic yard per psi)</xsl:when>
      		<xsl:when test="$myparam='M15'"><xsl:value-of select="$myparam"/> (cubic yard per minute)</xsl:when>
      		<xsl:when test="$myparam='M16'"><xsl:value-of select="$myparam"/> (cubic yard per second)</xsl:when>
      		<xsl:when test="$myparam='M17'"><xsl:value-of select="$myparam"/> (kilohertz metre)</xsl:when>
      		<xsl:when test="$myparam='M18'"><xsl:value-of select="$myparam"/> (gigahertz metre)</xsl:when>
      		<xsl:when test="$myparam='M19'"><xsl:value-of select="$myparam"/> (Beaufort)</xsl:when>
      		<xsl:when test="$myparam='M20'"><xsl:value-of select="$myparam"/> (reciprocal megakelvin or megakelvin to the power minus one)</xsl:when>
      		<xsl:when test="$myparam='M21'"><xsl:value-of select="$myparam"/> (reciprocal kilovolt - ampere reciprocal hour)</xsl:when>
      		<xsl:when test="$myparam='M22'"><xsl:value-of select="$myparam"/> (millilitre per square centimetre minute)</xsl:when>
      		<xsl:when test="$myparam='M23'"><xsl:value-of select="$myparam"/> (newton per centimetre)</xsl:when>
      		<xsl:when test="$myparam='M24'"><xsl:value-of select="$myparam"/> (ohm kilometre)</xsl:when>
      		<xsl:when test="$myparam='M25'"><xsl:value-of select="$myparam"/> (percent per degree Celsius)</xsl:when>
      		<xsl:when test="$myparam='M26'"><xsl:value-of select="$myparam"/> (gigaohm per metre)</xsl:when>
      		<xsl:when test="$myparam='M27'"><xsl:value-of select="$myparam"/> (megahertz metre)</xsl:when>
      		<xsl:when test="$myparam='M29'"><xsl:value-of select="$myparam"/> (kilogram per kilogram)</xsl:when>
      		<xsl:when test="$myparam='M30'"><xsl:value-of select="$myparam"/> (reciprocal volt - ampere reciprocal second)</xsl:when>
      		<xsl:when test="$myparam='M31'"><xsl:value-of select="$myparam"/> (kilogram per kilometre)</xsl:when>
      		<xsl:when test="$myparam='M32'"><xsl:value-of select="$myparam"/> (pascal second per litre)</xsl:when>
      		<xsl:when test="$myparam='M33'"><xsl:value-of select="$myparam"/> (millimole per litre)</xsl:when>
      		<xsl:when test="$myparam='M34'"><xsl:value-of select="$myparam"/> (newton metre per square metre)</xsl:when>
      		<xsl:when test="$myparam='M35'"><xsl:value-of select="$myparam"/> (millivolt - ampere)</xsl:when>
      		<xsl:when test="$myparam='M36'"><xsl:value-of select="$myparam"/> (30-day month)</xsl:when>
      		<xsl:when test="$myparam='M37'"><xsl:value-of select="$myparam"/> (actual/360)</xsl:when>
      		<xsl:when test="$myparam='M38'"><xsl:value-of select="$myparam"/> (kilometre per second squared)</xsl:when>
      		<xsl:when test="$myparam='M39'"><xsl:value-of select="$myparam"/> (centimetre per second squared)</xsl:when>
      		<xsl:when test="$myparam='M4'"><xsl:value-of select="$myparam"/> (monetary value)</xsl:when>
      		<xsl:when test="$myparam='M40'"><xsl:value-of select="$myparam"/> (yard per second squared)</xsl:when>
      		<xsl:when test="$myparam='M41'"><xsl:value-of select="$myparam"/> (millimetre per second squared)</xsl:when>
      		<xsl:when test="$myparam='M42'"><xsl:value-of select="$myparam"/> (mile (statute mile) per second squared)</xsl:when>
      		<xsl:when test="$myparam='M43'"><xsl:value-of select="$myparam"/> (mil)</xsl:when>
      		<xsl:when test="$myparam='M44'"><xsl:value-of select="$myparam"/> (revolution)</xsl:when>
      		<xsl:when test="$myparam='M45'"><xsl:value-of select="$myparam"/> (degree [unit of angle] per second squared)</xsl:when>
      		<xsl:when test="$myparam='M46'"><xsl:value-of select="$myparam"/> (revolution per minute)</xsl:when>
      		<xsl:when test="$myparam='M47'"><xsl:value-of select="$myparam"/> (circular mil)</xsl:when>
      		<xsl:when test="$myparam='M48'"><xsl:value-of select="$myparam"/> (square mile (based on U.S. survey foot))</xsl:when>
      		<xsl:when test="$myparam='M49'"><xsl:value-of select="$myparam"/> (chain (based on U.S. survey foot))</xsl:when>
      		<xsl:when test="$myparam='M5'"><xsl:value-of select="$myparam"/> (microcurie)</xsl:when>
      		<xsl:when test="$myparam='M50'"><xsl:value-of select="$myparam"/> (furlong)</xsl:when>
      		<xsl:when test="$myparam='M51'"><xsl:value-of select="$myparam"/> (foot (U.S. survey))</xsl:when>
      		<xsl:when test="$myparam='M52'"><xsl:value-of select="$myparam"/> (mile (based on U.S. survey foot))</xsl:when>
      		<xsl:when test="$myparam='M53'"><xsl:value-of select="$myparam"/> (metre per pascal)</xsl:when>
      		<xsl:when test="$myparam='M55'"><xsl:value-of select="$myparam"/> (metre per radiant)</xsl:when>
      		<xsl:when test="$myparam='M56'"><xsl:value-of select="$myparam"/> (shake)</xsl:when>
      		<xsl:when test="$myparam='M57'"><xsl:value-of select="$myparam"/> (mile per minute)</xsl:when>
      		<xsl:when test="$myparam='M58'"><xsl:value-of select="$myparam"/> (mile per second)</xsl:when>
      		<xsl:when test="$myparam='M59'"><xsl:value-of select="$myparam"/> (metre per second pascal)</xsl:when>
      		<xsl:when test="$myparam='M60'"><xsl:value-of select="$myparam"/> (metre per hour)</xsl:when>
      		<xsl:when test="$myparam='M61'"><xsl:value-of select="$myparam"/> (inch per year)</xsl:when>
      		<xsl:when test="$myparam='M62'"><xsl:value-of select="$myparam"/> (kilometre per second)</xsl:when>
      		<xsl:when test="$myparam='M63'"><xsl:value-of select="$myparam"/> (inch per minute)</xsl:when>
      		<xsl:when test="$myparam='M64'"><xsl:value-of select="$myparam"/> (yard per second)</xsl:when>
      		<xsl:when test="$myparam='M65'"><xsl:value-of select="$myparam"/> (yard per minute)</xsl:when>
      		<xsl:when test="$myparam='M66'"><xsl:value-of select="$myparam"/> (yard per hour)</xsl:when>
      		<xsl:when test="$myparam='M67'"><xsl:value-of select="$myparam"/> (acre-foot (based on U.S. survey foot))</xsl:when>
      		<xsl:when test="$myparam='M68'"><xsl:value-of select="$myparam"/> (cord (128 ft3))</xsl:when>
      		<xsl:when test="$myparam='M69'"><xsl:value-of select="$myparam"/> (cubic mile (UK statute))</xsl:when>
      		<xsl:when test="$myparam='M7'"><xsl:value-of select="$myparam"/> (micro-inch)</xsl:when>
      		<xsl:when test="$myparam='M70'"><xsl:value-of select="$myparam"/> (ton, register)</xsl:when>
      		<xsl:when test="$myparam='M71'"><xsl:value-of select="$myparam"/> (cubic metre per pascal)</xsl:when>
      		<xsl:when test="$myparam='M72'"><xsl:value-of select="$myparam"/> (bel)</xsl:when>
      		<xsl:when test="$myparam='M73'"><xsl:value-of select="$myparam"/> (kilogram per cubic metre pascal)</xsl:when>
      		<xsl:when test="$myparam='M74'"><xsl:value-of select="$myparam"/> (kilogram per pascal)</xsl:when>
      		<xsl:when test="$myparam='M75'"><xsl:value-of select="$myparam"/> (kilopound-force)</xsl:when>
      		<xsl:when test="$myparam='M76'"><xsl:value-of select="$myparam"/> (poundal)</xsl:when>
      		<xsl:when test="$myparam='M77'"><xsl:value-of select="$myparam"/> (kilogram metre per second squared)</xsl:when>
      		<xsl:when test="$myparam='M78'"><xsl:value-of select="$myparam"/> (pond)</xsl:when>
      		<xsl:when test="$myparam='M79'"><xsl:value-of select="$myparam"/> (square foot per hour)</xsl:when>
      		<xsl:when test="$myparam='M80'"><xsl:value-of select="$myparam"/> (stokes per pascal)</xsl:when>
      		<xsl:when test="$myparam='M81'"><xsl:value-of select="$myparam"/> (square centimetre per second)</xsl:when>
      		<xsl:when test="$myparam='M82'"><xsl:value-of select="$myparam"/> (square metre per second pascal)</xsl:when>
      		<xsl:when test="$myparam='M83'"><xsl:value-of select="$myparam"/> (denier)</xsl:when>
      		<xsl:when test="$myparam='M84'"><xsl:value-of select="$myparam"/> (pound per yard)</xsl:when>
      		<xsl:when test="$myparam='M85'"><xsl:value-of select="$myparam"/> (ton, assay)</xsl:when>
      		<xsl:when test="$myparam='M86'"><xsl:value-of select="$myparam"/> (pfund)</xsl:when>
      		<xsl:when test="$myparam='M87'"><xsl:value-of select="$myparam"/> (kilogram per second pascal)</xsl:when>
      		<xsl:when test="$myparam='M88'"><xsl:value-of select="$myparam"/> (tonne per month)</xsl:when>
      		<xsl:when test="$myparam='M89'"><xsl:value-of select="$myparam"/> (tonne per year)</xsl:when>
      		<xsl:when test="$myparam='M9'"><xsl:value-of select="$myparam"/> (million Btu per 1000 cubic foot)</xsl:when>
      		<xsl:when test="$myparam='M90'"><xsl:value-of select="$myparam"/> (kilopound per hour)</xsl:when>
      		<xsl:when test="$myparam='M91'"><xsl:value-of select="$myparam"/> (pound per pound)</xsl:when>
      		<xsl:when test="$myparam='M92'"><xsl:value-of select="$myparam"/> (pound-force foot)</xsl:when>
      		<xsl:when test="$myparam='M93'"><xsl:value-of select="$myparam"/> (newton metre per radian)</xsl:when>
      		<xsl:when test="$myparam='M94'"><xsl:value-of select="$myparam"/> (kilogram metre)</xsl:when>
      		<xsl:when test="$myparam='M95'"><xsl:value-of select="$myparam"/> (poundal foot)</xsl:when>
      		<xsl:when test="$myparam='M96'"><xsl:value-of select="$myparam"/> (poundal inch)</xsl:when>
      		<xsl:when test="$myparam='M97'"><xsl:value-of select="$myparam"/> (dyne metre)</xsl:when>
      		<xsl:when test="$myparam='M98'"><xsl:value-of select="$myparam"/> (kilogram centimetre per second)</xsl:when>
      		<xsl:when test="$myparam='M99'"><xsl:value-of select="$myparam"/> (gram centimetre per second)</xsl:when>
      		<xsl:when test="$myparam='MAH'"><xsl:value-of select="$myparam"/> (megavolt ampere reactive hour)</xsl:when>
      		<xsl:when test="$myparam='MAL'"><xsl:value-of select="$myparam"/> (megalitre)</xsl:when>
      		<xsl:when test="$myparam='MAM'"><xsl:value-of select="$myparam"/> (megametre)</xsl:when>
      		<xsl:when test="$myparam='MAR'"><xsl:value-of select="$myparam"/> (megavar)</xsl:when>
      		<xsl:when test="$myparam='MAW'"><xsl:value-of select="$myparam"/> (megawatt)</xsl:when>
      		<xsl:when test="$myparam='MBE'"><xsl:value-of select="$myparam"/> (thousand standard brick equivalent)</xsl:when>
      		<xsl:when test="$myparam='MBF'"><xsl:value-of select="$myparam"/> (thousand board foot)</xsl:when>
      		<xsl:when test="$myparam='MBR'"><xsl:value-of select="$myparam"/> (millibar)</xsl:when>
      		<xsl:when test="$myparam='MC'"><xsl:value-of select="$myparam"/> (microgram)</xsl:when>
      		<xsl:when test="$myparam='MCU'"><xsl:value-of select="$myparam"/> (millicurie)</xsl:when>
      		<xsl:when test="$myparam='MD'"><xsl:value-of select="$myparam"/> (air dry metric ton)</xsl:when>
      		<xsl:when test="$myparam='MGM'"><xsl:value-of select="$myparam"/> (milligram)</xsl:when>
      		<xsl:when test="$myparam='MHZ'"><xsl:value-of select="$myparam"/> (megahertz)</xsl:when>
      		<xsl:when test="$myparam='MIK'"><xsl:value-of select="$myparam"/> (square mile (statute mile))</xsl:when>
      		<xsl:when test="$myparam='MIL'"><xsl:value-of select="$myparam"/> (thousand)</xsl:when>
      		<xsl:when test="$myparam='MIN'"><xsl:value-of select="$myparam"/> (minute [unit of time])</xsl:when>
      		<xsl:when test="$myparam='MIO'"><xsl:value-of select="$myparam"/> (million)</xsl:when>
      		<xsl:when test="$myparam='MIU'"><xsl:value-of select="$myparam"/> (million international unit)</xsl:when>
      		<xsl:when test="$myparam='MLD'"><xsl:value-of select="$myparam"/> (milliard)</xsl:when>
      		<xsl:when test="$myparam='MLT'"><xsl:value-of select="$myparam"/> (millilitre)</xsl:when>
      		<xsl:when test="$myparam='MMK'"><xsl:value-of select="$myparam"/> (square millimetre)</xsl:when>
      		<xsl:when test="$myparam='MMQ'"><xsl:value-of select="$myparam"/> (cubic millimetre)</xsl:when>
      		<xsl:when test="$myparam='MMT'"><xsl:value-of select="$myparam"/> (millimetre)</xsl:when>
      		<xsl:when test="$myparam='MND'"><xsl:value-of select="$myparam"/> (kilogram, dry weight)</xsl:when>
      		<xsl:when test="$myparam='MON'"><xsl:value-of select="$myparam"/> (month)</xsl:when>
      		<xsl:when test="$myparam='MPA'"><xsl:value-of select="$myparam"/> (megapascal)</xsl:when>
      		<xsl:when test="$myparam='MQH'"><xsl:value-of select="$myparam"/> (cubic metre per hour)</xsl:when>
      		<xsl:when test="$myparam='MQS'"><xsl:value-of select="$myparam"/> (cubic metre per second)</xsl:when>
      		<xsl:when test="$myparam='MSK'"><xsl:value-of select="$myparam"/> (metre per second squared)</xsl:when>
      		<xsl:when test="$myparam='MTK'"><xsl:value-of select="$myparam"/> (square metre)</xsl:when>
      		<xsl:when test="$myparam='MTQ'"><xsl:value-of select="$myparam"/> (cubic metre)</xsl:when>
      		<xsl:when test="$myparam='MTR'"><xsl:value-of select="$myparam"/> (metre)</xsl:when>
      		<xsl:when test="$myparam='MTS'"><xsl:value-of select="$myparam"/> (metre per second)</xsl:when>
      		<xsl:when test="$myparam='MVA'"><xsl:value-of select="$myparam"/> (megavolt - ampere)</xsl:when>
      		<xsl:when test="$myparam='MWH'"><xsl:value-of select="$myparam"/> (megawatt hour (1000 kW.h))</xsl:when>
      		<xsl:when test="$myparam='N1'"><xsl:value-of select="$myparam"/> (pen calorie)</xsl:when>
      		<xsl:when test="$myparam='N10'"><xsl:value-of select="$myparam"/> (pound foot per second)</xsl:when>
      		<xsl:when test="$myparam='N11'"><xsl:value-of select="$myparam"/> (pound inch per second)</xsl:when>
      		<xsl:when test="$myparam='N12'"><xsl:value-of select="$myparam"/> (Pferdestaerke)</xsl:when>
      		<xsl:when test="$myparam='N13'"><xsl:value-of select="$myparam"/> (centimetre of mercury (0 ºC))</xsl:when>
      		<xsl:when test="$myparam='N14'"><xsl:value-of select="$myparam"/> (centimetre of water (4 ºC))</xsl:when>
      		<xsl:when test="$myparam='N15'"><xsl:value-of select="$myparam"/> (foot of water (39.2 ºF))</xsl:when>
      		<xsl:when test="$myparam='N16'"><xsl:value-of select="$myparam"/> (inch of mercury (32 ºF))</xsl:when>
      		<xsl:when test="$myparam='N17'"><xsl:value-of select="$myparam"/> (inch of mercury (60 ºF))</xsl:when>
      		<xsl:when test="$myparam='N18'"><xsl:value-of select="$myparam"/> (inch of water (39.2 ºF))</xsl:when>
      		<xsl:when test="$myparam='N19'"><xsl:value-of select="$myparam"/> (inch of water (60 ºF))</xsl:when>
      		<xsl:when test="$myparam='N20'"><xsl:value-of select="$myparam"/> (kip per square inch)</xsl:when>
      		<xsl:when test="$myparam='N21'"><xsl:value-of select="$myparam"/> (poundal per square foot)</xsl:when>
      		<xsl:when test="$myparam='N22'"><xsl:value-of select="$myparam"/> (ounce (avoirdupois) per square inch)</xsl:when>
      		<xsl:when test="$myparam='N23'"><xsl:value-of select="$myparam"/> (conventional metre of water)</xsl:when>
      		<xsl:when test="$myparam='N24'"><xsl:value-of select="$myparam"/> (gram per square millimetre)</xsl:when>
      		<xsl:when test="$myparam='N25'"><xsl:value-of select="$myparam"/> (pound per square yard)</xsl:when>
      		<xsl:when test="$myparam='N26'"><xsl:value-of select="$myparam"/> (poundal per square inch)</xsl:when>
      		<xsl:when test="$myparam='N27'"><xsl:value-of select="$myparam"/> (foot to the fourth power)</xsl:when>
      		<xsl:when test="$myparam='N28'"><xsl:value-of select="$myparam"/> (cubic decimetre per kilogram)</xsl:when>
      		<xsl:when test="$myparam='N29'"><xsl:value-of select="$myparam"/> (cubic foot per pound)</xsl:when>
      		<xsl:when test="$myparam='N3'"><xsl:value-of select="$myparam"/> (print point)</xsl:when>
      		<xsl:when test="$myparam='N30'"><xsl:value-of select="$myparam"/> (cubic inch per pound)</xsl:when>
      		<xsl:when test="$myparam='N31'"><xsl:value-of select="$myparam"/> (kilonewton per metre)</xsl:when>
      		<xsl:when test="$myparam='N32'"><xsl:value-of select="$myparam"/> (poundal per inch)</xsl:when>
      		<xsl:when test="$myparam='N33'"><xsl:value-of select="$myparam"/> (pound-force per yard)</xsl:when>
      		<xsl:when test="$myparam='N34'"><xsl:value-of select="$myparam"/> (poundal second per square foot)</xsl:when>
      		<xsl:when test="$myparam='N35'"><xsl:value-of select="$myparam"/> (poise per pascal)</xsl:when>
      		<xsl:when test="$myparam='N36'"><xsl:value-of select="$myparam"/> (newton second per square metre)</xsl:when>
      		<xsl:when test="$myparam='N37'"><xsl:value-of select="$myparam"/> (kilogram per metre second)</xsl:when>
      		<xsl:when test="$myparam='N38'"><xsl:value-of select="$myparam"/> (kilogram per metre minute)</xsl:when>
      		<xsl:when test="$myparam='N39'"><xsl:value-of select="$myparam"/> (kilogram per metre day)</xsl:when>
      		<xsl:when test="$myparam='N40'"><xsl:value-of select="$myparam"/> (kilogram per metre hour)</xsl:when>
      		<xsl:when test="$myparam='N41'"><xsl:value-of select="$myparam"/> (gram per centimetre second)</xsl:when>
      		<xsl:when test="$myparam='N42'"><xsl:value-of select="$myparam"/> (poundal second per square inch)</xsl:when>
      		<xsl:when test="$myparam='N43'"><xsl:value-of select="$myparam"/> (pound per foot minute)</xsl:when>
      		<xsl:when test="$myparam='N44'"><xsl:value-of select="$myparam"/> (pound per foot day)</xsl:when>
      		<xsl:when test="$myparam='N45'"><xsl:value-of select="$myparam"/> (cubic metre per second pascal)</xsl:when>
      		<xsl:when test="$myparam='N46'"><xsl:value-of select="$myparam"/> (foot poundal)</xsl:when>
      		<xsl:when test="$myparam='N47'"><xsl:value-of select="$myparam"/> (inch poundal)</xsl:when>
      		<xsl:when test="$myparam='N48'"><xsl:value-of select="$myparam"/> (watt per square centimetre)</xsl:when>
      		<xsl:when test="$myparam='N49'"><xsl:value-of select="$myparam"/> (watt per square inch)</xsl:when>
      		<xsl:when test="$myparam='N50'"><xsl:value-of select="$myparam"/> (British thermal unit (international table) per square foot hour)</xsl:when>
      		<xsl:when test="$myparam='N51'"><xsl:value-of select="$myparam"/> (British thermal unit (thermochemical) per square foot hour)</xsl:when>
      		<xsl:when test="$myparam='N52'"><xsl:value-of select="$myparam"/> (British thermal unit (thermochemical) per square foot minute)</xsl:when>
      		<xsl:when test="$myparam='N53'"><xsl:value-of select="$myparam"/> (British thermal unit (international table) per square foot second)</xsl:when>
      		<xsl:when test="$myparam='N54'"><xsl:value-of select="$myparam"/> (British thermal unit (thermochemical) per square foot second)</xsl:when>
      		<xsl:when test="$myparam='N55'"><xsl:value-of select="$myparam"/> (British thermal unit (international table) per square inch second)</xsl:when>
      		<xsl:when test="$myparam='N56'"><xsl:value-of select="$myparam"/> (calorie (thermochemical) per square centimetre minute)</xsl:when>
      		<xsl:when test="$myparam='N57'"><xsl:value-of select="$myparam"/> (calorie (thermochemical) per square centimetre second)</xsl:when>
      		<xsl:when test="$myparam='N58'"><xsl:value-of select="$myparam"/> (British thermal unit (international table) per cubic foot)</xsl:when>
      		<xsl:when test="$myparam='N59'"><xsl:value-of select="$myparam"/> (British thermal unit (thermochemical) per cubic foot)</xsl:when>
      		<xsl:when test="$myparam='N60'"><xsl:value-of select="$myparam"/> (British thermal unit (international table) per degree Fahrenheit)</xsl:when>
      		<xsl:when test="$myparam='N61'"><xsl:value-of select="$myparam"/> (British thermal unit (thermochemical) per degree Fahrenheit)</xsl:when>
      		<xsl:when test="$myparam='N62'"><xsl:value-of select="$myparam"/> (British thermal unit (international table) per degree Rankine)</xsl:when>
      		<xsl:when test="$myparam='N63'"><xsl:value-of select="$myparam"/> (British thermal unit (thermochemical) per degree Rankine)</xsl:when>
      		<xsl:when test="$myparam='N64'"><xsl:value-of select="$myparam"/> (British thermal unit (thermochemical) per pound degree Rankine)</xsl:when>
      		<xsl:when test="$myparam='N65'"><xsl:value-of select="$myparam"/> (kilocalorie (international table) per gram kelvin)</xsl:when>
      		<xsl:when test="$myparam='N66'"><xsl:value-of select="$myparam"/> (British thermal unit (39 ºF))</xsl:when>
      		<xsl:when test="$myparam='N67'"><xsl:value-of select="$myparam"/> (British thermal unit (59 ºF))</xsl:when>
      		<xsl:when test="$myparam='N68'"><xsl:value-of select="$myparam"/> (British thermal unit (60 ºF))</xsl:when>
      		<xsl:when test="$myparam='N69'"><xsl:value-of select="$myparam"/> (calorie (20 ºC))</xsl:when>
      		<xsl:when test="$myparam='N70'"><xsl:value-of select="$myparam"/> (quad (1015 BtuIT))</xsl:when>
      		<xsl:when test="$myparam='N71'"><xsl:value-of select="$myparam"/> (therm (EC))</xsl:when>
      		<xsl:when test="$myparam='N72'"><xsl:value-of select="$myparam"/> (therm (U.S.))</xsl:when>
      		<xsl:when test="$myparam='N73'"><xsl:value-of select="$myparam"/> (British thermal unit (thermochemical) per pound)</xsl:when>
      		<xsl:when test="$myparam='N74'"><xsl:value-of select="$myparam"/> (British thermal unit (international table) per hour square foot degree Fahrenheit)</xsl:when>
      		<xsl:when test="$myparam='N75'"><xsl:value-of select="$myparam"/> (British thermal unit (thermochemical) per hour square foot degree Fahrenheit)</xsl:when>
      		<xsl:when test="$myparam='N76'"><xsl:value-of select="$myparam"/> (British thermal unit (international table) per second square foot degree Fahrenheit)</xsl:when>
      		<xsl:when test="$myparam='N77'"><xsl:value-of select="$myparam"/> (British thermal unit (thermochemical) per second square foot degree Fahrenheit)</xsl:when>
      		<xsl:when test="$myparam='N78'"><xsl:value-of select="$myparam"/> (kilowatt per square metre kelvin)</xsl:when>
      		<xsl:when test="$myparam='N79'"><xsl:value-of select="$myparam"/> (kelvin per pascal)</xsl:when>
      		<xsl:when test="$myparam='N80'"><xsl:value-of select="$myparam"/> (watt per metre degree Celsius)</xsl:when>
      		<xsl:when test="$myparam='N81'"><xsl:value-of select="$myparam"/> (kilowatt per metre kelvin)</xsl:when>
      		<xsl:when test="$myparam='N82'"><xsl:value-of select="$myparam"/> (kilowatt per metre degree Celsius)</xsl:when>
      		<xsl:when test="$myparam='N83'"><xsl:value-of select="$myparam"/> (metre per degree Celcius metre)</xsl:when>
      		<xsl:when test="$myparam='N84'"><xsl:value-of select="$myparam"/> (degree Fahrenheit hour per British thermal unit (international table))</xsl:when>
      		<xsl:when test="$myparam='N85'"><xsl:value-of select="$myparam"/> (degree Fahrenheit hour per British thermal unit (thermochemical))</xsl:when>
      		<xsl:when test="$myparam='N86'"><xsl:value-of select="$myparam"/> (degree Fahrenheit second per British thermal unit (international table))</xsl:when>
      		<xsl:when test="$myparam='N87'"><xsl:value-of select="$myparam"/> (degree Fahrenheit second per British thermal unit (thermochemical))</xsl:when>
      		<xsl:when test="$myparam='N88'"><xsl:value-of select="$myparam"/> (degree Fahrenheit hour square foot per British thermal unit (international table) inch)</xsl:when>
      		<xsl:when test="$myparam='N89'"><xsl:value-of select="$myparam"/> (degree Fahrenheit hour square foot per British thermal unit (thermochemical) inch)</xsl:when>
      		<xsl:when test="$myparam='N90'"><xsl:value-of select="$myparam"/> (kilofarad)</xsl:when>
      		<xsl:when test="$myparam='N91'"><xsl:value-of select="$myparam"/> (reciprocal joule)</xsl:when>
      		<xsl:when test="$myparam='N92'"><xsl:value-of select="$myparam"/> (picosiemens)</xsl:when>
      		<xsl:when test="$myparam='N93'"><xsl:value-of select="$myparam"/> (ampere per pascal)</xsl:when>
      		<xsl:when test="$myparam='N94'"><xsl:value-of select="$myparam"/> (franklin)</xsl:when>
      		<xsl:when test="$myparam='N95'"><xsl:value-of select="$myparam"/> (ampere minute)</xsl:when>
      		<xsl:when test="$myparam='N96'"><xsl:value-of select="$myparam"/> (biot)</xsl:when>
      		<xsl:when test="$myparam='N97'"><xsl:value-of select="$myparam"/> (gilbert)</xsl:when>
      		<xsl:when test="$myparam='N98'"><xsl:value-of select="$myparam"/> (volt per pascal)</xsl:when>
      		<xsl:when test="$myparam='N99'"><xsl:value-of select="$myparam"/> (picovolt)</xsl:when>
      		<xsl:when test="$myparam='NA'"><xsl:value-of select="$myparam"/> (milligram per kilogram)</xsl:when>
      		<xsl:when test="$myparam='NAR'"><xsl:value-of select="$myparam"/> (number of articles)</xsl:when>
      		<xsl:when test="$myparam='NCL'"><xsl:value-of select="$myparam"/> (number of cells)</xsl:when>
      		<xsl:when test="$myparam='NEW'"><xsl:value-of select="$myparam"/> (newton)</xsl:when>
      		<xsl:when test="$myparam='NF'"><xsl:value-of select="$myparam"/> (message)</xsl:when>
      		<xsl:when test="$myparam='NIL'"><xsl:value-of select="$myparam"/> (nil)</xsl:when>
      		<xsl:when test="$myparam='NIU'"><xsl:value-of select="$myparam"/> (number of international units)</xsl:when>
      		<xsl:when test="$myparam='NL'"><xsl:value-of select="$myparam"/> (load)</xsl:when>
      		<xsl:when test="$myparam='NM3'"><xsl:value-of select="$myparam"/> (Normalised cubic metre)</xsl:when>
      		<xsl:when test="$myparam='NMI'"><xsl:value-of select="$myparam"/> (nautical mile)</xsl:when>
      		<xsl:when test="$myparam='NMP'"><xsl:value-of select="$myparam"/> (number of packs)</xsl:when>
      		<xsl:when test="$myparam='NPT'"><xsl:value-of select="$myparam"/> (number of parts)</xsl:when>
      		<xsl:when test="$myparam='NT'"><xsl:value-of select="$myparam"/> (net ton)</xsl:when>
      		<xsl:when test="$myparam='NU'"><xsl:value-of select="$myparam"/> (newton metre)</xsl:when>
      		<xsl:when test="$myparam='NX'"><xsl:value-of select="$myparam"/> (part per thousand)</xsl:when>
      		<xsl:when test="$myparam='OA'"><xsl:value-of select="$myparam"/> (panel)</xsl:when>
      		<xsl:when test="$myparam='ODE'"><xsl:value-of select="$myparam"/> (ozone depletion equivalent)</xsl:when>
      		<xsl:when test="$myparam='ODG'"><xsl:value-of select="$myparam"/> (ODS Grams)</xsl:when>
      		<xsl:when test="$myparam='ODK'"><xsl:value-of select="$myparam"/> (ODS Kilograms)</xsl:when>
      		<xsl:when test="$myparam='ODM'"><xsl:value-of select="$myparam"/> (ODS Milligrams)</xsl:when>
      		<xsl:when test="$myparam='OHM'"><xsl:value-of select="$myparam"/> (ohm)</xsl:when>
      		<xsl:when test="$myparam='ON'"><xsl:value-of select="$myparam"/> (ounce per square yard)</xsl:when>
      		<xsl:when test="$myparam='ONZ'"><xsl:value-of select="$myparam"/> (ounce (avoirdupois))</xsl:when>
      		<xsl:when test="$myparam='OPM'"><xsl:value-of select="$myparam"/> (oscillations per minute)</xsl:when>
      		<xsl:when test="$myparam='OT'"><xsl:value-of select="$myparam"/> (overtime hour)</xsl:when>
      		<xsl:when test="$myparam='OZA'"><xsl:value-of select="$myparam"/> (fluid ounce (US))</xsl:when>
      		<xsl:when test="$myparam='OZI'"><xsl:value-of select="$myparam"/> (fluid ounce (UK))</xsl:when>
      		<xsl:when test="$myparam='P1'"><xsl:value-of select="$myparam"/> (percent)</xsl:when>
      		<xsl:when test="$myparam='P10'"><xsl:value-of select="$myparam"/> (coulomb per metre)</xsl:when>
      		<xsl:when test="$myparam='P11'"><xsl:value-of select="$myparam"/> (kiloweber)</xsl:when>
      		<xsl:when test="$myparam='P12'"><xsl:value-of select="$myparam"/> (gamma)</xsl:when>
      		<xsl:when test="$myparam='P13'"><xsl:value-of select="$myparam"/> (kilotesla)</xsl:when>
      		<xsl:when test="$myparam='P14'"><xsl:value-of select="$myparam"/> (joule per second)</xsl:when>
      		<xsl:when test="$myparam='P15'"><xsl:value-of select="$myparam"/> (joule per minute)</xsl:when>
      		<xsl:when test="$myparam='P16'"><xsl:value-of select="$myparam"/> (joule per hour)</xsl:when>
      		<xsl:when test="$myparam='P17'"><xsl:value-of select="$myparam"/> (joule per day)</xsl:when>
      		<xsl:when test="$myparam='P18'"><xsl:value-of select="$myparam"/> (kilojoule per second)</xsl:when>
      		<xsl:when test="$myparam='P19'"><xsl:value-of select="$myparam"/> (kilojoule per minute)</xsl:when>
      		<xsl:when test="$myparam='P2'"><xsl:value-of select="$myparam"/> (pound per foot)</xsl:when>
      		<xsl:when test="$myparam='P20'"><xsl:value-of select="$myparam"/> (kilojoule per hour)</xsl:when>
      		<xsl:when test="$myparam='P21'"><xsl:value-of select="$myparam"/> (kilojoule per day)</xsl:when>
      		<xsl:when test="$myparam='P22'"><xsl:value-of select="$myparam"/> (nanoohm)</xsl:when>
      		<xsl:when test="$myparam='P23'"><xsl:value-of select="$myparam"/> (ohm circular-mil per foot)</xsl:when>
      		<xsl:when test="$myparam='P24'"><xsl:value-of select="$myparam"/> (kilohenry)</xsl:when>
      		<xsl:when test="$myparam='P25'"><xsl:value-of select="$myparam"/> (lumen per square foot)</xsl:when>
      		<xsl:when test="$myparam='P26'"><xsl:value-of select="$myparam"/> (phot)</xsl:when>
      		<xsl:when test="$myparam='P27'"><xsl:value-of select="$myparam"/> (footcandle)</xsl:when>
      		<xsl:when test="$myparam='P28'"><xsl:value-of select="$myparam"/> (candela per square inch)</xsl:when>
      		<xsl:when test="$myparam='P29'"><xsl:value-of select="$myparam"/> (footlambert)</xsl:when>
      		<xsl:when test="$myparam='P30'"><xsl:value-of select="$myparam"/> (lambert)</xsl:when>
      		<xsl:when test="$myparam='P31'"><xsl:value-of select="$myparam"/> (stilb)</xsl:when>
      		<xsl:when test="$myparam='P32'"><xsl:value-of select="$myparam"/> (candela per square foot)</xsl:when>
      		<xsl:when test="$myparam='P33'"><xsl:value-of select="$myparam"/> (kilocandela)</xsl:when>
      		<xsl:when test="$myparam='P34'"><xsl:value-of select="$myparam"/> (millicandela)</xsl:when>
      		<xsl:when test="$myparam='P35'"><xsl:value-of select="$myparam"/> (Hefner-Kerze)</xsl:when>
      		<xsl:when test="$myparam='P36'"><xsl:value-of select="$myparam"/> (international candle)</xsl:when>
      		<xsl:when test="$myparam='P37'"><xsl:value-of select="$myparam"/> (British thermal unit (international table) per square foot)</xsl:when>
      		<xsl:when test="$myparam='P38'"><xsl:value-of select="$myparam"/> (British thermal unit (thermochemical) per square foot)</xsl:when>
      		<xsl:when test="$myparam='P39'"><xsl:value-of select="$myparam"/> (calorie (thermochemical) per square centimetre)</xsl:when>
      		<xsl:when test="$myparam='P40'"><xsl:value-of select="$myparam"/> (langley)</xsl:when>
      		<xsl:when test="$myparam='P41'"><xsl:value-of select="$myparam"/> (decade (logarithmic))</xsl:when>
      		<xsl:when test="$myparam='P42'"><xsl:value-of select="$myparam"/> (pascal squared second)</xsl:when>
      		<xsl:when test="$myparam='P43'"><xsl:value-of select="$myparam"/> (bel per metre)</xsl:when>
      		<xsl:when test="$myparam='P44'"><xsl:value-of select="$myparam"/> (pound mole)</xsl:when>
      		<xsl:when test="$myparam='P45'"><xsl:value-of select="$myparam"/> (pound mole per second)</xsl:when>
      		<xsl:when test="$myparam='P46'"><xsl:value-of select="$myparam"/> (pound mole per minute)</xsl:when>
      		<xsl:when test="$myparam='P47'"><xsl:value-of select="$myparam"/> (kilomole per kilogram)</xsl:when>
      		<xsl:when test="$myparam='P48'"><xsl:value-of select="$myparam"/> (pound mole per pound)</xsl:when>
      		<xsl:when test="$myparam='P49'"><xsl:value-of select="$myparam"/> (newton square metre per ampere)</xsl:when>
      		<xsl:when test="$myparam='P5'"><xsl:value-of select="$myparam"/> (five pack)</xsl:when>
      		<xsl:when test="$myparam='P50'"><xsl:value-of select="$myparam"/> (weber metre)</xsl:when>
      		<xsl:when test="$myparam='P51'"><xsl:value-of select="$myparam"/> (mol per kilogram pascal)</xsl:when>
      		<xsl:when test="$myparam='P52'"><xsl:value-of select="$myparam"/> (mol per cubic metre pascal)</xsl:when>
      		<xsl:when test="$myparam='P53'"><xsl:value-of select="$myparam"/> (unit pole)</xsl:when>
      		<xsl:when test="$myparam='P54'"><xsl:value-of select="$myparam"/> (milligray per second)</xsl:when>
      		<xsl:when test="$myparam='P55'"><xsl:value-of select="$myparam"/> (microgray per second)</xsl:when>
      		<xsl:when test="$myparam='P56'"><xsl:value-of select="$myparam"/> (nanogray per second)</xsl:when>
      		<xsl:when test="$myparam='P57'"><xsl:value-of select="$myparam"/> (gray per minute)</xsl:when>
      		<xsl:when test="$myparam='P58'"><xsl:value-of select="$myparam"/> (milligray per minute)</xsl:when>
      		<xsl:when test="$myparam='P59'"><xsl:value-of select="$myparam"/> (microgray per minute)</xsl:when>
      		<xsl:when test="$myparam='P60'"><xsl:value-of select="$myparam"/> (nanogray per minute)</xsl:when>
      		<xsl:when test="$myparam='P61'"><xsl:value-of select="$myparam"/> (gray per hour)</xsl:when>
      		<xsl:when test="$myparam='P62'"><xsl:value-of select="$myparam"/> (milligray per hour)</xsl:when>
      		<xsl:when test="$myparam='P63'"><xsl:value-of select="$myparam"/> (microgray per hour)</xsl:when>
      		<xsl:when test="$myparam='P64'"><xsl:value-of select="$myparam"/> (nanogray per hour)</xsl:when>
      		<xsl:when test="$myparam='P65'"><xsl:value-of select="$myparam"/> (sievert per second)</xsl:when>
      		<xsl:when test="$myparam='P66'"><xsl:value-of select="$myparam"/> (millisievert per second)</xsl:when>
      		<xsl:when test="$myparam='P67'"><xsl:value-of select="$myparam"/> (microsievert per second)</xsl:when>
      		<xsl:when test="$myparam='P68'"><xsl:value-of select="$myparam"/> (nanosievert per second)</xsl:when>
      		<xsl:when test="$myparam='P69'"><xsl:value-of select="$myparam"/> (rem per second)</xsl:when>
      		<xsl:when test="$myparam='P70'"><xsl:value-of select="$myparam"/> (sievert per hour)</xsl:when>
      		<xsl:when test="$myparam='P71'"><xsl:value-of select="$myparam"/> (millisievert per hour)</xsl:when>
      		<xsl:when test="$myparam='P72'"><xsl:value-of select="$myparam"/> (microsievert per hour)</xsl:when>
      		<xsl:when test="$myparam='P73'"><xsl:value-of select="$myparam"/> (nanosievert per hour)</xsl:when>
      		<xsl:when test="$myparam='P74'"><xsl:value-of select="$myparam"/> (sievert per minute)</xsl:when>
      		<xsl:when test="$myparam='P75'"><xsl:value-of select="$myparam"/> (millisievert per minute)</xsl:when>
      		<xsl:when test="$myparam='P76'"><xsl:value-of select="$myparam"/> (microsievert per minute)</xsl:when>
      		<xsl:when test="$myparam='P77'"><xsl:value-of select="$myparam"/> (nanosievert per minute)</xsl:when>
      		<xsl:when test="$myparam='P78'"><xsl:value-of select="$myparam"/> (reciprocal square inch)</xsl:when>
      		<xsl:when test="$myparam='P79'"><xsl:value-of select="$myparam"/> (pascal square metre per kilogram)</xsl:when>
      		<xsl:when test="$myparam='P80'"><xsl:value-of select="$myparam"/> (millipascal per metre)</xsl:when>
      		<xsl:when test="$myparam='P81'"><xsl:value-of select="$myparam"/> (kilopascal per metre)</xsl:when>
      		<xsl:when test="$myparam='P82'"><xsl:value-of select="$myparam"/> (hectopascal per metre)</xsl:when>
      		<xsl:when test="$myparam='P83'"><xsl:value-of select="$myparam"/> (standard atmosphere per metre)</xsl:when>
      		<xsl:when test="$myparam='P84'"><xsl:value-of select="$myparam"/> (technical atmosphere per metre)</xsl:when>
      		<xsl:when test="$myparam='P85'"><xsl:value-of select="$myparam"/> (torr per metre)</xsl:when>
      		<xsl:when test="$myparam='P86'"><xsl:value-of select="$myparam"/> (psi per inch)</xsl:when>
      		<xsl:when test="$myparam='P87'"><xsl:value-of select="$myparam"/> (cubic metre per second square metre)</xsl:when>
      		<xsl:when test="$myparam='P88'"><xsl:value-of select="$myparam"/> (rhe)</xsl:when>
      		<xsl:when test="$myparam='P89'"><xsl:value-of select="$myparam"/> (pound-force foot per inch)</xsl:when>
      		<xsl:when test="$myparam='P90'"><xsl:value-of select="$myparam"/> (pound-force inch per inch)</xsl:when>
      		<xsl:when test="$myparam='P91'"><xsl:value-of select="$myparam"/> (perm (0 ºC))</xsl:when>
      		<xsl:when test="$myparam='P92'"><xsl:value-of select="$myparam"/> (perm (23 ºC))</xsl:when>
      		<xsl:when test="$myparam='P93'"><xsl:value-of select="$myparam"/> (byte per second)</xsl:when>
      		<xsl:when test="$myparam='P94'"><xsl:value-of select="$myparam"/> (kilobyte per second)</xsl:when>
      		<xsl:when test="$myparam='P95'"><xsl:value-of select="$myparam"/> (megabyte per second)</xsl:when>
      		<xsl:when test="$myparam='P96'"><xsl:value-of select="$myparam"/> (reciprocal volt)</xsl:when>
      		<xsl:when test="$myparam='P97'"><xsl:value-of select="$myparam"/> (reciprocal radian)</xsl:when>
      		<xsl:when test="$myparam='P98'"><xsl:value-of select="$myparam"/> (pascal to the power sum of stoichiometric numbers)</xsl:when>
      		<xsl:when test="$myparam='P99'"><xsl:value-of select="$myparam"/> (mole per cubiv metre to the power sum of stoichiometric numbers)</xsl:when>
      		<xsl:when test="$myparam='PAL'"><xsl:value-of select="$myparam"/> (pascal)</xsl:when>
      		<xsl:when test="$myparam='PD'"><xsl:value-of select="$myparam"/> (pad)</xsl:when>
      		<xsl:when test="$myparam='PFL'"><xsl:value-of select="$myparam"/> (proof litre)</xsl:when>
      		<xsl:when test="$myparam='PGL'"><xsl:value-of select="$myparam"/> (proof gallon)</xsl:when>
      		<xsl:when test="$myparam='PI'"><xsl:value-of select="$myparam"/> (pitch)</xsl:when>
      		<xsl:when test="$myparam='PLA'"><xsl:value-of select="$myparam"/> (degree Plato)</xsl:when>
      		<xsl:when test="$myparam='PO'"><xsl:value-of select="$myparam"/> (pound per inch of length)</xsl:when>
      		<xsl:when test="$myparam='PQ'"><xsl:value-of select="$myparam"/> (page per inch)</xsl:when>
      		<xsl:when test="$myparam='PR'"><xsl:value-of select="$myparam"/> (pair)</xsl:when>
      		<xsl:when test="$myparam='PS'"><xsl:value-of select="$myparam"/> (pound-force per square inch)</xsl:when>
      		<xsl:when test="$myparam='PTD'"><xsl:value-of select="$myparam"/> (dry pint (US))</xsl:when>
      		<xsl:when test="$myparam='PTI'"><xsl:value-of select="$myparam"/> (pint (UK))</xsl:when>
      		<xsl:when test="$myparam='PTL'"><xsl:value-of select="$myparam"/> (liquid pint (US))</xsl:when>
      		<xsl:when test="$myparam='PTN'"><xsl:value-of select="$myparam"/> (portion)</xsl:when>
      		<xsl:when test="$myparam='Q10'"><xsl:value-of select="$myparam"/> (joule per tesla)</xsl:when>
      		<xsl:when test="$myparam='Q11'"><xsl:value-of select="$myparam"/> (erlang)</xsl:when>
      		<xsl:when test="$myparam='Q12'"><xsl:value-of select="$myparam"/> (octet)</xsl:when>
      		<xsl:when test="$myparam='Q13'"><xsl:value-of select="$myparam"/> (octet per second)</xsl:when>
      		<xsl:when test="$myparam='Q14'"><xsl:value-of select="$myparam"/> (shannon)</xsl:when>
      		<xsl:when test="$myparam='Q15'"><xsl:value-of select="$myparam"/> (hartley)</xsl:when>
      		<xsl:when test="$myparam='Q16'"><xsl:value-of select="$myparam"/> (natural unit of information)</xsl:when>
      		<xsl:when test="$myparam='Q17'"><xsl:value-of select="$myparam"/> (shannon per second)</xsl:when>
      		<xsl:when test="$myparam='Q18'"><xsl:value-of select="$myparam"/> (hartley per second)</xsl:when>
      		<xsl:when test="$myparam='Q19'"><xsl:value-of select="$myparam"/> (natural unit of information per second)</xsl:when>
      		<xsl:when test="$myparam='Q20'"><xsl:value-of select="$myparam"/> (second per kilogramm)</xsl:when>
      		<xsl:when test="$myparam='Q21'"><xsl:value-of select="$myparam"/> (watt square metre)</xsl:when>
      		<xsl:when test="$myparam='Q22'"><xsl:value-of select="$myparam"/> (second per radian cubic metre)</xsl:when>
      		<xsl:when test="$myparam='Q23'"><xsl:value-of select="$myparam"/> (weber to the power minus one)</xsl:when>
      		<xsl:when test="$myparam='Q24'"><xsl:value-of select="$myparam"/> (reciprocal inch)</xsl:when>
      		<xsl:when test="$myparam='Q25'"><xsl:value-of select="$myparam"/> (dioptre)</xsl:when>
      		<xsl:when test="$myparam='Q26'"><xsl:value-of select="$myparam"/> (one per one)</xsl:when>
      		<xsl:when test="$myparam='Q27'"><xsl:value-of select="$myparam"/> (newton metre per metre)</xsl:when>
      		<xsl:when test="$myparam='Q28'"><xsl:value-of select="$myparam"/> (kilogram per square metre pascal second)</xsl:when>
      		<xsl:when test="$myparam='Q29'"><xsl:value-of select="$myparam"/> (microgram per hectogram)</xsl:when>
      		<xsl:when test="$myparam='Q30'"><xsl:value-of select="$myparam"/> (pH (potential of Hydrogen))</xsl:when>
      		<xsl:when test="$myparam='Q31'"><xsl:value-of select="$myparam"/> (kilojoule per gram)</xsl:when>
      		<xsl:when test="$myparam='Q32'"><xsl:value-of select="$myparam"/> (femtolitre)</xsl:when>
      		<xsl:when test="$myparam='Q33'"><xsl:value-of select="$myparam"/> (picolitre)</xsl:when>
      		<xsl:when test="$myparam='Q34'"><xsl:value-of select="$myparam"/> (nanolitre)</xsl:when>
      		<xsl:when test="$myparam='Q35'"><xsl:value-of select="$myparam"/> (megawatts per minute)</xsl:when>
      		<xsl:when test="$myparam='Q36'"><xsl:value-of select="$myparam"/> (square metre per cubic metre)</xsl:when>
      		<xsl:when test="$myparam='Q37'"><xsl:value-of select="$myparam"/> (Standard cubic metre per day)</xsl:when>
      		<xsl:when test="$myparam='Q38'"><xsl:value-of select="$myparam"/> (Standard cubic metre per hour)</xsl:when>
      		<xsl:when test="$myparam='Q39'"><xsl:value-of select="$myparam"/> (Normalized cubic metre per day)</xsl:when>
      		<xsl:when test="$myparam='Q40'"><xsl:value-of select="$myparam"/> (Normalized cubic metre per hour)</xsl:when>
      		<xsl:when test="$myparam='Q41'"><xsl:value-of select="$myparam"/> (Joule per normalised cubic metre)</xsl:when>
      		<xsl:when test="$myparam='Q42'"><xsl:value-of select="$myparam"/> (Joule per standard cubic metre)</xsl:when>
      		<xsl:when test="$myparam='Q3'"><xsl:value-of select="$myparam"/> (meal)</xsl:when>
      		<xsl:when test="$myparam='QA'"><xsl:value-of select="$myparam"/> (page - facsimile)</xsl:when>
      		<xsl:when test="$myparam='QAN'"><xsl:value-of select="$myparam"/> (quarter (of a year))</xsl:when>
      		<xsl:when test="$myparam='QB'"><xsl:value-of select="$myparam"/> (page - hardcopy)</xsl:when>
      		<xsl:when test="$myparam='QR'"><xsl:value-of select="$myparam"/> (quire)</xsl:when>
      		<xsl:when test="$myparam='QTD'"><xsl:value-of select="$myparam"/> (dry quart (US))</xsl:when>
      		<xsl:when test="$myparam='QTI'"><xsl:value-of select="$myparam"/> (quart (UK))</xsl:when>
      		<xsl:when test="$myparam='QTL'"><xsl:value-of select="$myparam"/> (liquid quart (US))</xsl:when>
      		<xsl:when test="$myparam='QTR'"><xsl:value-of select="$myparam"/> (quarter (UK))</xsl:when>
      		<xsl:when test="$myparam='R1'"><xsl:value-of select="$myparam"/> (pica)</xsl:when>
      		<xsl:when test="$myparam='R9'"><xsl:value-of select="$myparam"/> (thousand cubic metre)</xsl:when>
      		<xsl:when test="$myparam='RH'"><xsl:value-of select="$myparam"/> (running or operating hour)</xsl:when>
      		<xsl:when test="$myparam='RM'"><xsl:value-of select="$myparam"/> (ream)</xsl:when>
      		<xsl:when test="$myparam='ROM'"><xsl:value-of select="$myparam"/> (room)</xsl:when>
      		<xsl:when test="$myparam='RP'"><xsl:value-of select="$myparam"/> (pound per ream)</xsl:when>
      		<xsl:when test="$myparam='RPM'"><xsl:value-of select="$myparam"/> (revolutions per minute)</xsl:when>
      		<xsl:when test="$myparam='RPS'"><xsl:value-of select="$myparam"/> (revolutions per second)</xsl:when>
      		<xsl:when test="$myparam='RT'"><xsl:value-of select="$myparam"/> (revenue ton mile)</xsl:when>
      		<xsl:when test="$myparam='S3'"><xsl:value-of select="$myparam"/> (square foot per second)</xsl:when>
      		<xsl:when test="$myparam='S4'"><xsl:value-of select="$myparam"/> (square metre per second)</xsl:when>
      		<xsl:when test="$myparam='SAN'"><xsl:value-of select="$myparam"/> (half year (6 months))</xsl:when>
      		<xsl:when test="$myparam='SCO'"><xsl:value-of select="$myparam"/> (score)</xsl:when>
      		<xsl:when test="$myparam='SCR'"><xsl:value-of select="$myparam"/> (scruple)</xsl:when>
      		<xsl:when test="$myparam='SEC'"><xsl:value-of select="$myparam"/> (second [unit of time])</xsl:when>
      		<xsl:when test="$myparam='SET'"><xsl:value-of select="$myparam"/> (set)</xsl:when>
      		<xsl:when test="$myparam='SG'"><xsl:value-of select="$myparam"/> (segment)</xsl:when>
      		<xsl:when test="$myparam='SIE'"><xsl:value-of select="$myparam"/> (siemens)</xsl:when>
      		<xsl:when test="$myparam='SM3'"><xsl:value-of select="$myparam"/> (Standard cubic metre)</xsl:when>
      		<xsl:when test="$myparam='SMI'"><xsl:value-of select="$myparam"/> (mile (statute mile))</xsl:when>
      		<xsl:when test="$myparam='SQ'"><xsl:value-of select="$myparam"/> (square)</xsl:when>
      		<xsl:when test="$myparam='SQR'"><xsl:value-of select="$myparam"/> (square, roofing)</xsl:when>
      		<xsl:when test="$myparam='SR'"><xsl:value-of select="$myparam"/> (strip)</xsl:when>
      		<xsl:when test="$myparam='STC'"><xsl:value-of select="$myparam"/> (stick)</xsl:when>
      		<xsl:when test="$myparam='STI'"><xsl:value-of select="$myparam"/> (stone (UK))</xsl:when>
      		<xsl:when test="$myparam='STK'"><xsl:value-of select="$myparam"/> (stick, cigarette)</xsl:when>
      		<xsl:when test="$myparam='STL'"><xsl:value-of select="$myparam"/> (standard litre)</xsl:when>
      		<xsl:when test="$myparam='STN'"><xsl:value-of select="$myparam"/> (ton (US) or short ton (UK/US))</xsl:when>
      		<xsl:when test="$myparam='STW'"><xsl:value-of select="$myparam"/> (straw)</xsl:when>
      		<xsl:when test="$myparam='SW'"><xsl:value-of select="$myparam"/> (skein)</xsl:when>
      		<xsl:when test="$myparam='SX'"><xsl:value-of select="$myparam"/> (shipment)</xsl:when>
      		<xsl:when test="$myparam='SYR'"><xsl:value-of select="$myparam"/> (syringe)</xsl:when>
      		<xsl:when test="$myparam='T0'"><xsl:value-of select="$myparam"/> (telecommunication line in service)</xsl:when>
      		<xsl:when test="$myparam='T3'"><xsl:value-of select="$myparam"/> (thousand piece)</xsl:when>
      		<xsl:when test="$myparam='TAH'"><xsl:value-of select="$myparam"/> (kiloampere hour (thousand ampere hour))</xsl:when>
      		<xsl:when test="$myparam='TAN'"><xsl:value-of select="$myparam"/> (total acid number)</xsl:when>
      		<xsl:when test="$myparam='TI'"><xsl:value-of select="$myparam"/> (thousand square inch)</xsl:when>
      		<xsl:when test="$myparam='TIC'"><xsl:value-of select="$myparam"/> (metric ton, including container)</xsl:when>
      		<xsl:when test="$myparam='TIP'"><xsl:value-of select="$myparam"/> (metric ton, including inner packaging)</xsl:when>
      		<xsl:when test="$myparam='TKM'"><xsl:value-of select="$myparam"/> (tonne kilometre)</xsl:when>
      		<xsl:when test="$myparam='TMS'"><xsl:value-of select="$myparam"/> (kilogram of imported meat, less offal)</xsl:when>
      		<xsl:when test="$myparam='TNE'"><xsl:value-of select="$myparam"/> (tonne (metric ton))</xsl:when>
      		<xsl:when test="$myparam='TP'"><xsl:value-of select="$myparam"/> (ten pack)</xsl:when>
      		<xsl:when test="$myparam='TPI'"><xsl:value-of select="$myparam"/> (teeth per inch)</xsl:when>
      		<xsl:when test="$myparam='TPR'"><xsl:value-of select="$myparam"/> (ten pair)</xsl:when>
      		<xsl:when test="$myparam='TQD'"><xsl:value-of select="$myparam"/> (thousand cubic metre per day)</xsl:when>
      		<xsl:when test="$myparam='TRL'"><xsl:value-of select="$myparam"/> (trillion (EUR))</xsl:when>
      		<xsl:when test="$myparam='TST'"><xsl:value-of select="$myparam"/> (ten set)</xsl:when>
      		<xsl:when test="$myparam='TTS'"><xsl:value-of select="$myparam"/> (ten thousand sticks)</xsl:when>
      		<xsl:when test="$myparam='U1'"><xsl:value-of select="$myparam"/> (treatment)</xsl:when>
      		<xsl:when test="$myparam='U2'"><xsl:value-of select="$myparam"/> (tablet)</xsl:when>
      		<xsl:when test="$myparam='UB'"><xsl:value-of select="$myparam"/> (telecommunication line in service average)</xsl:when>
      		<xsl:when test="$myparam='UC'"><xsl:value-of select="$myparam"/> (telecommunication port)</xsl:when>
      		<xsl:when test="$myparam='VA'"><xsl:value-of select="$myparam"/> (volt - ampere per kilogram)</xsl:when>
      		<xsl:when test="$myparam='VLT'"><xsl:value-of select="$myparam"/> (volt)</xsl:when>
      		<xsl:when test="$myparam='VP'"><xsl:value-of select="$myparam"/> (percent volume)</xsl:when>
      		<xsl:when test="$myparam='W2'"><xsl:value-of select="$myparam"/> (wet kilo)</xsl:when>
      		<xsl:when test="$myparam='WA'"><xsl:value-of select="$myparam"/> (watt per kilogram)</xsl:when>
      		<xsl:when test="$myparam='WB'"><xsl:value-of select="$myparam"/> (wet pound)</xsl:when>
      		<xsl:when test="$myparam='WCD'"><xsl:value-of select="$myparam"/> (cord)</xsl:when>
      		<xsl:when test="$myparam='WE'"><xsl:value-of select="$myparam"/> (wet ton)</xsl:when>
      		<xsl:when test="$myparam='WEB'"><xsl:value-of select="$myparam"/> (weber)</xsl:when>
      		<xsl:when test="$myparam='WEE'"><xsl:value-of select="$myparam"/> (week)</xsl:when>
      		<xsl:when test="$myparam='WG'"><xsl:value-of select="$myparam"/> (wine gallon)</xsl:when>
      		<xsl:when test="$myparam='WHR'"><xsl:value-of select="$myparam"/> (watt hour)</xsl:when>
      		<xsl:when test="$myparam='WM'"><xsl:value-of select="$myparam"/> (working month)</xsl:when>
      		<xsl:when test="$myparam='WSD'"><xsl:value-of select="$myparam"/> (standard)</xsl:when>
      		<xsl:when test="$myparam='WTT'"><xsl:value-of select="$myparam"/> (watt)</xsl:when>
      		<xsl:when test="$myparam='X1'"><xsl:value-of select="$myparam"/> (Gunter's chain)</xsl:when>
      		<xsl:when test="$myparam='YDK'"><xsl:value-of select="$myparam"/> (square yard)</xsl:when>
      		<xsl:when test="$myparam='YDQ'"><xsl:value-of select="$myparam"/> (cubic yard)</xsl:when>
      		<xsl:when test="$myparam='YRD'"><xsl:value-of select="$myparam"/> (yard)</xsl:when>
      		<xsl:when test="$myparam='Z11'"><xsl:value-of select="$myparam"/> (hanging container)</xsl:when>
      		<xsl:when test="$myparam='ZP'"><xsl:value-of select="$myparam"/> (page)</xsl:when>
      		<xsl:when test="$myparam='ZZ'"><xsl:value-of select="$myparam"/> (mutually defined)</xsl:when>
   			<xsl:otherwise><xsl:value-of select="$myparam"/></xsl:otherwise>
		</xsl:choose>
	</xsl:template>

</xsl:stylesheet>