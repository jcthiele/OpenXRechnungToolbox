<?xml version="1.0"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template name="code.untdid.1001">
		<xsl:param name="myparam"/>
		<xsl:choose>
      		<xsl:when test="$myparam='1'"><xsl:value-of select="$myparam"/> (Certificate of analysis)</xsl:when>
      		<xsl:when test="$myparam='2'"><xsl:value-of select="$myparam"/> (Certificate of conformity)</xsl:when>
      		<xsl:when test="$myparam='3'"><xsl:value-of select="$myparam"/> (Certificate of quality)</xsl:when>
      		<xsl:when test="$myparam='4'"><xsl:value-of select="$myparam"/> (Test report)</xsl:when>
      		<xsl:when test="$myparam='5'"><xsl:value-of select="$myparam"/> (Product performance report)</xsl:when>
      		<xsl:when test="$myparam='6'"><xsl:value-of select="$myparam"/> (Product specification report)</xsl:when>
      		<xsl:when test="$myparam='7'"><xsl:value-of select="$myparam"/> (Process data report)</xsl:when>
      		<xsl:when test="$myparam='8'"><xsl:value-of select="$myparam"/> (First sample test report)</xsl:when>
      		<xsl:when test="$myparam='9'"><xsl:value-of select="$myparam"/> (Price/sales catalogue)</xsl:when>
      		<xsl:when test="$myparam='10'"><xsl:value-of select="$myparam"/> (Party information)</xsl:when>
      		<xsl:when test="$myparam='11'"><xsl:value-of select="$myparam"/> (Federal label approval)</xsl:when>
      		<xsl:when test="$myparam='12'"><xsl:value-of select="$myparam"/> (Mill certificate)</xsl:when>
      		<xsl:when test="$myparam='13'"><xsl:value-of select="$myparam"/> (Post receipt)</xsl:when>
      		<xsl:when test="$myparam='14'"><xsl:value-of select="$myparam"/> (Weight certificate)</xsl:when>
      		<xsl:when test="$myparam='15'"><xsl:value-of select="$myparam"/> (Weight list)</xsl:when>
      		<xsl:when test="$myparam='16'"><xsl:value-of select="$myparam"/> (Certificate)</xsl:when>
      		<xsl:when test="$myparam='17'"><xsl:value-of select="$myparam"/> (Combined certificate of value and origin)</xsl:when>
      		<xsl:when test="$myparam='18'"><xsl:value-of select="$myparam"/> (Movement certificate A.TR.1)</xsl:when>
      		<xsl:when test="$myparam='19'"><xsl:value-of select="$myparam"/> (Certificate of quantity)</xsl:when>
      		<xsl:when test="$myparam='20'"><xsl:value-of select="$myparam"/> (Quality data message)</xsl:when>
      		<xsl:when test="$myparam='21'"><xsl:value-of select="$myparam"/> (Query)</xsl:when>
      		<xsl:when test="$myparam='22'"><xsl:value-of select="$myparam"/> (Response to query)</xsl:when>
      		<xsl:when test="$myparam='23'"><xsl:value-of select="$myparam"/> (Status information)</xsl:when>
      		<xsl:when test="$myparam='24'"><xsl:value-of select="$myparam"/> (Restow)</xsl:when>
      		<xsl:when test="$myparam='25'"><xsl:value-of select="$myparam"/> (Container discharge list)</xsl:when>
      		<xsl:when test="$myparam='26'"><xsl:value-of select="$myparam"/> (Corporate superannuation contributions advice)</xsl:when>
      		<xsl:when test="$myparam='27'"><xsl:value-of select="$myparam"/> (Industry superannuation contributions advice)</xsl:when>
      		<xsl:when test="$myparam='28'"><xsl:value-of select="$myparam"/> (Corporate superannuation member maintenance message)</xsl:when>
      		<xsl:when test="$myparam='29'"><xsl:value-of select="$myparam"/> (Industry superannuation member maintenance message)</xsl:when>
      		<xsl:when test="$myparam='30'"><xsl:value-of select="$myparam"/> (Life insurance payroll deductions advice)</xsl:when>
      		<xsl:when test="$myparam='31'"><xsl:value-of select="$myparam"/> (Underbond request)</xsl:when>
      		<xsl:when test="$myparam='32'"><xsl:value-of select="$myparam"/> (Underbond approval)</xsl:when>
      		<xsl:when test="$myparam='33'"><xsl:value-of select="$myparam"/> (Certificate of sealing of export meat lockers)</xsl:when>
      		<xsl:when test="$myparam='34'"><xsl:value-of select="$myparam"/> (Cargo status)</xsl:when>
      		<xsl:when test="$myparam='35'"><xsl:value-of select="$myparam"/> (Inventory report)</xsl:when>
      		<xsl:when test="$myparam='36'"><xsl:value-of select="$myparam"/> (Identity card)</xsl:when>
      		<xsl:when test="$myparam='37'"><xsl:value-of select="$myparam"/> (Response to a trade statistics message)</xsl:when>
      		<xsl:when test="$myparam='38'"><xsl:value-of select="$myparam"/> (Vaccination certificate)</xsl:when>
      		<xsl:when test="$myparam='39'"><xsl:value-of select="$myparam"/> (Passport)</xsl:when>
      		<xsl:when test="$myparam='40'"><xsl:value-of select="$myparam"/> (Driving licence (national))</xsl:when>
      		<xsl:when test="$myparam='41'"><xsl:value-of select="$myparam"/> (Driving licence (international))</xsl:when>
      		<xsl:when test="$myparam='42'"><xsl:value-of select="$myparam"/> (Free pass)</xsl:when>
      		<xsl:when test="$myparam='43'"><xsl:value-of select="$myparam"/> (Season ticket)</xsl:when>
      		<xsl:when test="$myparam='44'"><xsl:value-of select="$myparam"/> (Transport status report)</xsl:when>
      		<xsl:when test="$myparam='45'"><xsl:value-of select="$myparam"/> (Transport status request)</xsl:when>
      		<xsl:when test="$myparam='46'"><xsl:value-of select="$myparam"/> (Banking status)</xsl:when>
      		<xsl:when test="$myparam='47'"><xsl:value-of select="$myparam"/> (Extra-Community trade statistical declaration)</xsl:when>
      		<xsl:when test="$myparam='48'"><xsl:value-of select="$myparam"/> (Written instructions in conformance with ADR article number 10385)</xsl:when>
      		<xsl:when test="$myparam='49'"><xsl:value-of select="$myparam"/> (Damage certification)</xsl:when>
      		<xsl:when test="$myparam='50'"><xsl:value-of select="$myparam"/> (Validated priced tender)</xsl:when>
      		<xsl:when test="$myparam='51'"><xsl:value-of select="$myparam"/> (Price/sales catalogue response)</xsl:when>
      		<xsl:when test="$myparam='52'"><xsl:value-of select="$myparam"/> (Price negotiation result)</xsl:when>
      		<xsl:when test="$myparam='53'"><xsl:value-of select="$myparam"/> (Safety and hazard data sheet)</xsl:when>
      		<xsl:when test="$myparam='54'"><xsl:value-of select="$myparam"/> (Legal statement of an account)</xsl:when>
      		<xsl:when test="$myparam='55'"><xsl:value-of select="$myparam"/> (Listing statement of an account)</xsl:when>
      		<xsl:when test="$myparam='56'"><xsl:value-of select="$myparam"/> (Closing statement of an account)</xsl:when>
      		<xsl:when test="$myparam='57'"><xsl:value-of select="$myparam"/> (Transport equipment on-hire report)</xsl:when>
      		<xsl:when test="$myparam='58'"><xsl:value-of select="$myparam"/> (Transport equipment off-hire report)</xsl:when>
      		<xsl:when test="$myparam='59'"><xsl:value-of select="$myparam"/> (Treatment - nil outturn)</xsl:when>
      		<xsl:when test="$myparam='60'"><xsl:value-of select="$myparam"/> (Treatment - time-up underbond)</xsl:when>
      		<xsl:when test="$myparam='61'"><xsl:value-of select="$myparam"/> (Treatment - underbond by sea)</xsl:when>
      		<xsl:when test="$myparam='62'"><xsl:value-of select="$myparam"/> (Treatment - personal effect)</xsl:when>
      		<xsl:when test="$myparam='63'"><xsl:value-of select="$myparam"/> (Treatment - timber)</xsl:when>
      		<xsl:when test="$myparam='64'"><xsl:value-of select="$myparam"/> (Preliminary credit assessment)</xsl:when>
      		<xsl:when test="$myparam='65'"><xsl:value-of select="$myparam"/> (Credit cover)</xsl:when>
      		<xsl:when test="$myparam='66'"><xsl:value-of select="$myparam"/> (Current account)</xsl:when>
      		<xsl:when test="$myparam='67'"><xsl:value-of select="$myparam"/> (Commercial dispute)</xsl:when>
      		<xsl:when test="$myparam='68'"><xsl:value-of select="$myparam"/> (Chargeback)</xsl:when>
      		<xsl:when test="$myparam='69'"><xsl:value-of select="$myparam"/> (Reassignment)</xsl:when>
      		<xsl:when test="$myparam='70'"><xsl:value-of select="$myparam"/> (Collateral account)</xsl:when>
      		<xsl:when test="$myparam='71'"><xsl:value-of select="$myparam"/> (Request for payment)</xsl:when>
      		<xsl:when test="$myparam='72'"><xsl:value-of select="$myparam"/> (Unship permit)</xsl:when>
      		<xsl:when test="$myparam='73'"><xsl:value-of select="$myparam"/> (Statistical definitions)</xsl:when>
      		<xsl:when test="$myparam='74'"><xsl:value-of select="$myparam"/> (Statistical data)</xsl:when>
      		<xsl:when test="$myparam='75'"><xsl:value-of select="$myparam"/> (Request for statistical data)</xsl:when>
      		<xsl:when test="$myparam='76'"><xsl:value-of select="$myparam"/> (Call-off delivery)</xsl:when>
      		<xsl:when test="$myparam='77'"><xsl:value-of select="$myparam"/> (Consignment status report)</xsl:when>
      		<xsl:when test="$myparam='78'"><xsl:value-of select="$myparam"/> (Inventory movement advice)</xsl:when>
      		<xsl:when test="$myparam='79'"><xsl:value-of select="$myparam"/> (Inventory status advice)</xsl:when>
      		<xsl:when test="$myparam='80'"><xsl:value-of select="$myparam"/> (Debit note related to goods or services)</xsl:when>
      		<xsl:when test="$myparam='81'"><xsl:value-of select="$myparam"/> (Credit note related to goods or services)</xsl:when>
      		<xsl:when test="$myparam='82'"><xsl:value-of select="$myparam"/> (Metered services invoice)</xsl:when>
      		<xsl:when test="$myparam='83'"><xsl:value-of select="$myparam"/> (Credit note related to financial adjustments)</xsl:when>
      		<xsl:when test="$myparam='84'"><xsl:value-of select="$myparam"/> (Debit note related to financial adjustments)</xsl:when>
      		<xsl:when test="$myparam='85'"><xsl:value-of select="$myparam"/> (Customs manifest)</xsl:when>
      		<xsl:when test="$myparam='86'"><xsl:value-of select="$myparam"/> (Vessel unpack report)</xsl:when>
      		<xsl:when test="$myparam='87'"><xsl:value-of select="$myparam"/> (General cargo summary manifest report)</xsl:when>
      		<xsl:when test="$myparam='88'"><xsl:value-of select="$myparam"/> (Consignment unpack report)</xsl:when>
      		<xsl:when test="$myparam='89'"><xsl:value-of select="$myparam"/> (Meat and meat by-products sanitary certificate)</xsl:when>
      		<xsl:when test="$myparam='90'"><xsl:value-of select="$myparam"/> (Meat food products sanitary certificate)</xsl:when>
      		<xsl:when test="$myparam='91'"><xsl:value-of select="$myparam"/> (Poultry sanitary certificate)</xsl:when>
      		<xsl:when test="$myparam='92'"><xsl:value-of select="$myparam"/> (Horsemeat sanitary certificate)</xsl:when>
      		<xsl:when test="$myparam='93'"><xsl:value-of select="$myparam"/> (Casing sanitary certificate)</xsl:when>
      		<xsl:when test="$myparam='94'"><xsl:value-of select="$myparam"/> (Pharmaceutical sanitary certificate)</xsl:when>
      		<xsl:when test="$myparam='95'"><xsl:value-of select="$myparam"/> (Inedible sanitary certificate)</xsl:when>
      		<xsl:when test="$myparam='96'"><xsl:value-of select="$myparam"/> (Impending arrival)</xsl:when>
      		<xsl:when test="$myparam='97'"><xsl:value-of select="$myparam"/> (Means of transport advice)</xsl:when>
      		<xsl:when test="$myparam='98'"><xsl:value-of select="$myparam"/> (Arrival information)</xsl:when>
      		<xsl:when test="$myparam='99'"><xsl:value-of select="$myparam"/> (Cargo release notification)</xsl:when>
      		<xsl:when test="$myparam='100'"><xsl:value-of select="$myparam"/> (Excise certificate)</xsl:when>
      		<xsl:when test="$myparam='101'"><xsl:value-of select="$myparam"/> (Registration document)</xsl:when>
      		<xsl:when test="$myparam='102'"><xsl:value-of select="$myparam"/> (Tax notification)</xsl:when>
      		<xsl:when test="$myparam='103'"><xsl:value-of select="$myparam"/> (Transport equipment direct interchange report)</xsl:when>
      		<xsl:when test="$myparam='104'"><xsl:value-of select="$myparam"/> (Transport equipment impending arrival advice)</xsl:when>
      		<xsl:when test="$myparam='105'"><xsl:value-of select="$myparam"/> (Purchase order)</xsl:when>
      		<xsl:when test="$myparam='106'"><xsl:value-of select="$myparam"/> (Transport equipment damage report)</xsl:when>
      		<xsl:when test="$myparam='107'"><xsl:value-of select="$myparam"/> (Transport equipment maintenance and repair work estimate advice)</xsl:when>
      		<xsl:when test="$myparam='108'"><xsl:value-of select="$myparam"/> (Transport equipment empty release instruction)</xsl:when>
      		<xsl:when test="$myparam='109'"><xsl:value-of select="$myparam"/> (Transport movement gate in report)</xsl:when>
      		<xsl:when test="$myparam='110'"><xsl:value-of select="$myparam"/> (Manufacturing instructions)</xsl:when>
      		<xsl:when test="$myparam='111'"><xsl:value-of select="$myparam"/> (Transport movement gate out report)</xsl:when>
      		<xsl:when test="$myparam='112'"><xsl:value-of select="$myparam"/> (Transport equipment unpacking instruction)</xsl:when>
      		<xsl:when test="$myparam='113'"><xsl:value-of select="$myparam"/> (Transport equipment unpacking report)</xsl:when>
      		<xsl:when test="$myparam='114'"><xsl:value-of select="$myparam"/> (Transport equipment pick-up availability request)</xsl:when>
      		<xsl:when test="$myparam='115'"><xsl:value-of select="$myparam"/> (Transport equipment pick-up availability confirmation)</xsl:when>
      		<xsl:when test="$myparam='116'"><xsl:value-of select="$myparam"/> (Transport equipment pick-up report)</xsl:when>
      		<xsl:when test="$myparam='117'"><xsl:value-of select="$myparam"/> (Transport equipment shift report)</xsl:when>
      		<xsl:when test="$myparam='118'"><xsl:value-of select="$myparam"/> (Transport discharge instruction)</xsl:when>
      		<xsl:when test="$myparam='119'"><xsl:value-of select="$myparam"/> (Transport discharge report)</xsl:when>
      		<xsl:when test="$myparam='120'"><xsl:value-of select="$myparam"/> (Stores requisition)</xsl:when>
      		<xsl:when test="$myparam='121'"><xsl:value-of select="$myparam"/> (Transport loading instruction)</xsl:when>
      		<xsl:when test="$myparam='122'"><xsl:value-of select="$myparam"/> (Transport loading report)</xsl:when>
      		<xsl:when test="$myparam='123'"><xsl:value-of select="$myparam"/> (Transport equipment maintenance and repair work authorisation)</xsl:when>
      		<xsl:when test="$myparam='124'"><xsl:value-of select="$myparam"/> (Transport departure report)</xsl:when>
      		<xsl:when test="$myparam='125'"><xsl:value-of select="$myparam"/> (Transport empty equipment advice)</xsl:when>
      		<xsl:when test="$myparam='126'"><xsl:value-of select="$myparam"/> (Transport equipment acceptance order)</xsl:when>
      		<xsl:when test="$myparam='127'"><xsl:value-of select="$myparam"/> (Transport equipment special service instruction)</xsl:when>
      		<xsl:when test="$myparam='128'"><xsl:value-of select="$myparam"/> (Transport equipment stock report)</xsl:when>
      		<xsl:when test="$myparam='129'"><xsl:value-of select="$myparam"/> (Transport cargo release order)</xsl:when>
      		<xsl:when test="$myparam='130'"><xsl:value-of select="$myparam"/> (Invoicing data sheet)</xsl:when>
      		<xsl:when test="$myparam='131'"><xsl:value-of select="$myparam"/> (Transport equipment packing instruction)</xsl:when>
      		<xsl:when test="$myparam='132'"><xsl:value-of select="$myparam"/> (Customs clearance notice)</xsl:when>
      		<xsl:when test="$myparam='133'"><xsl:value-of select="$myparam"/> (Customs documents expiration notice)</xsl:when>
      		<xsl:when test="$myparam='134'"><xsl:value-of select="$myparam"/> (Transport equipment on-hire request)</xsl:when>
      		<xsl:when test="$myparam='135'"><xsl:value-of select="$myparam"/> (Transport equipment on-hire order)</xsl:when>
      		<xsl:when test="$myparam='136'"><xsl:value-of select="$myparam"/> (Transport equipment off-hire request)</xsl:when>
      		<xsl:when test="$myparam='137'"><xsl:value-of select="$myparam"/> (Transport equipment survey order)</xsl:when>
      		<xsl:when test="$myparam='138'"><xsl:value-of select="$myparam"/> (Transport equipment survey order response)</xsl:when>
      		<xsl:when test="$myparam='139'"><xsl:value-of select="$myparam"/> (Transport equipment survey report)</xsl:when>
      		<xsl:when test="$myparam='140'"><xsl:value-of select="$myparam"/> (Packing instructions)</xsl:when>
      		<xsl:when test="$myparam='141'"><xsl:value-of select="$myparam"/> (Advising items to be booked to a financial account)</xsl:when>
      		<xsl:when test="$myparam='142'"><xsl:value-of select="$myparam"/> (Transport equipment maintenance and repair work estimate order)</xsl:when>
      		<xsl:when test="$myparam='143'"><xsl:value-of select="$myparam"/> (Transport equipment maintenance and repair notice)</xsl:when>
      		<xsl:when test="$myparam='144'"><xsl:value-of select="$myparam"/> (Empty container disposition order)</xsl:when>
      		<xsl:when test="$myparam='145'"><xsl:value-of select="$myparam"/> (Cargo vessel discharge order)</xsl:when>
      		<xsl:when test="$myparam='146'"><xsl:value-of select="$myparam"/> (Cargo vessel loading order)</xsl:when>
      		<xsl:when test="$myparam='147'"><xsl:value-of select="$myparam"/> (Multidrop order)</xsl:when>
      		<xsl:when test="$myparam='148'"><xsl:value-of select="$myparam"/> (Bailment contract)</xsl:when>
      		<xsl:when test="$myparam='149'"><xsl:value-of select="$myparam"/> (Basic agreement)</xsl:when>
      		<xsl:when test="$myparam='150'"><xsl:value-of select="$myparam"/> (Internal transport order)</xsl:when>
      		<xsl:when test="$myparam='151'"><xsl:value-of select="$myparam"/> (Grant)</xsl:when>
      		<xsl:when test="$myparam='152'"><xsl:value-of select="$myparam"/> (Indefinite delivery indefinite quantity contract)</xsl:when>
      		<xsl:when test="$myparam='153'"><xsl:value-of select="$myparam"/> (Indefinite delivery definite quantity contract)</xsl:when>
      		<xsl:when test="$myparam='154'"><xsl:value-of select="$myparam"/> (Requirements contract)</xsl:when>
      		<xsl:when test="$myparam='155'"><xsl:value-of select="$myparam"/> (Task order)</xsl:when>
      		<xsl:when test="$myparam='156'"><xsl:value-of select="$myparam"/> (Make or buy plan)</xsl:when>
      		<xsl:when test="$myparam='157'"><xsl:value-of select="$myparam"/> (Subcontractor plan)</xsl:when>
      		<xsl:when test="$myparam='158'"><xsl:value-of select="$myparam"/> (Cost data summary)</xsl:when>
      		<xsl:when test="$myparam='159'"><xsl:value-of select="$myparam"/> (Certified cost and price data)</xsl:when>
      		<xsl:when test="$myparam='160'"><xsl:value-of select="$myparam"/> (Wage determination)</xsl:when>
      		<xsl:when test="$myparam='161'"><xsl:value-of select="$myparam"/> (Contract Funds Status Report (CFSR))</xsl:when>
      		<xsl:when test="$myparam='162'"><xsl:value-of select="$myparam"/> (Certified inspection and test results)</xsl:when>
      		<xsl:when test="$myparam='163'"><xsl:value-of select="$myparam"/> (Material inspection and receiving report)</xsl:when>
      		<xsl:when test="$myparam='164'"><xsl:value-of select="$myparam"/> (Purchasing specification)</xsl:when>
      		<xsl:when test="$myparam='165'"><xsl:value-of select="$myparam"/> (Payment or performance bond)</xsl:when>
      		<xsl:when test="$myparam='166'"><xsl:value-of select="$myparam"/> (Contract security classification specification)</xsl:when>
      		<xsl:when test="$myparam='167'"><xsl:value-of select="$myparam"/> (Manufacturing specification)</xsl:when>
      		<xsl:when test="$myparam='168'"><xsl:value-of select="$myparam"/> (Buy America certificate of compliance)</xsl:when>
      		<xsl:when test="$myparam='169'"><xsl:value-of select="$myparam"/> (Container off-hire notice)</xsl:when>
      		<xsl:when test="$myparam='170'"><xsl:value-of select="$myparam"/> (Cargo acceptance order)</xsl:when>
      		<xsl:when test="$myparam='171'"><xsl:value-of select="$myparam"/> (Pick-up notice)</xsl:when>
      		<xsl:when test="$myparam='172'"><xsl:value-of select="$myparam"/> (Authorisation to plan and suggest orders)</xsl:when>
      		<xsl:when test="$myparam='173'"><xsl:value-of select="$myparam"/> (Authorisation to plan and ship orders)</xsl:when>
      		<xsl:when test="$myparam='174'"><xsl:value-of select="$myparam"/> (Drawing)</xsl:when>
      		<xsl:when test="$myparam='175'"><xsl:value-of select="$myparam"/> (Cost Performance Report (CPR) format 2)</xsl:when>
      		<xsl:when test="$myparam='176'"><xsl:value-of select="$myparam"/> (Cost Schedule Status Report (CSSR))</xsl:when>
      		<xsl:when test="$myparam='177'"><xsl:value-of select="$myparam"/> (Cost Performance Report (CPR) format 1)</xsl:when>
      		<xsl:when test="$myparam='178'"><xsl:value-of select="$myparam"/> (Cost Performance Report (CPR) format 3)</xsl:when>
      		<xsl:when test="$myparam='179'"><xsl:value-of select="$myparam"/> (Cost Performance Report (CPR) format 4)</xsl:when>
      		<xsl:when test="$myparam='180'"><xsl:value-of select="$myparam"/> (Cost Performance Report (CPR) format 5)</xsl:when>
      		<xsl:when test="$myparam='181'"><xsl:value-of select="$myparam"/> (Progressive discharge report)</xsl:when>
      		<xsl:when test="$myparam='182'"><xsl:value-of select="$myparam"/> (Balance confirmation)</xsl:when>
      		<xsl:when test="$myparam='183'"><xsl:value-of select="$myparam"/> (Container stripping order)</xsl:when>
      		<xsl:when test="$myparam='184'"><xsl:value-of select="$myparam"/> (Container stuffing order)</xsl:when>
      		<xsl:when test="$myparam='185'"><xsl:value-of select="$myparam"/> (Conveyance declaration (arrival))</xsl:when>
      		<xsl:when test="$myparam='186'"><xsl:value-of select="$myparam"/> (Conveyance declaration (departure))</xsl:when>
      		<xsl:when test="$myparam='187'"><xsl:value-of select="$myparam"/> (Conveyance declaration (combined))</xsl:when>
      		<xsl:when test="$myparam='188'"><xsl:value-of select="$myparam"/> (Project recovery plan)</xsl:when>
      		<xsl:when test="$myparam='189'"><xsl:value-of select="$myparam"/> (Project production plan)</xsl:when>
      		<xsl:when test="$myparam='190'"><xsl:value-of select="$myparam"/> (Statistical and other administrative internal documents)</xsl:when>
      		<xsl:when test="$myparam='191'"><xsl:value-of select="$myparam"/> (Project master schedule)</xsl:when>
      		<xsl:when test="$myparam='192'"><xsl:value-of select="$myparam"/> (Priced alternate tender bill of quantity)</xsl:when>
      		<xsl:when test="$myparam='193'"><xsl:value-of select="$myparam"/> (Estimated priced bill of quantity)</xsl:when>
      		<xsl:when test="$myparam='194'"><xsl:value-of select="$myparam"/> (Draft bill of quantity)</xsl:when>
      		<xsl:when test="$myparam='195'"><xsl:value-of select="$myparam"/> (Documentary credit collection instruction)</xsl:when>
      		<xsl:when test="$myparam='196'"><xsl:value-of select="$myparam"/> (Request for an amendment of a documentary credit)</xsl:when>
      		<xsl:when test="$myparam='197'"><xsl:value-of select="$myparam"/> (Documentary credit amendment information)</xsl:when>
      		<xsl:when test="$myparam='198'"><xsl:value-of select="$myparam"/> (Advice of an amendment of a documentary credit)</xsl:when>
      		<xsl:when test="$myparam='199'"><xsl:value-of select="$myparam"/> (Response to an amendment of a documentary credit)</xsl:when>
      		<xsl:when test="$myparam='200'"><xsl:value-of select="$myparam"/> (Documentary credit issuance information)</xsl:when>
      		<xsl:when test="$myparam='201'"><xsl:value-of select="$myparam"/> (Direct payment valuation request)</xsl:when>
      		<xsl:when test="$myparam='202'"><xsl:value-of select="$myparam"/> (Direct payment valuation)</xsl:when>
      		<xsl:when test="$myparam='203'"><xsl:value-of select="$myparam"/> (Provisional payment valuation)</xsl:when>
      		<xsl:when test="$myparam='204'"><xsl:value-of select="$myparam"/> (Payment valuation)</xsl:when>
      		<xsl:when test="$myparam='205'"><xsl:value-of select="$myparam"/> (Quantity valuation)</xsl:when>
      		<xsl:when test="$myparam='206'"><xsl:value-of select="$myparam"/> (Quantity valuation request)</xsl:when>
      		<xsl:when test="$myparam='207'"><xsl:value-of select="$myparam"/> (Contract bill of quantities - BOQ)</xsl:when>
      		<xsl:when test="$myparam='208'"><xsl:value-of select="$myparam"/> (Unpriced bill of quantity)</xsl:when>
      		<xsl:when test="$myparam='209'"><xsl:value-of select="$myparam"/> (Priced tender BOQ)</xsl:when>
      		<xsl:when test="$myparam='210'"><xsl:value-of select="$myparam"/> (Enquiry)</xsl:when>
      		<xsl:when test="$myparam='211'"><xsl:value-of select="$myparam"/> (Interim application for payment)</xsl:when>
      		<xsl:when test="$myparam='212'"><xsl:value-of select="$myparam"/> (Agreement to pay)</xsl:when>
      		<xsl:when test="$myparam='213'"><xsl:value-of select="$myparam"/> (Request for financial cancellation)</xsl:when>
      		<xsl:when test="$myparam='214'"><xsl:value-of select="$myparam"/> (Pre-authorised direct debit(s))</xsl:when>
      		<xsl:when test="$myparam='215'"><xsl:value-of select="$myparam"/> (Letter of intent)</xsl:when>
      		<xsl:when test="$myparam='216'"><xsl:value-of select="$myparam"/> (Approved unpriced bill of quantity)</xsl:when>
      		<xsl:when test="$myparam='217'"><xsl:value-of select="$myparam"/> (Payment valuation for unscheduled items)</xsl:when>
      		<xsl:when test="$myparam='218'"><xsl:value-of select="$myparam"/> (Final payment request based on completion of work)</xsl:when>
      		<xsl:when test="$myparam='219'"><xsl:value-of select="$myparam"/> (Payment request for completed units)</xsl:when>
      		<xsl:when test="$myparam='220'"><xsl:value-of select="$myparam"/> (Order)</xsl:when>
      		<xsl:when test="$myparam='221'"><xsl:value-of select="$myparam"/> (Blanket order)</xsl:when>
      		<xsl:when test="$myparam='222'"><xsl:value-of select="$myparam"/> (Spot order)</xsl:when>
      		<xsl:when test="$myparam='223'"><xsl:value-of select="$myparam"/> (Lease order)</xsl:when>
      		<xsl:when test="$myparam='224'"><xsl:value-of select="$myparam"/> (Rush order)</xsl:when>
      		<xsl:when test="$myparam='225'"><xsl:value-of select="$myparam"/> (Repair order)</xsl:when>
      		<xsl:when test="$myparam='226'"><xsl:value-of select="$myparam"/> (Call off order)</xsl:when>
      		<xsl:when test="$myparam='227'"><xsl:value-of select="$myparam"/> (Consignment order)</xsl:when>
      		<xsl:when test="$myparam='228'"><xsl:value-of select="$myparam"/> (Sample order)</xsl:when>
      		<xsl:when test="$myparam='229'"><xsl:value-of select="$myparam"/> (Swap order)</xsl:when>
      		<xsl:when test="$myparam='230'"><xsl:value-of select="$myparam"/> (Purchase order change request)</xsl:when>
      		<xsl:when test="$myparam='231'"><xsl:value-of select="$myparam"/> (Purchase order response)</xsl:when>
      		<xsl:when test="$myparam='232'"><xsl:value-of select="$myparam"/> (Hire order)</xsl:when>
      		<xsl:when test="$myparam='233'"><xsl:value-of select="$myparam"/> (Spare parts order)</xsl:when>
      		<xsl:when test="$myparam='234'"><xsl:value-of select="$myparam"/> (Campaign price/sales catalogue)</xsl:when>
      		<xsl:when test="$myparam='235'"><xsl:value-of select="$myparam"/> (Container list)</xsl:when>
      		<xsl:when test="$myparam='236'"><xsl:value-of select="$myparam"/> (Delivery forecast)</xsl:when>
      		<xsl:when test="$myparam='237'"><xsl:value-of select="$myparam"/> (Cross docking services order)</xsl:when>
      		<xsl:when test="$myparam='238'"><xsl:value-of select="$myparam"/> (Non-pre-authorised direct debit(s))</xsl:when>
      		<xsl:when test="$myparam='239'"><xsl:value-of select="$myparam"/> (Rejected direct debit(s))</xsl:when>
      		<xsl:when test="$myparam='240'"><xsl:value-of select="$myparam"/> (Delivery instructions)</xsl:when>
      		<xsl:when test="$myparam='241'"><xsl:value-of select="$myparam"/> (Delivery schedule)</xsl:when>
      		<xsl:when test="$myparam='242'"><xsl:value-of select="$myparam"/> (Delivery just-in-time)</xsl:when>
      		<xsl:when test="$myparam='243'"><xsl:value-of select="$myparam"/> (Pre-authorised direct debit request(s))</xsl:when>
      		<xsl:when test="$myparam='244'"><xsl:value-of select="$myparam"/> (Non-pre-authorised direct debit request(s))</xsl:when>
      		<xsl:when test="$myparam='245'"><xsl:value-of select="$myparam"/> (Delivery release)</xsl:when>
      		<xsl:when test="$myparam='246'"><xsl:value-of select="$myparam"/> (Settlement of a letter of credit)</xsl:when>
      		<xsl:when test="$myparam='247'"><xsl:value-of select="$myparam"/> (Bank to bank funds transfer)</xsl:when>
      		<xsl:when test="$myparam='248'"><xsl:value-of select="$myparam"/> (Customer payment order(s))</xsl:when>
      		<xsl:when test="$myparam='249'"><xsl:value-of select="$myparam"/> (Low value payment order(s))</xsl:when>
      		<xsl:when test="$myparam='250'"><xsl:value-of select="$myparam"/> (Crew list declaration)</xsl:when>
      		<xsl:when test="$myparam='251'"><xsl:value-of select="$myparam"/> (Inquiry)</xsl:when>
      		<xsl:when test="$myparam='252'"><xsl:value-of select="$myparam"/> (Response to previous banking status message)</xsl:when>
      		<xsl:when test="$myparam='253'"><xsl:value-of select="$myparam"/> (Project master plan)</xsl:when>
      		<xsl:when test="$myparam='254'"><xsl:value-of select="$myparam"/> (Project plan)</xsl:when>
      		<xsl:when test="$myparam='255'"><xsl:value-of select="$myparam"/> (Project schedule)</xsl:when>
      		<xsl:when test="$myparam='256'"><xsl:value-of select="$myparam"/> (Project planning available resources)</xsl:when>
      		<xsl:when test="$myparam='257'"><xsl:value-of select="$myparam"/> (Project planning calendar)</xsl:when>
      		<xsl:when test="$myparam='258'"><xsl:value-of select="$myparam"/> (Standing order)</xsl:when>
      		<xsl:when test="$myparam='259'"><xsl:value-of select="$myparam"/> (Cargo movement event log)</xsl:when>
      		<xsl:when test="$myparam='260'"><xsl:value-of select="$myparam"/> (Cargo analysis voyage report)</xsl:when>
      		<xsl:when test="$myparam='261'"><xsl:value-of select="$myparam"/> (Self billed credit note)</xsl:when>
      		<xsl:when test="$myparam='262'"><xsl:value-of select="$myparam"/> (Consolidated credit note - goods and services)</xsl:when>
      		<xsl:when test="$myparam='263'"><xsl:value-of select="$myparam"/> (Inventory adjustment status report)</xsl:when>
      		<xsl:when test="$myparam='264'"><xsl:value-of select="$myparam"/> (Transport equipment movement instruction)</xsl:when>
      		<xsl:when test="$myparam='265'"><xsl:value-of select="$myparam"/> (Transport equipment movement report)</xsl:when>
      		<xsl:when test="$myparam='266'"><xsl:value-of select="$myparam"/> (Transport equipment status change report)</xsl:when>
      		<xsl:when test="$myparam='267'"><xsl:value-of select="$myparam"/> (Fumigation certificate)</xsl:when>
      		<xsl:when test="$myparam='268'"><xsl:value-of select="$myparam"/> (Wine certificate)</xsl:when>
      		<xsl:when test="$myparam='269'"><xsl:value-of select="$myparam"/> (Wool health certificate)</xsl:when>
      		<xsl:when test="$myparam='270'"><xsl:value-of select="$myparam"/> (Delivery note)</xsl:when>
      		<xsl:when test="$myparam='271'"><xsl:value-of select="$myparam"/> (Packing list)</xsl:when>
      		<xsl:when test="$myparam='272'"><xsl:value-of select="$myparam"/> (New code request)</xsl:when>
      		<xsl:when test="$myparam='273'"><xsl:value-of select="$myparam"/> (Code change request)</xsl:when>
      		<xsl:when test="$myparam='274'"><xsl:value-of select="$myparam"/> (Simple data element request)</xsl:when>
      		<xsl:when test="$myparam='275'"><xsl:value-of select="$myparam"/> (Simple data element change request)</xsl:when>
      		<xsl:when test="$myparam='276'"><xsl:value-of select="$myparam"/> (Composite data element request)</xsl:when>
      		<xsl:when test="$myparam='277'"><xsl:value-of select="$myparam"/> (Composite data element change request)</xsl:when>
      		<xsl:when test="$myparam='278'"><xsl:value-of select="$myparam"/> (Segment request)</xsl:when>
      		<xsl:when test="$myparam='279'"><xsl:value-of select="$myparam"/> (Segment change request)</xsl:when>
      		<xsl:when test="$myparam='280'"><xsl:value-of select="$myparam"/> (New message request)</xsl:when>
      		<xsl:when test="$myparam='281'"><xsl:value-of select="$myparam"/> (Message in development request)</xsl:when>
      		<xsl:when test="$myparam='282'"><xsl:value-of select="$myparam"/> (Modification of existing message)</xsl:when>
      		<xsl:when test="$myparam='283'"><xsl:value-of select="$myparam"/> (Tracking number assignment report)</xsl:when>
      		<xsl:when test="$myparam='284'"><xsl:value-of select="$myparam"/> (User directory definition)</xsl:when>
      		<xsl:when test="$myparam='285'"><xsl:value-of select="$myparam"/> (United Nations standard message request)</xsl:when>
      		<xsl:when test="$myparam='286'"><xsl:value-of select="$myparam"/> (Service directory definition)</xsl:when>
      		<xsl:when test="$myparam='287'"><xsl:value-of select="$myparam"/> (Status report)</xsl:when>
      		<xsl:when test="$myparam='288'"><xsl:value-of select="$myparam"/> (Kanban schedule)</xsl:when>
      		<xsl:when test="$myparam='289'"><xsl:value-of select="$myparam"/> (Product data message)</xsl:when>
      		<xsl:when test="$myparam='290'"><xsl:value-of select="$myparam"/> (A claim for parts and/or labour charges)</xsl:when>
      		<xsl:when test="$myparam='291'"><xsl:value-of select="$myparam"/> (Delivery schedule response)</xsl:when>
      		<xsl:when test="$myparam='292'"><xsl:value-of select="$myparam"/> (Inspection request)</xsl:when>
      		<xsl:when test="$myparam='293'"><xsl:value-of select="$myparam"/> (Inspection report)</xsl:when>
      		<xsl:when test="$myparam='294'"><xsl:value-of select="$myparam"/> (Application acknowledgement and error report)</xsl:when>
      		<xsl:when test="$myparam='295'"><xsl:value-of select="$myparam"/> (Price variation invoice)</xsl:when>
      		<xsl:when test="$myparam='296'"><xsl:value-of select="$myparam"/> (Credit note for price variation)</xsl:when>
      		<xsl:when test="$myparam='297'"><xsl:value-of select="$myparam"/> (Instruction to collect)</xsl:when>
      		<xsl:when test="$myparam='298'"><xsl:value-of select="$myparam"/> (Dangerous goods list)</xsl:when>
      		<xsl:when test="$myparam='299'"><xsl:value-of select="$myparam"/> (Registration renewal)</xsl:when>
      		<xsl:when test="$myparam='300'"><xsl:value-of select="$myparam"/> (Registration change)</xsl:when>
      		<xsl:when test="$myparam='301'"><xsl:value-of select="$myparam"/> (Response to registration)</xsl:when>
      		<xsl:when test="$myparam='302'"><xsl:value-of select="$myparam"/> (Implementation guideline)</xsl:when>
      		<xsl:when test="$myparam='303'"><xsl:value-of select="$myparam"/> (Request for transfer)</xsl:when>
      		<xsl:when test="$myparam='304'"><xsl:value-of select="$myparam"/> (Cost performance report)</xsl:when>
      		<xsl:when test="$myparam='305'"><xsl:value-of select="$myparam"/> (Application error and acknowledgement)</xsl:when>
      		<xsl:when test="$myparam='306'"><xsl:value-of select="$myparam"/> (Cash pool financial statement)</xsl:when>
      		<xsl:when test="$myparam='307'"><xsl:value-of select="$myparam"/> (Sequenced delivery schedule)</xsl:when>
      		<xsl:when test="$myparam='308'"><xsl:value-of select="$myparam"/> (Delcredere credit note)</xsl:when>
      		<xsl:when test="$myparam='309'"><xsl:value-of select="$myparam"/> (Healthcare discharge report, final)</xsl:when>
      		<xsl:when test="$myparam='310'"><xsl:value-of select="$myparam"/> (Offer / quotation)</xsl:when>
      		<xsl:when test="$myparam='311'"><xsl:value-of select="$myparam"/> (Request for quote)</xsl:when>
      		<xsl:when test="$myparam='312'"><xsl:value-of select="$myparam"/> (Acknowledgement message)</xsl:when>
      		<xsl:when test="$myparam='313'"><xsl:value-of select="$myparam"/> (Application error message)</xsl:when>
      		<xsl:when test="$myparam='314'"><xsl:value-of select="$myparam"/> (Cargo movement voyage summary)</xsl:when>
      		<xsl:when test="$myparam='315'"><xsl:value-of select="$myparam"/> (Contract)</xsl:when>
      		<xsl:when test="$myparam='316'"><xsl:value-of select="$myparam"/> (Application for usage of berth or mooring facilities)</xsl:when>
      		<xsl:when test="$myparam='317'"><xsl:value-of select="$myparam"/> (Application for designation of berthing places)</xsl:when>
      		<xsl:when test="$myparam='318'"><xsl:value-of select="$myparam"/> (Application for shifting from the designated place in port)</xsl:when>
      		<xsl:when test="$myparam='319'"><xsl:value-of select="$myparam"/> (Supplementary document for application for cargo operation of dangerous goods)</xsl:when>
      		<xsl:when test="$myparam='320'"><xsl:value-of select="$myparam"/> (Acknowledgement of order)</xsl:when>
      		<xsl:when test="$myparam='321'"><xsl:value-of select="$myparam"/> (Supplementary document for application for transport of dangerous goods)</xsl:when>
      		<xsl:when test="$myparam='322'"><xsl:value-of select="$myparam"/> (Optical Character Reading (OCR) payment)</xsl:when>
      		<xsl:when test="$myparam='323'"><xsl:value-of select="$myparam"/> (Preliminary sales report)</xsl:when>
      		<xsl:when test="$myparam='324'"><xsl:value-of select="$myparam"/> (Transport emergency card)</xsl:when>
      		<xsl:when test="$myparam='325'"><xsl:value-of select="$myparam"/> (Proforma invoice)</xsl:when>
      		<xsl:when test="$myparam='326'"><xsl:value-of select="$myparam"/> (Partial invoice)</xsl:when>
      		<xsl:when test="$myparam='327'"><xsl:value-of select="$myparam"/> (Operating instructions)</xsl:when>
      		<xsl:when test="$myparam='328'"><xsl:value-of select="$myparam"/> (Name/product plate)</xsl:when>
      		<xsl:when test="$myparam='329'"><xsl:value-of select="$myparam"/> (Co-insurance ceding bordereau)</xsl:when>
      		<xsl:when test="$myparam='330'"><xsl:value-of select="$myparam"/> (Request for delivery instructions)</xsl:when>
      		<xsl:when test="$myparam='331'"><xsl:value-of select="$myparam"/> (Commercial invoice which includes a packing list)</xsl:when>
      		<xsl:when test="$myparam='332'"><xsl:value-of select="$myparam"/> (Trade data)</xsl:when>
      		<xsl:when test="$myparam='333'"><xsl:value-of select="$myparam"/> (Customs declaration for cargo examination)</xsl:when>
      		<xsl:when test="$myparam='334'"><xsl:value-of select="$myparam"/> (Customs declaration for cargo examination, alternate)</xsl:when>
      		<xsl:when test="$myparam='335'"><xsl:value-of select="$myparam"/> (Booking request)</xsl:when>
      		<xsl:when test="$myparam='336'"><xsl:value-of select="$myparam"/> (Customs crew and conveyance)</xsl:when>
      		<xsl:when test="$myparam='337'"><xsl:value-of select="$myparam"/> (Customs summary declaration with commercial detail, alternate)</xsl:when>
      		<xsl:when test="$myparam='338'"><xsl:value-of select="$myparam"/> (Items booked to a financial account report)</xsl:when>
      		<xsl:when test="$myparam='339'"><xsl:value-of select="$myparam"/> (Report of transactions which need further information from the receiver)</xsl:when>
      		<xsl:when test="$myparam='340'"><xsl:value-of select="$myparam"/> (Shipping instructions)</xsl:when>
      		<xsl:when test="$myparam='341'"><xsl:value-of select="$myparam"/> (Shipper's letter of instructions (air))</xsl:when>
      		<xsl:when test="$myparam='342'"><xsl:value-of select="$myparam"/> (Report of transactions for information only)</xsl:when>
      		<xsl:when test="$myparam='343'"><xsl:value-of select="$myparam"/> (Cartage order (local transport))</xsl:when>
      		<xsl:when test="$myparam='344'"><xsl:value-of select="$myparam"/> (EDI associated object administration message)</xsl:when>
      		<xsl:when test="$myparam='345'"><xsl:value-of select="$myparam"/> (Ready for despatch advice)</xsl:when>
      		<xsl:when test="$myparam='346'"><xsl:value-of select="$myparam"/> (Summary sales report)</xsl:when>
      		<xsl:when test="$myparam='347'"><xsl:value-of select="$myparam"/> (Order status enquiry)</xsl:when>
      		<xsl:when test="$myparam='348'"><xsl:value-of select="$myparam"/> (Order status report)</xsl:when>
      		<xsl:when test="$myparam='349'"><xsl:value-of select="$myparam"/> (Declaration regarding the inward and outward movement of vessel)</xsl:when>
      		<xsl:when test="$myparam='350'"><xsl:value-of select="$myparam"/> (Despatch order)</xsl:when>
      		<xsl:when test="$myparam='351'"><xsl:value-of select="$myparam"/> (Despatch advice)</xsl:when>
      		<xsl:when test="$myparam='352'"><xsl:value-of select="$myparam"/> (Notification of usage of berth or mooring facilities)</xsl:when>
      		<xsl:when test="$myparam='353'"><xsl:value-of select="$myparam"/> (Application for vessel's entering into port area in night-time)</xsl:when>
      		<xsl:when test="$myparam='354'"><xsl:value-of select="$myparam"/> (Notification of emergency shifting from the designated place in port)</xsl:when>
      		<xsl:when test="$myparam='355'"><xsl:value-of select="$myparam"/> (Customs summary declaration without commercial detail, alternate)</xsl:when>
      		<xsl:when test="$myparam='356'"><xsl:value-of select="$myparam"/> (Performance bond)</xsl:when>
      		<xsl:when test="$myparam='357'"><xsl:value-of select="$myparam"/> (Payment bond)</xsl:when>
      		<xsl:when test="$myparam='358'"><xsl:value-of select="$myparam"/> (Healthcare discharge report, preliminary)</xsl:when>
      		<xsl:when test="$myparam='359'"><xsl:value-of select="$myparam"/> (Request for provision of a health service)</xsl:when>
      		<xsl:when test="$myparam='360'"><xsl:value-of select="$myparam"/> (Request for price quote)</xsl:when>
      		<xsl:when test="$myparam='361'"><xsl:value-of select="$myparam"/> (Price quote)</xsl:when>
      		<xsl:when test="$myparam='362'"><xsl:value-of select="$myparam"/> (Delivery quote)</xsl:when>
      		<xsl:when test="$myparam='363'"><xsl:value-of select="$myparam"/> (Price and delivery quote)</xsl:when>
      		<xsl:when test="$myparam='364'"><xsl:value-of select="$myparam"/> (Contract price quote)</xsl:when>
      		<xsl:when test="$myparam='365'"><xsl:value-of select="$myparam"/> (Contract price and delivery quote)</xsl:when>
      		<xsl:when test="$myparam='366'"><xsl:value-of select="$myparam"/> (Price quote, specified end-customer)</xsl:when>
      		<xsl:when test="$myparam='367'"><xsl:value-of select="$myparam"/> (Price and delivery quote, specified end-customer)</xsl:when>
      		<xsl:when test="$myparam='368'"><xsl:value-of select="$myparam"/> (Price quote, ship and debit)</xsl:when>
      		<xsl:when test="$myparam='369'"><xsl:value-of select="$myparam"/> (Price and delivery quote, ship and debit)</xsl:when>
      		<xsl:when test="$myparam='370'"><xsl:value-of select="$myparam"/> (Advice of distribution of documents)</xsl:when>
      		<xsl:when test="$myparam='371'"><xsl:value-of select="$myparam"/> (Plan for provision of health service)</xsl:when>
      		<xsl:when test="$myparam='372'"><xsl:value-of select="$myparam"/> (Prescription)</xsl:when>
      		<xsl:when test="$myparam='373'"><xsl:value-of select="$myparam"/> (Prescription request)</xsl:when>
      		<xsl:when test="$myparam='374'"><xsl:value-of select="$myparam"/> (Prescription dispensing report)</xsl:when>
      		<xsl:when test="$myparam='375'"><xsl:value-of select="$myparam"/> (Certificate of shipment)</xsl:when>
      		<xsl:when test="$myparam='376'"><xsl:value-of select="$myparam"/> (Standing inquiry on product information)</xsl:when>
      		<xsl:when test="$myparam='377'"><xsl:value-of select="$myparam"/> (Party credit information)</xsl:when>
      		<xsl:when test="$myparam='378'"><xsl:value-of select="$myparam"/> (Party payment behaviour information)</xsl:when>
      		<xsl:when test="$myparam='379'"><xsl:value-of select="$myparam"/> (Request for metering point information)</xsl:when>
      		<xsl:when test="$myparam='380'"><xsl:value-of select="$myparam"/> (Commercial invoice)</xsl:when>
      		<xsl:when test="$myparam='381'"><xsl:value-of select="$myparam"/> (Credit note)</xsl:when>
      		<xsl:when test="$myparam='382'"><xsl:value-of select="$myparam"/> (Commission note)</xsl:when>
      		<xsl:when test="$myparam='383'"><xsl:value-of select="$myparam"/> (Debit note)</xsl:when>
      		<xsl:when test="$myparam='384'"><xsl:value-of select="$myparam"/> (Corrected invoice)</xsl:when>
      		<xsl:when test="$myparam='385'"><xsl:value-of select="$myparam"/> (Consolidated invoice)</xsl:when>
      		<xsl:when test="$myparam='386'"><xsl:value-of select="$myparam"/> (Prepayment invoice)</xsl:when>
      		<xsl:when test="$myparam='387'"><xsl:value-of select="$myparam"/> (Hire invoice)</xsl:when>
      		<xsl:when test="$myparam='388'"><xsl:value-of select="$myparam"/> (Tax invoice)</xsl:when>
      		<xsl:when test="$myparam='389'"><xsl:value-of select="$myparam"/> (Self-billed invoice)</xsl:when>
      		<xsl:when test="$myparam='390'"><xsl:value-of select="$myparam"/> (Delcredere invoice)</xsl:when>
      		<xsl:when test="$myparam='391'"><xsl:value-of select="$myparam"/> (Metering point information response)</xsl:when>
      		<xsl:when test="$myparam='392'"><xsl:value-of select="$myparam"/> (Notification of change of supplier)</xsl:when>
      		<xsl:when test="$myparam='393'"><xsl:value-of select="$myparam"/> (Factored invoice)</xsl:when>
      		<xsl:when test="$myparam='394'"><xsl:value-of select="$myparam"/> (Lease invoice)</xsl:when>
      		<xsl:when test="$myparam='395'"><xsl:value-of select="$myparam"/> (Consignment invoice)</xsl:when>
      		<xsl:when test="$myparam='396'"><xsl:value-of select="$myparam"/> (Factored credit note)</xsl:when>
      		<xsl:when test="$myparam='397'"><xsl:value-of select="$myparam"/> (Commercial account summary response)</xsl:when>
      		<xsl:when test="$myparam='398'"><xsl:value-of select="$myparam"/> (Cross docking despatch advice)</xsl:when>
      		<xsl:when test="$myparam='399'"><xsl:value-of select="$myparam"/> (Transshipment despatch advice)</xsl:when>
      		<xsl:when test="$myparam='400'"><xsl:value-of select="$myparam"/> (Exceptional order)</xsl:when>
      		<xsl:when test="$myparam='401'"><xsl:value-of select="$myparam"/> (Pre-packed cross docking order)</xsl:when>
      		<xsl:when test="$myparam='402'"><xsl:value-of select="$myparam"/> (Intermediate handling cross docking order)</xsl:when>
      		<xsl:when test="$myparam='403'"><xsl:value-of select="$myparam"/> (Means of transportation availability information)</xsl:when>
      		<xsl:when test="$myparam='404'"><xsl:value-of select="$myparam"/> (Means of transportation schedule information)</xsl:when>
      		<xsl:when test="$myparam='405'"><xsl:value-of select="$myparam"/> (Transport equipment delivery notice)</xsl:when>
      		<xsl:when test="$myparam='406'"><xsl:value-of select="$myparam"/> (Notification to supplier of contract termination)</xsl:when>
      		<xsl:when test="$myparam='407'"><xsl:value-of select="$myparam"/> (Notification to supplier of metering point changes)</xsl:when>
      		<xsl:when test="$myparam='408'"><xsl:value-of select="$myparam"/> (Notification of meter change)</xsl:when>
      		<xsl:when test="$myparam='409'"><xsl:value-of select="$myparam"/> (Instructions for bank transfer)</xsl:when>
      		<xsl:when test="$myparam='410'"><xsl:value-of select="$myparam"/> (Notification of metering point identification change)</xsl:when>
      		<xsl:when test="$myparam='411'"><xsl:value-of select="$myparam"/> (Utilities time series message)</xsl:when>
      		<xsl:when test="$myparam='412'"><xsl:value-of select="$myparam"/> (Application for banker's draft)</xsl:when>
      		<xsl:when test="$myparam='413'"><xsl:value-of select="$myparam"/> (Infrastructure condition)</xsl:when>
      		<xsl:when test="$myparam='414'"><xsl:value-of select="$myparam"/> (Acknowledgement of change of supplier)</xsl:when>
      		<xsl:when test="$myparam='415'"><xsl:value-of select="$myparam"/> (Data Plot Sheet)</xsl:when>
      		<xsl:when test="$myparam='416'"><xsl:value-of select="$myparam"/> (Soil analysis)</xsl:when>
      		<xsl:when test="$myparam='417'"><xsl:value-of select="$myparam"/> (Farmyard manure analysis)</xsl:when>
      		<xsl:when test="$myparam='418'"><xsl:value-of select="$myparam"/> (WCO Cargo Report Export, Rail or Road)</xsl:when>
      		<xsl:when test="$myparam='419'"><xsl:value-of select="$myparam"/> (WCO Cargo Report Export, Air or Maritime)</xsl:when>
      		<xsl:when test="$myparam='420'"><xsl:value-of select="$myparam"/> (Optical Character Reading (OCR) payment credit note)</xsl:when>
      		<xsl:when test="$myparam='421'"><xsl:value-of select="$myparam"/> (WCO Cargo Report Import, Rail or Road)</xsl:when>
      		<xsl:when test="$myparam='422'"><xsl:value-of select="$myparam"/> (WCO Cargo Report Import, Air or Maritime)</xsl:when>
      		<xsl:when test="$myparam='423'"><xsl:value-of select="$myparam"/> (WCO one-step export declaration)</xsl:when>
      		<xsl:when test="$myparam='424'"><xsl:value-of select="$myparam"/> (WCO first step of two-step export declaration)</xsl:when>
      		<xsl:when test="$myparam='425'"><xsl:value-of select="$myparam"/> (Collection payment advice)</xsl:when>
      		<xsl:when test="$myparam='426'"><xsl:value-of select="$myparam"/> (Documentary credit payment advice)</xsl:when>
      		<xsl:when test="$myparam='427'"><xsl:value-of select="$myparam"/> (Documentary credit acceptance advice)</xsl:when>
      		<xsl:when test="$myparam='428'"><xsl:value-of select="$myparam"/> (Documentary credit negotiation advice)</xsl:when>
      		<xsl:when test="$myparam='429'"><xsl:value-of select="$myparam"/> (Application for banker's guarantee)</xsl:when>
      		<xsl:when test="$myparam='430'"><xsl:value-of select="$myparam"/> (Banker's guarantee)</xsl:when>
      		<xsl:when test="$myparam='431'"><xsl:value-of select="$myparam"/> (Documentary credit letter of indemnity)</xsl:when>
      		<xsl:when test="$myparam='432'"><xsl:value-of select="$myparam"/> (Notification to grid operator of contract termination)</xsl:when>
      		<xsl:when test="$myparam='433'"><xsl:value-of select="$myparam"/> (Notification to grid operator of metering point changes)</xsl:when>
      		<xsl:when test="$myparam='434'"><xsl:value-of select="$myparam"/> (Notification of balance responsible entity change)</xsl:when>
      		<xsl:when test="$myparam='435'"><xsl:value-of select="$myparam"/> (Preadvice of a credit)</xsl:when>
      		<xsl:when test="$myparam='436'"><xsl:value-of select="$myparam"/> (Transport equipment profile report)</xsl:when>
      		<xsl:when test="$myparam='437'"><xsl:value-of select="$myparam"/> (Request for price and delivery quote, specified end-user)</xsl:when>
      		<xsl:when test="$myparam='438'"><xsl:value-of select="$myparam"/> (Request for price quote, ship and debit)</xsl:when>
      		<xsl:when test="$myparam='439'"><xsl:value-of select="$myparam"/> (Request for price and delivery quote, ship and debit)</xsl:when>
      		<xsl:when test="$myparam='440'"><xsl:value-of select="$myparam"/> (Delivery point list.)</xsl:when>
      		<xsl:when test="$myparam='441'"><xsl:value-of select="$myparam"/> (Transport routing information)</xsl:when>
      		<xsl:when test="$myparam='442'"><xsl:value-of select="$myparam"/> (Request for delivery quote)</xsl:when>
      		<xsl:when test="$myparam='443'"><xsl:value-of select="$myparam"/> (Request for price and delivery quote)</xsl:when>
      		<xsl:when test="$myparam='444'"><xsl:value-of select="$myparam"/> (Request for contract price quote)</xsl:when>
      		<xsl:when test="$myparam='445'"><xsl:value-of select="$myparam"/> (Request for contract price and delivery quote)</xsl:when>
      		<xsl:when test="$myparam='446'"><xsl:value-of select="$myparam"/> (Request for price quote, specified end-customer)</xsl:when>
      		<xsl:when test="$myparam='447'"><xsl:value-of select="$myparam"/> (Collection order)</xsl:when>
      		<xsl:when test="$myparam='448'"><xsl:value-of select="$myparam"/> (Documents presentation form)</xsl:when>
      		<xsl:when test="$myparam='449'"><xsl:value-of select="$myparam"/> (Identification match)</xsl:when>
      		<xsl:when test="$myparam='450'"><xsl:value-of select="$myparam"/> (Payment order)</xsl:when>
      		<xsl:when test="$myparam='451'"><xsl:value-of select="$myparam"/> (Extended payment order)</xsl:when>
      		<xsl:when test="$myparam='452'"><xsl:value-of select="$myparam"/> (Multiple payment order)</xsl:when>
      		<xsl:when test="$myparam='453'"><xsl:value-of select="$myparam"/> (Notice that circumstances prevent payment of delivered goods)</xsl:when>
      		<xsl:when test="$myparam='454'"><xsl:value-of select="$myparam"/> (Credit advice)</xsl:when>
      		<xsl:when test="$myparam='455'"><xsl:value-of select="$myparam"/> (Extended credit advice)</xsl:when>
      		<xsl:when test="$myparam='456'"><xsl:value-of select="$myparam"/> (Debit advice)</xsl:when>
      		<xsl:when test="$myparam='457'"><xsl:value-of select="$myparam"/> (Reversal of debit)</xsl:when>
      		<xsl:when test="$myparam='458'"><xsl:value-of select="$myparam"/> (Reversal of credit)</xsl:when>
      		<xsl:when test="$myparam='459'"><xsl:value-of select="$myparam"/> (Travel ticket)</xsl:when>
      		<xsl:when test="$myparam='460'"><xsl:value-of select="$myparam"/> (Documentary credit application)</xsl:when>
      		<xsl:when test="$myparam='461'"><xsl:value-of select="$myparam"/> (Payment card)</xsl:when>
      		<xsl:when test="$myparam='462'"><xsl:value-of select="$myparam"/> (Ready for transshipment despatch advice)</xsl:when>
      		<xsl:when test="$myparam='463'"><xsl:value-of select="$myparam"/> (Pre-packed cross docking despatch advice)</xsl:when>
      		<xsl:when test="$myparam='464'"><xsl:value-of select="$myparam"/> (Intermediate handling cross docking despatch advice)</xsl:when>
      		<xsl:when test="$myparam='465'"><xsl:value-of select="$myparam"/> (Documentary credit)</xsl:when>
      		<xsl:when test="$myparam='466'"><xsl:value-of select="$myparam"/> (Documentary credit notification)</xsl:when>
      		<xsl:when test="$myparam='467'"><xsl:value-of select="$myparam"/> (Documentary credit transfer advice)</xsl:when>
      		<xsl:when test="$myparam='468'"><xsl:value-of select="$myparam"/> (Documentary credit amendment notification)</xsl:when>
      		<xsl:when test="$myparam='469'"><xsl:value-of select="$myparam"/> (Documentary credit amendment)</xsl:when>
      		<xsl:when test="$myparam='470'"><xsl:value-of select="$myparam"/> (Waste disposal report)</xsl:when>
      		<xsl:when test="$myparam='481'"><xsl:value-of select="$myparam"/> (Remittance advice)</xsl:when>
      		<xsl:when test="$myparam='482'"><xsl:value-of select="$myparam"/> (Port authority waste disposal report)</xsl:when>
      		<xsl:when test="$myparam='483'"><xsl:value-of select="$myparam"/> (Visa)</xsl:when>
      		<xsl:when test="$myparam='484'"><xsl:value-of select="$myparam"/> (Multiple direct debit request)</xsl:when>
      		<xsl:when test="$myparam='485'"><xsl:value-of select="$myparam"/> (Banker's draft)</xsl:when>
      		<xsl:when test="$myparam='486'"><xsl:value-of select="$myparam"/> (Multiple direct debit)</xsl:when>
      		<xsl:when test="$myparam='487'"><xsl:value-of select="$myparam"/> (Certificate of disembarkation permission)</xsl:when>
      		<xsl:when test="$myparam='488'"><xsl:value-of select="$myparam"/> (Deratting exemption certificate)</xsl:when>
      		<xsl:when test="$myparam='489'"><xsl:value-of select="$myparam"/> (Reefer connection order)</xsl:when>
      		<xsl:when test="$myparam='490'"><xsl:value-of select="$myparam"/> (Bill of exchange)</xsl:when>
      		<xsl:when test="$myparam='491'"><xsl:value-of select="$myparam"/> (Promissory note)</xsl:when>
      		<xsl:when test="$myparam='493'"><xsl:value-of select="$myparam"/> (Statement of account message)</xsl:when>
      		<xsl:when test="$myparam='494'"><xsl:value-of select="$myparam"/> (Direct delivery (transport))</xsl:when>
      		<xsl:when test="$myparam='495'"><xsl:value-of select="$myparam"/> (WCO second step of two-step export declaration)</xsl:when>
      		<xsl:when test="$myparam='496'"><xsl:value-of select="$myparam"/> (WCO one-step import declaration)</xsl:when>
      		<xsl:when test="$myparam='497'"><xsl:value-of select="$myparam"/> (WCO first step of two-step import declaration)</xsl:when>
      		<xsl:when test="$myparam='498'"><xsl:value-of select="$myparam"/> (WCO second step of two-step import declaration)</xsl:when>
      		<xsl:when test="$myparam='499'"><xsl:value-of select="$myparam"/> (Previous transport document)</xsl:when>
      		<xsl:when test="$myparam='520'"><xsl:value-of select="$myparam"/> (Insurance certificate)</xsl:when>
      		<xsl:when test="$myparam='521'"><xsl:value-of select="$myparam"/> (Special requirements permit related to the transport of cargo)</xsl:when>
      		<xsl:when test="$myparam='522'"><xsl:value-of select="$myparam"/> (Dangerous Goods Notification for Tanker vessel)</xsl:when>
      		<xsl:when test="$myparam='523'"><xsl:value-of select="$myparam"/> (Dangerous Goods Notification for non-tanker vessel)</xsl:when>
      		<xsl:when test="$myparam='524'"><xsl:value-of select="$myparam"/> (WCO Conveyance Arrival Report)</xsl:when>
      		<xsl:when test="$myparam='525'"><xsl:value-of select="$myparam"/> (WCO Conveyance Departure Report)</xsl:when>
      		<xsl:when test="$myparam='526'"><xsl:value-of select="$myparam"/> (Accounting voucher)</xsl:when>
      		<xsl:when test="$myparam='527'"><xsl:value-of select="$myparam"/> (Self billed debit note)</xsl:when>
      		<xsl:when test="$myparam='528'"><xsl:value-of select="$myparam"/> (Military Identification Card)</xsl:when>
      		<xsl:when test="$myparam='529'"><xsl:value-of select="$myparam"/> (Re-Entry Permit)</xsl:when>
      		<xsl:when test="$myparam='530'"><xsl:value-of select="$myparam"/> (Insurance policy)</xsl:when>
      		<xsl:when test="$myparam='531'"><xsl:value-of select="$myparam"/> (Refugee Permit)</xsl:when>
      		<xsl:when test="$myparam='532'"><xsl:value-of select="$myparam"/> (Forwarder’s credit note)</xsl:when>
      		<xsl:when test="$myparam='533'"><xsl:value-of select="$myparam"/> (Original accounting voucher)</xsl:when>
      		<xsl:when test="$myparam='534'"><xsl:value-of select="$myparam"/> (Copy accounting voucher)</xsl:when>
      		<xsl:when test="$myparam='535'"><xsl:value-of select="$myparam"/> (Pro-forma accounting voucher)</xsl:when>
      		<xsl:when test="$myparam='536'"><xsl:value-of select="$myparam"/> (International Ship Security Certificate)</xsl:when>
      		<xsl:when test="$myparam='537'"><xsl:value-of select="$myparam"/> (Interim International Ship Security Certificate)</xsl:when>
      		<xsl:when test="$myparam='538'"><xsl:value-of select="$myparam"/> (Good Manufacturing Practice (GMP) Certificate)</xsl:when>
      		<xsl:when test="$myparam='539'"><xsl:value-of select="$myparam"/> (Framework Agreement)</xsl:when>
      		<xsl:when test="$myparam='550'"><xsl:value-of select="$myparam"/> (Insurance declaration sheet (bordereau))</xsl:when>
      		<xsl:when test="$myparam='551'"><xsl:value-of select="$myparam"/> (Transport capacity offer)</xsl:when>
      		<xsl:when test="$myparam='552'"><xsl:value-of select="$myparam"/> (Ship Security Plan)</xsl:when>
      		<xsl:when test="$myparam='553'"><xsl:value-of select="$myparam"/> (Forwarder’s invoice discrepancy report)</xsl:when>
      		<xsl:when test="$myparam='554'"><xsl:value-of select="$myparam"/> (Storage capacity offer)</xsl:when>
      		<xsl:when test="$myparam='575'"><xsl:value-of select="$myparam"/> (Insurer's invoice)</xsl:when>
      		<xsl:when test="$myparam='576'"><xsl:value-of select="$myparam"/> (Storage capacity request)</xsl:when>
      		<xsl:when test="$myparam='577'"><xsl:value-of select="$myparam"/> (Transport capacity request)</xsl:when>
      		<xsl:when test="$myparam='578'"><xsl:value-of select="$myparam"/> (EU Customs declaration for External Community Transit (T1))</xsl:when>
      		<xsl:when test="$myparam='579'"><xsl:value-of select="$myparam"/> (EU Customs declaration for internal Community Transit (T2))</xsl:when>
      		<xsl:when test="$myparam='580'"><xsl:value-of select="$myparam"/> (Cover note)</xsl:when>
      		<xsl:when test="$myparam='581'"><xsl:value-of select="$myparam"/> (EU Customs declaration for non-fiscal area internal Community Transit (T2F))</xsl:when>
      		<xsl:when test="$myparam='582'"><xsl:value-of select="$myparam"/> (EU Customs declaration for internal transit to San Marino (T2SM))</xsl:when>
      		<xsl:when test="$myparam='583'"><xsl:value-of select="$myparam"/> (EU Customs declaration for mixed consignments (T))</xsl:when>
      		<xsl:when test="$myparam='584'"><xsl:value-of select="$myparam"/> (EU Document for establishing the Community status of goods (T2L))</xsl:when>
      		<xsl:when test="$myparam='585'"><xsl:value-of select="$myparam"/> (EU Document for establishing the Community status of goods for certain fiscal purposes (T2LF))</xsl:when>
      		<xsl:when test="$myparam='586'"><xsl:value-of select="$myparam"/> (Document for establishing the Customs Status of goods for San Marino (T2LSM))</xsl:when>
      		<xsl:when test="$myparam='587'"><xsl:value-of select="$myparam"/> (Customs declaration for TIR Carnet goods)</xsl:when>
      		<xsl:when test="$myparam='588'"><xsl:value-of select="$myparam"/> (Transport Means Security Report)</xsl:when>
      		<xsl:when test="$myparam='589'"><xsl:value-of select="$myparam"/> (Halal Slaughtering Certificate)</xsl:when>
      		<xsl:when test="$myparam='610'"><xsl:value-of select="$myparam"/> (Forwarding instructions)</xsl:when>
      		<xsl:when test="$myparam='621'"><xsl:value-of select="$myparam"/> (Forwarder's advice to import agent)</xsl:when>
      		<xsl:when test="$myparam='622'"><xsl:value-of select="$myparam"/> (Forwarder's advice to exporter)</xsl:when>
      		<xsl:when test="$myparam='623'"><xsl:value-of select="$myparam"/> (Forwarder's invoice)</xsl:when>
      		<xsl:when test="$myparam='624'"><xsl:value-of select="$myparam"/> (Forwarder's certificate of receipt)</xsl:when>
      		<xsl:when test="$myparam='625'"><xsl:value-of select="$myparam"/> (Heat Treatment Certificate)</xsl:when>
      		<xsl:when test="$myparam='626'"><xsl:value-of select="$myparam"/> (Convention on International Trade in Endangered Species of Wild Fauna and Flora (CITES) Certificate)</xsl:when>
      		<xsl:when test="$myparam='627'"><xsl:value-of select="$myparam"/> (Free Sale Certificate in the Country of Origin)</xsl:when>
      		<xsl:when test="$myparam='628'"><xsl:value-of select="$myparam"/> (Transit license)</xsl:when>
      		<xsl:when test="$myparam='629'"><xsl:value-of select="$myparam"/> (Veterinary quarantine certificate)</xsl:when>
      		<xsl:when test="$myparam='630'"><xsl:value-of select="$myparam"/> (Shipping note)</xsl:when>
      		<xsl:when test="$myparam='631'"><xsl:value-of select="$myparam"/> (Forwarder's warehouse receipt)</xsl:when>
      		<xsl:when test="$myparam='632'"><xsl:value-of select="$myparam"/> (Goods receipt)</xsl:when>
      		<xsl:when test="$myparam='633'"><xsl:value-of select="$myparam"/> (Port charges documents)</xsl:when>
      		<xsl:when test="$myparam='634'"><xsl:value-of select="$myparam"/> (Certified list of ingredients)</xsl:when>
      		<xsl:when test="$myparam='635'"><xsl:value-of select="$myparam"/> (Warehouse warrant)</xsl:when>
      		<xsl:when test="$myparam='636'"><xsl:value-of select="$myparam"/> (Health certificate)</xsl:when>
      		<xsl:when test="$myparam='637'"><xsl:value-of select="$myparam"/> (Food grade certificate)</xsl:when>
      		<xsl:when test="$myparam='638'"><xsl:value-of select="$myparam"/> (Certificate of suitability for transport of grains and legumes)</xsl:when>
      		<xsl:when test="$myparam='639'"><xsl:value-of select="$myparam"/> (Certificate of refrigerated transport equipment inspection)</xsl:when>
      		<xsl:when test="$myparam='640'"><xsl:value-of select="$myparam"/> (Delivery order)</xsl:when>
      		<xsl:when test="$myparam='641'"><xsl:value-of select="$myparam"/> (Thermographic reading report)</xsl:when>
      		<xsl:when test="$myparam='642'"><xsl:value-of select="$myparam"/> (Certificate of food item transport readiness)</xsl:when>
      		<xsl:when test="$myparam='643'"><xsl:value-of select="$myparam"/> (Food packaging contact certificate)</xsl:when>
      		<xsl:when test="$myparam='644'"><xsl:value-of select="$myparam"/> (Packaging material composition report)</xsl:when>
      		<xsl:when test="$myparam='645'"><xsl:value-of select="$myparam"/> (Export price certificate)</xsl:when>
      		<xsl:when test="$myparam='646'"><xsl:value-of select="$myparam"/> (Public price certificate)</xsl:when>
      		<xsl:when test="$myparam='647'"><xsl:value-of select="$myparam"/> (Drug shelf life study report)</xsl:when>
      		<xsl:when test="$myparam='648'"><xsl:value-of select="$myparam"/> (Certificate of compliance with standards of the World Organization for Animal Health (OIE))</xsl:when>
      		<xsl:when test="$myparam='649'"><xsl:value-of select="$myparam"/> (Production facility license)</xsl:when>
      		<xsl:when test="$myparam='650'"><xsl:value-of select="$myparam"/> (Handling order)</xsl:when>
      		<xsl:when test="$myparam='651'"><xsl:value-of select="$myparam"/> (Manufacturing license)</xsl:when>
      		<xsl:when test="$myparam='652'"><xsl:value-of select="$myparam"/> (Low risk country formal letter)</xsl:when>
      		<xsl:when test="$myparam='653'"><xsl:value-of select="$myparam"/> (Previous correspondence)</xsl:when>
      		<xsl:when test="$myparam='654'"><xsl:value-of select="$myparam"/> (Declaration for radioactive material)</xsl:when>
      		<xsl:when test="$myparam='655'"><xsl:value-of select="$myparam"/> (Gate pass)</xsl:when>
      		<xsl:when test="$myparam='656'"><xsl:value-of select="$myparam"/> (Resale information)</xsl:when>
      		<xsl:when test="$myparam='657'"><xsl:value-of select="$myparam"/> (Phytosanitary Re-export Certificate)</xsl:when>
      		<xsl:when test="$myparam='658'"><xsl:value-of select="$myparam"/> (Bayplan/stowage plan, full)</xsl:when>
      		<xsl:when test="$myparam='659'"><xsl:value-of select="$myparam"/> (Bayplan/stowage plan, partial)</xsl:when>
      		<xsl:when test="$myparam='700'"><xsl:value-of select="$myparam"/> (Waybill)</xsl:when>
      		<xsl:when test="$myparam='701'"><xsl:value-of select="$myparam"/> (Universal (multipurpose) transport document)</xsl:when>
      		<xsl:when test="$myparam='702'"><xsl:value-of select="$myparam"/> (Goods receipt, carriage)</xsl:when>
      		<xsl:when test="$myparam='703'"><xsl:value-of select="$myparam"/> (House waybill)</xsl:when>
      		<xsl:when test="$myparam='704'"><xsl:value-of select="$myparam"/> (Master bill of lading)</xsl:when>
      		<xsl:when test="$myparam='705'"><xsl:value-of select="$myparam"/> (Bill of lading)</xsl:when>
      		<xsl:when test="$myparam='706'"><xsl:value-of select="$myparam"/> (Bill of lading original)</xsl:when>
      		<xsl:when test="$myparam='707'"><xsl:value-of select="$myparam"/> (Bill of lading copy)</xsl:when>
      		<xsl:when test="$myparam='708'"><xsl:value-of select="$myparam"/> (Empty container bill)</xsl:when>
      		<xsl:when test="$myparam='709'"><xsl:value-of select="$myparam"/> (Tanker bill of lading)</xsl:when>
      		<xsl:when test="$myparam='710'"><xsl:value-of select="$myparam"/> (Sea waybill)</xsl:when>
      		<xsl:when test="$myparam='711'"><xsl:value-of select="$myparam"/> (Inland waterway bill of lading)</xsl:when>
      		<xsl:when test="$myparam='712'"><xsl:value-of select="$myparam"/> (Non-negotiable maritime transport document (generic))</xsl:when>
      		<xsl:when test="$myparam='713'"><xsl:value-of select="$myparam"/> (Mate's receipt)</xsl:when>
      		<xsl:when test="$myparam='714'"><xsl:value-of select="$myparam"/> (House bill of lading)</xsl:when>
      		<xsl:when test="$myparam='715'"><xsl:value-of select="$myparam"/> (Letter of indemnity for non-surrender of bill of lading)</xsl:when>
      		<xsl:when test="$myparam='716'"><xsl:value-of select="$myparam"/> (Forwarder's bill of lading)</xsl:when>
      		<xsl:when test="$myparam='717'"><xsl:value-of select="$myparam"/> (Residence permit)</xsl:when>
      		<xsl:when test="$myparam='718'"><xsl:value-of select="$myparam"/> (Seaman’s book)</xsl:when>
      		<xsl:when test="$myparam='719'"><xsl:value-of select="$myparam"/> (General message)</xsl:when>
      		<xsl:when test="$myparam='720'"><xsl:value-of select="$myparam"/> (Rail consignment note (generic term))</xsl:when>
      		<xsl:when test="$myparam='721'"><xsl:value-of select="$myparam"/> (Product data response)</xsl:when>
      		<xsl:when test="$myparam='722'"><xsl:value-of select="$myparam"/> (Road list-SMGS)</xsl:when>
      		<xsl:when test="$myparam='723'"><xsl:value-of select="$myparam"/> (Escort official recognition)</xsl:when>
      		<xsl:when test="$myparam='724'"><xsl:value-of select="$myparam"/> (Recharging document)</xsl:when>
      		<xsl:when test="$myparam='725'"><xsl:value-of select="$myparam"/> (Manufacturer raised order)</xsl:when>
      		<xsl:when test="$myparam='726'"><xsl:value-of select="$myparam"/> (Manufacturer raised consignment order)</xsl:when>
      		<xsl:when test="$myparam='727'"><xsl:value-of select="$myparam"/> (Price/sales catalogue not containing commercial information)</xsl:when>
      		<xsl:when test="$myparam='728'"><xsl:value-of select="$myparam"/> (Price/sales catalogue containing commercial information)</xsl:when>
      		<xsl:when test="$myparam='729'"><xsl:value-of select="$myparam"/> (Returns advice)</xsl:when>
      		<xsl:when test="$myparam='730'"><xsl:value-of select="$myparam"/> (Road consignment note)</xsl:when>
      		<xsl:when test="$myparam='731'"><xsl:value-of select="$myparam"/> (Commercial account summary)</xsl:when>
      		<xsl:when test="$myparam='732'"><xsl:value-of select="$myparam"/> (Announcement for returns)</xsl:when>
      		<xsl:when test="$myparam='733'"><xsl:value-of select="$myparam"/> (Instruction for returns)</xsl:when>
      		<xsl:when test="$myparam='734'"><xsl:value-of select="$myparam"/> (Sales forecast report)</xsl:when>
      		<xsl:when test="$myparam='735'"><xsl:value-of select="$myparam"/> (Sales data report)</xsl:when>
      		<xsl:when test="$myparam='736'"><xsl:value-of select="$myparam"/> (Standing inquiry on complete product information)</xsl:when>
      		<xsl:when test="$myparam='737'"><xsl:value-of select="$myparam"/> (Proof of delivery)</xsl:when>
      		<xsl:when test="$myparam='738'"><xsl:value-of select="$myparam"/> (Cargo/goods handling and movement message)</xsl:when>
      		<xsl:when test="$myparam='739'"><xsl:value-of select="$myparam"/> (Metered services consumption report supporting an invoice)</xsl:when>
      		<xsl:when test="$myparam='740'"><xsl:value-of select="$myparam"/> (Air waybill)</xsl:when>
      		<xsl:when test="$myparam='741'"><xsl:value-of select="$myparam"/> (Master air waybill)</xsl:when>
      		<xsl:when test="$myparam='742'"><xsl:value-of select="$myparam"/> (Metered services consumption report)</xsl:when>
      		<xsl:when test="$myparam='743'"><xsl:value-of select="$myparam"/> (Substitute air waybill)</xsl:when>
      		<xsl:when test="$myparam='744'"><xsl:value-of select="$myparam"/> (Crew's effects declaration)</xsl:when>
      		<xsl:when test="$myparam='745'"><xsl:value-of select="$myparam"/> (Passenger list)</xsl:when>
      		<xsl:when test="$myparam='746'"><xsl:value-of select="$myparam"/> (Delivery notice (rail transport))</xsl:when>
      		<xsl:when test="$myparam='747'"><xsl:value-of select="$myparam"/> (Payroll deductions advice)</xsl:when>
      		<xsl:when test="$myparam='748'"><xsl:value-of select="$myparam"/> (Consignment despatch advice)</xsl:when>
      		<xsl:when test="$myparam='749'"><xsl:value-of select="$myparam"/> (Transport equipment gross mass verification message)</xsl:when>
      		<xsl:when test="$myparam='750'"><xsl:value-of select="$myparam"/> (Despatch note (post parcels))</xsl:when>
      		<xsl:when test="$myparam='751'"><xsl:value-of select="$myparam"/> (Invoice information for accounting purposes)</xsl:when>
      		<xsl:when test="$myparam='752'"><xsl:value-of select="$myparam"/> (Plant Passport)</xsl:when>
      		<xsl:when test="$myparam='753'"><xsl:value-of select="$myparam"/> (Certificate of sustainability)</xsl:when>
      		<xsl:when test="$myparam='754'"><xsl:value-of select="$myparam"/> (Call for tender)</xsl:when>
      		<xsl:when test="$myparam='755'"><xsl:value-of select="$myparam"/> (Invitation to tender)</xsl:when>
      		<xsl:when test="$myparam='756'"><xsl:value-of select="$myparam"/> (European Single Procurement Document request)</xsl:when>
      		<xsl:when test="$myparam='757'"><xsl:value-of select="$myparam"/> (Tendering price/sales catalogue request)</xsl:when>
      		<xsl:when test="$myparam='758'"><xsl:value-of select="$myparam"/> (Tender)</xsl:when>
      		<xsl:when test="$myparam='759'"><xsl:value-of select="$myparam"/> (European Single Procurement Document)</xsl:when>
      		<xsl:when test="$myparam='760'"><xsl:value-of select="$myparam"/> (Multimodal/combined transport document (generic))</xsl:when>
      		<xsl:when test="$myparam='761'"><xsl:value-of select="$myparam"/> (Through bill of lading)</xsl:when>
      		<xsl:when test="$myparam='762'"><xsl:value-of select="$myparam"/> (Tendering price/sales catalogue)</xsl:when>
      		<xsl:when test="$myparam='763'"><xsl:value-of select="$myparam"/> (Forwarder's certificate of transport)</xsl:when>
      		<xsl:when test="$myparam='764'"><xsl:value-of select="$myparam"/> (Combined transport document (generic))</xsl:when>
      		<xsl:when test="$myparam='765'"><xsl:value-of select="$myparam"/> (Multimodal transport document (generic))</xsl:when>
      		<xsl:when test="$myparam='766'"><xsl:value-of select="$myparam"/> (Combined transport bill of lading/multimodal bill of lading)</xsl:when>
      		<xsl:when test="$myparam='767'"><xsl:value-of select="$myparam"/> (Acknowledgment of receipt)</xsl:when>
      		<xsl:when test="$myparam='768'"><xsl:value-of select="$myparam"/> (Civil status document)</xsl:when>
      		<xsl:when test="$myparam='769'"><xsl:value-of select="$myparam"/> (Advice report)</xsl:when>
      		<xsl:when test="$myparam='770'"><xsl:value-of select="$myparam"/> (Booking confirmation)</xsl:when>
      		<xsl:when test="$myparam='771'"><xsl:value-of select="$myparam"/> (Binding offer)</xsl:when>
      		<xsl:when test="$myparam='772'"><xsl:value-of select="$myparam"/> (Binding customer agreement for contract)</xsl:when>
      		<xsl:when test="$myparam='773'"><xsl:value-of select="$myparam"/> (Coverage confirmation note)</xsl:when>
      		<xsl:when test="$myparam='774'"><xsl:value-of select="$myparam"/> (General terms and conditions)</xsl:when>
      		<xsl:when test="$myparam='775'"><xsl:value-of select="$myparam"/> (Calling forward notice)</xsl:when>
      		<xsl:when test="$myparam='776'"><xsl:value-of select="$myparam"/> (Contract clauses)</xsl:when>
      		<xsl:when test="$myparam='777'"><xsl:value-of select="$myparam"/> (Specific contract conditions)</xsl:when>
      		<xsl:when test="$myparam='778'"><xsl:value-of select="$myparam"/> (Group insurance rules)</xsl:when>
      		<xsl:when test="$myparam='779'"><xsl:value-of select="$myparam"/> (Questionnaire)</xsl:when>
      		<xsl:when test="$myparam='780'"><xsl:value-of select="$myparam"/> (Freight invoice)</xsl:when>
      		<xsl:when test="$myparam='781'"><xsl:value-of select="$myparam"/> (Arrival notice (goods))</xsl:when>
      		<xsl:when test="$myparam='782'"><xsl:value-of select="$myparam"/> (Notice of circumstances preventing delivery (goods))</xsl:when>
      		<xsl:when test="$myparam='783'"><xsl:value-of select="$myparam"/> (Notice of circumstances preventing transport (goods))</xsl:when>
      		<xsl:when test="$myparam='784'"><xsl:value-of select="$myparam"/> (Delivery notice (goods))</xsl:when>
      		<xsl:when test="$myparam='785'"><xsl:value-of select="$myparam"/> (Cargo manifest)</xsl:when>
      		<xsl:when test="$myparam='786'"><xsl:value-of select="$myparam"/> (Freight manifest)</xsl:when>
      		<xsl:when test="$myparam='787'"><xsl:value-of select="$myparam"/> (Bordereau)</xsl:when>
      		<xsl:when test="$myparam='788'"><xsl:value-of select="$myparam"/> (Container manifest (unit packing list))</xsl:when>
      		<xsl:when test="$myparam='789'"><xsl:value-of select="$myparam"/> (Charges note)</xsl:when>
      		<xsl:when test="$myparam='790'"><xsl:value-of select="$myparam"/> (Advice of collection)</xsl:when>
      		<xsl:when test="$myparam='791'"><xsl:value-of select="$myparam"/> (Safety of ship certificate)</xsl:when>
      		<xsl:when test="$myparam='792'"><xsl:value-of select="$myparam"/> (Safety of radio certificate)</xsl:when>
      		<xsl:when test="$myparam='793'"><xsl:value-of select="$myparam"/> (Safety of equipment certificate)</xsl:when>
      		<xsl:when test="$myparam='794'"><xsl:value-of select="$myparam"/> (Civil liability for oil certificate)</xsl:when>
      		<xsl:when test="$myparam='795'"><xsl:value-of select="$myparam"/> (Loadline document)</xsl:when>
      		<xsl:when test="$myparam='796'"><xsl:value-of select="$myparam"/> (Derat document)</xsl:when>
      		<xsl:when test="$myparam='797'"><xsl:value-of select="$myparam"/> (Maritime declaration of health)</xsl:when>
      		<xsl:when test="$myparam='798'"><xsl:value-of select="$myparam"/> (Certificate of registry)</xsl:when>
      		<xsl:when test="$myparam='799'"><xsl:value-of select="$myparam"/> (Ship's stores declaration)</xsl:when>
      		<xsl:when test="$myparam='810'"><xsl:value-of select="$myparam"/> (Export licence, application for)</xsl:when>
      		<xsl:when test="$myparam='811'"><xsl:value-of select="$myparam"/> (Export licence)</xsl:when>
      		<xsl:when test="$myparam='812'"><xsl:value-of select="$myparam"/> (Exchange control declaration, export)</xsl:when>
      		<xsl:when test="$myparam='813'"><xsl:value-of select="$myparam"/> (Declaration of final beneficiary)</xsl:when>
      		<xsl:when test="$myparam='814'"><xsl:value-of select="$myparam"/> (US, FATCA statement)</xsl:when>
      		<xsl:when test="$myparam='815'"><xsl:value-of select="$myparam"/> (Insured status report)</xsl:when>
      		<xsl:when test="$myparam='816'"><xsl:value-of select="$myparam"/> (Group pension commitment information)</xsl:when>
      		<xsl:when test="$myparam='817'"><xsl:value-of select="$myparam"/> (Claim notification)</xsl:when>
      		<xsl:when test="$myparam='818'"><xsl:value-of select="$myparam"/> (Assessment report)</xsl:when>
      		<xsl:when test="$myparam='819'"><xsl:value-of select="$myparam"/> (Loss statement)</xsl:when>
      		<xsl:when test="$myparam='820'"><xsl:value-of select="$myparam"/> (Despatch note model T)</xsl:when>
      		<xsl:when test="$myparam='821'"><xsl:value-of select="$myparam"/> (Despatch note model T1)</xsl:when>
      		<xsl:when test="$myparam='822'"><xsl:value-of select="$myparam"/> (Despatch note model T2)</xsl:when>
      		<xsl:when test="$myparam='823'"><xsl:value-of select="$myparam"/> (Control document T5)</xsl:when>
      		<xsl:when test="$myparam='824'"><xsl:value-of select="$myparam"/> (Re-sending consignment note)</xsl:when>
      		<xsl:when test="$myparam='825'"><xsl:value-of select="$myparam"/> (Despatch note model T2L)</xsl:when>
      		<xsl:when test="$myparam='826'"><xsl:value-of select="$myparam"/> (Guarantee of cost acceptance)</xsl:when>
      		<xsl:when test="$myparam='827'"><xsl:value-of select="$myparam"/> (Close of claim)</xsl:when>
      		<xsl:when test="$myparam='828'"><xsl:value-of select="$myparam"/> (Refusal of claim)</xsl:when>
      		<xsl:when test="$myparam='829'"><xsl:value-of select="$myparam"/> (Valuation report)</xsl:when>
      		<xsl:when test="$myparam='830'"><xsl:value-of select="$myparam"/> (Goods declaration for exportation)</xsl:when>
      		<xsl:when test="$myparam='831'"><xsl:value-of select="$myparam"/> (Claim history certificate)</xsl:when>
      		<xsl:when test="$myparam='832'"><xsl:value-of select="$myparam"/> (Accounting statement)</xsl:when>
      		<xsl:when test="$myparam='833'"><xsl:value-of select="$myparam"/> (Cargo declaration (departure))</xsl:when>
      		<xsl:when test="$myparam='834'"><xsl:value-of select="$myparam"/> (Payment receipt confirmation)</xsl:when>
      		<xsl:when test="$myparam='835'"><xsl:value-of select="$myparam"/> (Certificate of paid insurance premium)</xsl:when>
      		<xsl:when test="$myparam='836'"><xsl:value-of select="$myparam"/> (Insured party payment report)</xsl:when>
      		<xsl:when test="$myparam='837'"><xsl:value-of select="$myparam"/> (Third party payment report)</xsl:when>
      		<xsl:when test="$myparam='838'"><xsl:value-of select="$myparam"/> (Direct debit authorisation)</xsl:when>
      		<xsl:when test="$myparam='839'"><xsl:value-of select="$myparam"/> (Physician report)</xsl:when>
      		<xsl:when test="$myparam='840'"><xsl:value-of select="$myparam"/> (Application for goods control certificate)</xsl:when>
      		<xsl:when test="$myparam='841'"><xsl:value-of select="$myparam"/> (Goods control certificate)</xsl:when>
      		<xsl:when test="$myparam='842'"><xsl:value-of select="$myparam"/> (Medical certificate)</xsl:when>
      		<xsl:when test="$myparam='843'"><xsl:value-of select="$myparam"/> (Witness report)</xsl:when>
      		<xsl:when test="$myparam='844'"><xsl:value-of select="$myparam"/> (Calculation note)</xsl:when>
      		<xsl:when test="$myparam='845'"><xsl:value-of select="$myparam"/> (Communication from opposite party)</xsl:when>
      		<xsl:when test="$myparam='846'"><xsl:value-of select="$myparam"/> (Amicable agreement)</xsl:when>
      		<xsl:when test="$myparam='847'"><xsl:value-of select="$myparam"/> (Out of court settlement)</xsl:when>
      		<xsl:when test="$myparam='848'"><xsl:value-of select="$myparam"/> (Legal action)</xsl:when>
      		<xsl:when test="$myparam='849'"><xsl:value-of select="$myparam"/> (Summons)</xsl:when>
      		<xsl:when test="$myparam='850'"><xsl:value-of select="$myparam"/> (Application for phytosanitary certificate)</xsl:when>
      		<xsl:when test="$myparam='851'"><xsl:value-of select="$myparam"/> (Phytosanitary certificate)</xsl:when>
      		<xsl:when test="$myparam='852'"><xsl:value-of select="$myparam"/> (Sanitary certificate)</xsl:when>
      		<xsl:when test="$myparam='853'"><xsl:value-of select="$myparam"/> (Veterinary certificate)</xsl:when>
      		<xsl:when test="$myparam='854'"><xsl:value-of select="$myparam"/> (Court judgment)</xsl:when>
      		<xsl:when test="$myparam='855'"><xsl:value-of select="$myparam"/> (Application for inspection certificate)</xsl:when>
      		<xsl:when test="$myparam='856'"><xsl:value-of select="$myparam"/> (Inspection certificate)</xsl:when>
      		<xsl:when test="$myparam='857'"><xsl:value-of select="$myparam"/> (Vehicle aboard document)</xsl:when>
      		<xsl:when test="$myparam='858'"><xsl:value-of select="$myparam"/> (Image)</xsl:when>
      		<xsl:when test="$myparam='859'"><xsl:value-of select="$myparam"/> (Audio)</xsl:when>
      		<xsl:when test="$myparam='860'"><xsl:value-of select="$myparam"/> (Certificate of origin, application for)</xsl:when>
      		<xsl:when test="$myparam='861'"><xsl:value-of select="$myparam"/> (Certificate of origin)</xsl:when>
      		<xsl:when test="$myparam='862'"><xsl:value-of select="$myparam"/> (Declaration of origin)</xsl:when>
      		<xsl:when test="$myparam='863'"><xsl:value-of select="$myparam"/> (Regional appellation certificate)</xsl:when>
      		<xsl:when test="$myparam='864'"><xsl:value-of select="$myparam"/> (Preference certificate of origin)</xsl:when>
      		<xsl:when test="$myparam='865'"><xsl:value-of select="$myparam"/> (Certificate of origin form GSP)</xsl:when>
      		<xsl:when test="$myparam='866'"><xsl:value-of select="$myparam"/> (Video)</xsl:when>
      		<xsl:when test="$myparam='867'"><xsl:value-of select="$myparam"/> (Introductory letter)</xsl:when>
      		<xsl:when test="$myparam='868'"><xsl:value-of select="$myparam"/> (Data protection regulations statement)</xsl:when>
      		<xsl:when test="$myparam='869'"><xsl:value-of select="$myparam"/> (Exclusive brokerage mandate)</xsl:when>
      		<xsl:when test="$myparam='870'"><xsl:value-of select="$myparam"/> (Consular invoice)</xsl:when>
      		<xsl:when test="$myparam='871'"><xsl:value-of select="$myparam"/> (Inquiry mandate)</xsl:when>
      		<xsl:when test="$myparam='872'"><xsl:value-of select="$myparam"/> (Risk analysis)</xsl:when>
      		<xsl:when test="$myparam='873'"><xsl:value-of select="$myparam"/> (Transport equipment movement report, partial)</xsl:when>
      		<xsl:when test="$myparam='874'"><xsl:value-of select="$myparam"/> (Conveyance declaration)</xsl:when>
      		<xsl:when test="$myparam='875'"><xsl:value-of select="$myparam"/> (Partial construction invoice)</xsl:when>
      		<xsl:when test="$myparam='876'"><xsl:value-of select="$myparam"/> (Partial final construction invoice)</xsl:when>
      		<xsl:when test="$myparam='877'"><xsl:value-of select="$myparam"/> (Final construction invoice)</xsl:when>
      		<xsl:when test="$myparam='878'"><xsl:value-of select="$myparam"/> (AEO Certificate of Security and/or Safety)</xsl:when>
      		<xsl:when test="$myparam='879'"><xsl:value-of select="$myparam"/> (AEO Certificate of Conformity or Compliance)</xsl:when>
      		<xsl:when test="$myparam='890'"><xsl:value-of select="$myparam"/> (Dangerous goods declaration)</xsl:when>
      		<xsl:when test="$myparam='891'"><xsl:value-of select="$myparam"/> (AEO Certificate Full)</xsl:when>
      		<xsl:when test="$myparam='892'"><xsl:value-of select="$myparam"/> (Purchase Order Financing Request)</xsl:when>
      		<xsl:when test="$myparam='893'"><xsl:value-of select="$myparam"/> (Purchase Order Financing Request Status)</xsl:when>
      		<xsl:when test="$myparam='894'"><xsl:value-of select="$myparam"/> (Purchase Order Financing Request Cancellation)</xsl:when>
      		<xsl:when test="$myparam='895'"><xsl:value-of select="$myparam"/> (Statistical document, export)</xsl:when>
      		<xsl:when test="$myparam='896'"><xsl:value-of select="$myparam"/> (INTRASTAT declaration)</xsl:when>
      		<xsl:when test="$myparam='901'"><xsl:value-of select="$myparam"/> (Delivery verification certificate)</xsl:when>
      		<xsl:when test="$myparam='910'"><xsl:value-of select="$myparam"/> (Import licence, application for)</xsl:when>
      		<xsl:when test="$myparam='911'"><xsl:value-of select="$myparam"/> (Import licence)</xsl:when>
      		<xsl:when test="$myparam='913'"><xsl:value-of select="$myparam"/> (Customs declaration without commercial detail)</xsl:when>
      		<xsl:when test="$myparam='914'"><xsl:value-of select="$myparam"/> (Customs declaration with commercial and item detail)</xsl:when>
      		<xsl:when test="$myparam='915'"><xsl:value-of select="$myparam"/> (Customs declaration without item detail)</xsl:when>
      		<xsl:when test="$myparam='916'"><xsl:value-of select="$myparam"/> (Related document)</xsl:when>
      		<xsl:when test="$myparam='917'"><xsl:value-of select="$myparam"/> (Receipt (Customs))</xsl:when>
      		<xsl:when test="$myparam='925'"><xsl:value-of select="$myparam"/> (Application for exchange allocation)</xsl:when>
      		<xsl:when test="$myparam='926'"><xsl:value-of select="$myparam"/> (Foreign exchange permit)</xsl:when>
      		<xsl:when test="$myparam='927'"><xsl:value-of select="$myparam"/> (Exchange control declaration (import))</xsl:when>
      		<xsl:when test="$myparam='929'"><xsl:value-of select="$myparam"/> (Goods declaration for importation)</xsl:when>
      		<xsl:when test="$myparam='930'"><xsl:value-of select="$myparam"/> (Goods declaration for home use)</xsl:when>
      		<xsl:when test="$myparam='931'"><xsl:value-of select="$myparam"/> (Customs immediate release declaration)</xsl:when>
      		<xsl:when test="$myparam='932'"><xsl:value-of select="$myparam"/> (Customs delivery note)</xsl:when>
      		<xsl:when test="$myparam='933'"><xsl:value-of select="$myparam"/> (Cargo declaration (arrival))</xsl:when>
      		<xsl:when test="$myparam='934'"><xsl:value-of select="$myparam"/> (Value declaration)</xsl:when>
      		<xsl:when test="$myparam='935'"><xsl:value-of select="$myparam"/> (Customs invoice)</xsl:when>
      		<xsl:when test="$myparam='936'"><xsl:value-of select="$myparam"/> (Customs declaration (post parcels))</xsl:when>
      		<xsl:when test="$myparam='937'"><xsl:value-of select="$myparam"/> (Tax declaration (value added tax))</xsl:when>
      		<xsl:when test="$myparam='938'"><xsl:value-of select="$myparam"/> (Tax declaration (general))</xsl:when>
      		<xsl:when test="$myparam='940'"><xsl:value-of select="$myparam"/> (Tax demand)</xsl:when>
      		<xsl:when test="$myparam='941'"><xsl:value-of select="$myparam"/> (Embargo permit)</xsl:when>
      		<xsl:when test="$myparam='950'"><xsl:value-of select="$myparam"/> (Goods declaration for Customs transit)</xsl:when>
      		<xsl:when test="$myparam='951'"><xsl:value-of select="$myparam"/> (TIF form)</xsl:when>
      		<xsl:when test="$myparam='952'"><xsl:value-of select="$myparam"/> (TIR carnet)</xsl:when>
      		<xsl:when test="$myparam='953'"><xsl:value-of select="$myparam"/> (EC carnet)</xsl:when>
      		<xsl:when test="$myparam='954'"><xsl:value-of select="$myparam"/> (EUR 1 certificate of origin)</xsl:when>
      		<xsl:when test="$myparam='955'"><xsl:value-of select="$myparam"/> (ATA carnet)</xsl:when>
      		<xsl:when test="$myparam='960'"><xsl:value-of select="$myparam"/> (Single administrative document)</xsl:when>
      		<xsl:when test="$myparam='961'"><xsl:value-of select="$myparam"/> (General response (Customs))</xsl:when>
      		<xsl:when test="$myparam='962'"><xsl:value-of select="$myparam"/> (Document response (Customs))</xsl:when>
      		<xsl:when test="$myparam='963'"><xsl:value-of select="$myparam"/> (Error response (Customs))</xsl:when>
      		<xsl:when test="$myparam='964'"><xsl:value-of select="$myparam"/> (Package response (Customs))</xsl:when>
      		<xsl:when test="$myparam='965'"><xsl:value-of select="$myparam"/> (Tax calculation/confirmation response (Customs))</xsl:when>
      		<xsl:when test="$myparam='966'"><xsl:value-of select="$myparam"/> (Quota prior allocation certificate)</xsl:when>
      		<xsl:when test="$myparam='970'"><xsl:value-of select="$myparam"/> (Wagon report)</xsl:when>
      		<xsl:when test="$myparam='971'"><xsl:value-of select="$myparam"/> (Transit Conveyor Document)</xsl:when>
      		<xsl:when test="$myparam='972'"><xsl:value-of select="$myparam"/> (Rail consignment note forwarder copy)</xsl:when>
      		<xsl:when test="$myparam='974'"><xsl:value-of select="$myparam"/> (Duty suspended goods)</xsl:when>
      		<xsl:when test="$myparam='975'"><xsl:value-of select="$myparam"/> (Proof of transit declaration)</xsl:when>
      		<xsl:when test="$myparam='976'"><xsl:value-of select="$myparam"/> (Container transfer note)</xsl:when>
      		<xsl:when test="$myparam='977'"><xsl:value-of select="$myparam"/> (NATO transit document)</xsl:when>
      		<xsl:when test="$myparam='978'"><xsl:value-of select="$myparam"/> (Transfrontier waste shipment authorization)</xsl:when>
      		<xsl:when test="$myparam='979'"><xsl:value-of select="$myparam"/> (Transfrontier waste shipment movement document)</xsl:when>
      		<xsl:when test="$myparam='990'"><xsl:value-of select="$myparam"/> (End use authorization)</xsl:when>
      		<xsl:when test="$myparam='991'"><xsl:value-of select="$myparam"/> (Government contract)</xsl:when>
      		<xsl:when test="$myparam='995'"><xsl:value-of select="$myparam"/> (Statistical document, import)</xsl:when>
      		<xsl:when test="$myparam='996'"><xsl:value-of select="$myparam"/> (Application for documentary credit)</xsl:when>
      		<xsl:when test="$myparam='998'"><xsl:value-of select="$myparam"/> (Previous Customs document/message)</xsl:when>
   			<xsl:otherwise><xsl:value-of select="$myparam"/></xsl:otherwise>
		</xsl:choose>
	</xsl:template>

</xsl:stylesheet>