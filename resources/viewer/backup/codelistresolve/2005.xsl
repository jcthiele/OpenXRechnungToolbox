<?xml version="1.0"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template name="code.UNTDID.2005">
		<xsl:param name="myparam"/>
		<xsl:choose>
      		<xsl:when test="$myparam='1'"><xsl:value-of select="$myparam"/> (Service completion date/time, actual)</xsl:when>
      		<xsl:when test="$myparam='2'"><xsl:value-of select="$myparam"/> (Delivery date/time, requested)</xsl:when>
      		<xsl:when test="$myparam='3'"><xsl:value-of select="$myparam"/> (Invoice document issue date time)</xsl:when>
      		<xsl:when test="$myparam='4'"><xsl:value-of select="$myparam"/> (Order document issue date time)</xsl:when>
      		<xsl:when test="$myparam='5'"><xsl:value-of select="$myparam"/> (Saleable stock demand cover period, expected)</xsl:when>
      		<xsl:when test="$myparam='6'"><xsl:value-of select="$myparam"/> (Moved from location date)</xsl:when>
      		<xsl:when test="$myparam='7'"><xsl:value-of select="$myparam"/> (Effective from date/time)</xsl:when>
      		<xsl:when test="$myparam='8'"><xsl:value-of select="$myparam"/> (Order received date/time)</xsl:when>
      		<xsl:when test="$myparam='9'"><xsl:value-of select="$myparam"/> (Processing date/time)</xsl:when>
      		<xsl:when test="$myparam='10'"><xsl:value-of select="$myparam"/> (Shipment date/time, requested)</xsl:when>
      		<xsl:when test="$myparam='11'"><xsl:value-of select="$myparam"/> (Despatch date and or time)</xsl:when>
      		<xsl:when test="$myparam='12'"><xsl:value-of select="$myparam"/> (Terms discount due date/time)</xsl:when>
      		<xsl:when test="$myparam='13'"><xsl:value-of select="$myparam"/> (Terms net due date)</xsl:when>
      		<xsl:when test="$myparam='14'"><xsl:value-of select="$myparam"/> (Payment date/time, deferred)</xsl:when>
      		<xsl:when test="$myparam='15'"><xsl:value-of select="$myparam"/> (Promotion start date/time)</xsl:when>
      		<xsl:when test="$myparam='16'"><xsl:value-of select="$myparam"/> (Promotion end date/time)</xsl:when>
      		<xsl:when test="$myparam='17'"><xsl:value-of select="$myparam"/> (Delivery date/time, estimated)</xsl:when>
      		<xsl:when test="$myparam='18'"><xsl:value-of select="$myparam"/> (Installation date/time/period)</xsl:when>
      		<xsl:when test="$myparam='19'"><xsl:value-of select="$myparam"/> (Meat ageing period)</xsl:when>
      		<xsl:when test="$myparam='20'"><xsl:value-of select="$myparam"/> (Cheque date/time)</xsl:when>
      		<xsl:when test="$myparam='21'"><xsl:value-of select="$myparam"/> (Charge back date/time)</xsl:when>
      		<xsl:when test="$myparam='22'"><xsl:value-of select="$myparam"/> (Freight bill date/time)</xsl:when>
      		<xsl:when test="$myparam='23'"><xsl:value-of select="$myparam"/> (Equipment reconditioning date/time, actual)</xsl:when>
      		<xsl:when test="$myparam='24'"><xsl:value-of select="$myparam"/> (Transfer note acceptance date and time)</xsl:when>
      		<xsl:when test="$myparam='35'"><xsl:value-of select="$myparam"/> (Delivery date/time, actual)</xsl:when>
      		<xsl:when test="$myparam='36'"><xsl:value-of select="$myparam"/> (Expiry date)</xsl:when>
      		<xsl:when test="$myparam='37'"><xsl:value-of select="$myparam"/> (Ship not before date/time)</xsl:when>
      		<xsl:when test="$myparam='38'"><xsl:value-of select="$myparam"/> (Ship not later than date/time)</xsl:when>
      		<xsl:when test="$myparam='39'"><xsl:value-of select="$myparam"/> (Ship week of date)</xsl:when>
      		<xsl:when test="$myparam='40'"><xsl:value-of select="$myparam"/> (Clinical information issue date and/or time)</xsl:when>
      		<xsl:when test="$myparam='41'"><xsl:value-of select="$myparam"/> (Event duration, expected)</xsl:when>
      		<xsl:when test="$myparam='42'"><xsl:value-of select="$myparam"/> (Superseded date/time)</xsl:when>
      		<xsl:when test="$myparam='43'"><xsl:value-of select="$myparam"/> (Event duration, intended)</xsl:when>
      		<xsl:when test="$myparam='44'"><xsl:value-of select="$myparam"/> (Availability)</xsl:when>
      		<xsl:when test="$myparam='45'"><xsl:value-of select="$myparam"/> (Compilation date and time)</xsl:when>
      		<xsl:when test="$myparam='46'"><xsl:value-of select="$myparam"/> (Cancellation date)</xsl:when>
      		<xsl:when test="$myparam='47'"><xsl:value-of select="$myparam"/> (Statistical time series date)</xsl:when>
      		<xsl:when test="$myparam='48'"><xsl:value-of select="$myparam"/> (Duration)</xsl:when>
      		<xsl:when test="$myparam='49'"><xsl:value-of select="$myparam"/> (Deliver not before and not after dates)</xsl:when>
      		<xsl:when test="$myparam='50'"><xsl:value-of select="$myparam"/> (Goods receipt date/time)</xsl:when>
      		<xsl:when test="$myparam='51'"><xsl:value-of select="$myparam"/> (Cumulative quantity start date)</xsl:when>
      		<xsl:when test="$myparam='52'"><xsl:value-of select="$myparam"/> (Cumulative quantity end date)</xsl:when>
      		<xsl:when test="$myparam='53'"><xsl:value-of select="$myparam"/> (Buyer's local time)</xsl:when>
      		<xsl:when test="$myparam='54'"><xsl:value-of select="$myparam"/> (Seller's local time)</xsl:when>
      		<xsl:when test="$myparam='55'"><xsl:value-of select="$myparam"/> (Confirmed date/time)</xsl:when>
      		<xsl:when test="$myparam='56'"><xsl:value-of select="$myparam"/> (Original authorisation date and/or time)</xsl:when>
      		<xsl:when test="$myparam='57'"><xsl:value-of select="$myparam"/> (Precaution relevant period)</xsl:when>
      		<xsl:when test="$myparam='58'"><xsl:value-of select="$myparam"/> (Clearance date (Customs))</xsl:when>
      		<xsl:when test="$myparam='59'"><xsl:value-of select="$myparam"/> (Inbound movement authorization date)</xsl:when>
      		<xsl:when test="$myparam='60'"><xsl:value-of select="$myparam"/> (Engineering change level date)</xsl:when>
      		<xsl:when test="$myparam='61'"><xsl:value-of select="$myparam"/> (Cancel if not delivered by this date)</xsl:when>
      		<xsl:when test="$myparam='62'"><xsl:value-of select="$myparam"/> (Excluded date)</xsl:when>
      		<xsl:when test="$myparam='63'"><xsl:value-of select="$myparam"/> (Delivery date time, last)</xsl:when>
      		<xsl:when test="$myparam='64'"><xsl:value-of select="$myparam"/> (Delivery date/time, earliest)</xsl:when>
      		<xsl:when test="$myparam='65'"><xsl:value-of select="$myparam"/> (Delivery date/time, 1st schedule)</xsl:when>
      		<xsl:when test="$myparam='66'"><xsl:value-of select="$myparam"/> (Excluded period)</xsl:when>
      		<xsl:when test="$myparam='67'"><xsl:value-of select="$myparam"/> (Delivery date/time, current schedule)</xsl:when>
      		<xsl:when test="$myparam='68'"><xsl:value-of select="$myparam"/> (Additional period)</xsl:when>
      		<xsl:when test="$myparam='69'"><xsl:value-of select="$myparam"/> (Delivery date time, promised before)</xsl:when>
      		<xsl:when test="$myparam='70'"><xsl:value-of select="$myparam"/> (Additional date)</xsl:when>
      		<xsl:when test="$myparam='71'"><xsl:value-of select="$myparam"/> (Delivery date/time, requested for (after and including))</xsl:when>
      		<xsl:when test="$myparam='72'"><xsl:value-of select="$myparam"/> (Delivery date/time, promised for (after and including))</xsl:when>
      		<xsl:when test="$myparam='73'"><xsl:value-of select="$myparam"/> (Guarantee period)</xsl:when>
      		<xsl:when test="$myparam='74'"><xsl:value-of select="$myparam"/> (Delivery date/time, requested for (prior to and including))</xsl:when>
      		<xsl:when test="$myparam='75'"><xsl:value-of select="$myparam"/> (Delivery date/time, promised for (prior to and including))</xsl:when>
      		<xsl:when test="$myparam='76'"><xsl:value-of select="$myparam"/> (Delivery date/time, scheduled for)</xsl:when>
      		<xsl:when test="$myparam='77'"><xsl:value-of select="$myparam"/> (Specification revision date)</xsl:when>
      		<xsl:when test="$myparam='78'"><xsl:value-of select="$myparam"/> (Event date/time/period, actual)</xsl:when>
      		<xsl:when test="$myparam='79'"><xsl:value-of select="$myparam"/> (Shipment date/time, promised for)</xsl:when>
      		<xsl:when test="$myparam='80'"><xsl:value-of select="$myparam"/> (Planning end date and/or time, actual)</xsl:when>
      		<xsl:when test="$myparam='81'"><xsl:value-of select="$myparam"/> (Shipment date/time, requested for (after and including))</xsl:when>
      		<xsl:when test="$myparam='82'"><xsl:value-of select="$myparam"/> (Medicine administration time)</xsl:when>
      		<xsl:when test="$myparam='83'"><xsl:value-of select="$myparam"/> (Dispensing interval, minimum)</xsl:when>
      		<xsl:when test="$myparam='84'"><xsl:value-of select="$myparam"/> (Shipment date/time, requested for (prior to and including))</xsl:when>
      		<xsl:when test="$myparam='85'"><xsl:value-of select="$myparam"/> (Shipment date/time, promised for (prior to and including))</xsl:when>
      		<xsl:when test="$myparam='86'"><xsl:value-of select="$myparam"/> (Medication date/time, start)</xsl:when>
      		<xsl:when test="$myparam='87'"><xsl:value-of select="$myparam"/> (Travel service connection time)</xsl:when>
      		<xsl:when test="$myparam='88'"><xsl:value-of select="$myparam"/> (Summer time, start)</xsl:when>
      		<xsl:when test="$myparam='89'"><xsl:value-of select="$myparam"/> (Inquiry date)</xsl:when>
      		<xsl:when test="$myparam='90'"><xsl:value-of select="$myparam"/> (Report start date)</xsl:when>
      		<xsl:when test="$myparam='91'"><xsl:value-of select="$myparam"/> (Report end date)</xsl:when>
      		<xsl:when test="$myparam='92'"><xsl:value-of select="$myparam"/> (Contract effective date)</xsl:when>
      		<xsl:when test="$myparam='93'"><xsl:value-of select="$myparam"/> (Contract expiry date)</xsl:when>
      		<xsl:when test="$myparam='94'"><xsl:value-of select="$myparam"/> (Production/manufacture date)</xsl:when>
      		<xsl:when test="$myparam='95'"><xsl:value-of select="$myparam"/> (Bill of lading date)</xsl:when>
      		<xsl:when test="$myparam='96'"><xsl:value-of select="$myparam"/> (Discharge date/time)</xsl:when>
      		<xsl:when test="$myparam='97'"><xsl:value-of select="$myparam"/> (Transaction creation date)</xsl:when>
      		<xsl:when test="$myparam='98'"><xsl:value-of select="$myparam"/> (Winter time, start)</xsl:when>
      		<xsl:when test="$myparam='99'"><xsl:value-of select="$myparam"/> (Quotation opening date)</xsl:when>
      		<xsl:when test="$myparam='100'"><xsl:value-of select="$myparam"/> (Product ageing period before delivery)</xsl:when>
      		<xsl:when test="$myparam='101'"><xsl:value-of select="$myparam"/> (Production date, no schedule established as of)</xsl:when>
      		<xsl:when test="$myparam='102'"><xsl:value-of select="$myparam"/> (Health problem period)</xsl:when>
      		<xsl:when test="$myparam='103'"><xsl:value-of select="$myparam"/> (Closing date/time for breakbulk STORO)</xsl:when>
      		<xsl:when test="$myparam='104'"><xsl:value-of select="$myparam"/> (Closing date/time for container RO-RO)</xsl:when>
      		<xsl:when test="$myparam='105'"><xsl:value-of select="$myparam"/> (Starting date/time for breakbulk STORO)</xsl:when>
      		<xsl:when test="$myparam='106'"><xsl:value-of select="$myparam"/> (Starting date/time for container RO-RO)</xsl:when>
      		<xsl:when test="$myparam='107'"><xsl:value-of select="$myparam"/> (Deposit date/time)</xsl:when>
      		<xsl:when test="$myparam='108'"><xsl:value-of select="$myparam"/> (Postmark date/time)</xsl:when>
      		<xsl:when test="$myparam='109'"><xsl:value-of select="$myparam"/> (Receive at lockbox date)</xsl:when>
      		<xsl:when test="$myparam='110'"><xsl:value-of select="$myparam"/> (Ship date, originally scheduled)</xsl:when>
      		<xsl:when test="$myparam='111'"><xsl:value-of select="$myparam"/> (Manifest/ship notice date)</xsl:when>
      		<xsl:when test="$myparam='112'"><xsl:value-of select="$myparam"/> (First interest-bearing date)</xsl:when>
      		<xsl:when test="$myparam='113'"><xsl:value-of select="$myparam"/> (Sample required date)</xsl:when>
      		<xsl:when test="$myparam='114'"><xsl:value-of select="$myparam"/> (Tooling required date)</xsl:when>
      		<xsl:when test="$myparam='115'"><xsl:value-of select="$myparam"/> (Sample available date)</xsl:when>
      		<xsl:when test="$myparam='116'"><xsl:value-of select="$myparam"/> (Equipment return period, expected)</xsl:when>
      		<xsl:when test="$myparam='117'"><xsl:value-of select="$myparam"/> (Delivery date/time, first)</xsl:when>
      		<xsl:when test="$myparam='118'"><xsl:value-of select="$myparam"/> (Cargo booking confirmed date/time)</xsl:when>
      		<xsl:when test="$myparam='119'"><xsl:value-of select="$myparam"/> (Test completion date)</xsl:when>
      		<xsl:when test="$myparam='120'"><xsl:value-of select="$myparam"/> (Last interest-bearing date)</xsl:when>
      		<xsl:when test="$myparam='121'"><xsl:value-of select="$myparam"/> (Entry date)</xsl:when>
      		<xsl:when test="$myparam='122'"><xsl:value-of select="$myparam"/> (Contract completion date)</xsl:when>
      		<xsl:when test="$myparam='123'"><xsl:value-of select="$myparam"/> (Documentary credit expiry date/time)</xsl:when>
      		<xsl:when test="$myparam='124'"><xsl:value-of select="$myparam"/> (Despatch note document issue date time)</xsl:when>
      		<xsl:when test="$myparam='125'"><xsl:value-of select="$myparam"/> (Import permit issue date time)</xsl:when>
      		<xsl:when test="$myparam='126'"><xsl:value-of select="$myparam"/> (Contract document issue date time)</xsl:when>
      		<xsl:when test="$myparam='127'"><xsl:value-of select="$myparam"/> (Previous report date)</xsl:when>
      		<xsl:when test="$myparam='128'"><xsl:value-of select="$myparam"/> (Delivery date/time, last)</xsl:when>
      		<xsl:when test="$myparam='129'"><xsl:value-of select="$myparam"/> (Exportation date)</xsl:when>
      		<xsl:when test="$myparam='130'"><xsl:value-of select="$myparam"/> (Current report date)</xsl:when>
      		<xsl:when test="$myparam='131'"><xsl:value-of select="$myparam"/> (Tax point date time)</xsl:when>
      		<xsl:when test="$myparam='132'"><xsl:value-of select="$myparam"/> (Transport means arrival date time, estimated)</xsl:when>
      		<xsl:when test="$myparam='133'"><xsl:value-of select="$myparam"/> (Transport means departure date/time, estimated)</xsl:when>
      		<xsl:when test="$myparam='134'"><xsl:value-of select="$myparam"/> (Rate of exchange date/time)</xsl:when>
      		<xsl:when test="$myparam='135'"><xsl:value-of select="$myparam"/> (Telex date)</xsl:when>
      		<xsl:when test="$myparam='136'"><xsl:value-of select="$myparam"/> (Transport means departure date time, actual)</xsl:when>
      		<xsl:when test="$myparam='137'"><xsl:value-of select="$myparam"/> (Document issue date time)</xsl:when>
      		<xsl:when test="$myparam='138'"><xsl:value-of select="$myparam"/> (Payment availability date time)</xsl:when>
      		<xsl:when test="$myparam='139'"><xsl:value-of select="$myparam"/> (Property mortgage date, start)</xsl:when>
      		<xsl:when test="$myparam='140'"><xsl:value-of select="$myparam"/> (Payment due date)</xsl:when>
      		<xsl:when test="$myparam='141'"><xsl:value-of select="$myparam"/> (Customs declaration document lodgement date time)</xsl:when>
      		<xsl:when test="$myparam='142'"><xsl:value-of select="$myparam"/> (Labour wage determination date)</xsl:when>
      		<xsl:when test="$myparam='143'"><xsl:value-of select="$myparam"/> (Consignment acceptance date time, actual)</xsl:when>
      		<xsl:when test="$myparam='144'"><xsl:value-of select="$myparam"/> (Quota date)</xsl:when>
      		<xsl:when test="$myparam='145'"><xsl:value-of select="$myparam"/> (Event date)</xsl:when>
      		<xsl:when test="$myparam='146'"><xsl:value-of select="$myparam"/> (Entry date, estimated (Customs))</xsl:when>
      		<xsl:when test="$myparam='147'"><xsl:value-of select="$myparam"/> (Export permit effective end date time)</xsl:when>
      		<xsl:when test="$myparam='148'"><xsl:value-of select="$myparam"/> (Goods declaration document acceptance date time)</xsl:when>
      		<xsl:when test="$myparam='149'"><xsl:value-of select="$myparam"/> (Invoice date, required)</xsl:when>
      		<xsl:when test="$myparam='150'"><xsl:value-of select="$myparam"/> (Declaration/presentation date)</xsl:when>
      		<xsl:when test="$myparam='151'"><xsl:value-of select="$myparam"/> (Importation date)</xsl:when>
      		<xsl:when test="$myparam='152'"><xsl:value-of select="$myparam"/> (Exportation date for textiles)</xsl:when>
      		<xsl:when test="$myparam='153'"><xsl:value-of select="$myparam"/> (Cancellation date/time, latest)</xsl:when>
      		<xsl:when test="$myparam='154'"><xsl:value-of select="$myparam"/> (Acceptance date of document)</xsl:when>
      		<xsl:when test="$myparam='155'"><xsl:value-of select="$myparam"/> (Accounting period start date)</xsl:when>
      		<xsl:when test="$myparam='156'"><xsl:value-of select="$myparam"/> (Accounting period end date)</xsl:when>
      		<xsl:when test="$myparam='157'"><xsl:value-of select="$myparam"/> (Validity start date)</xsl:when>
      		<xsl:when test="$myparam='158'"><xsl:value-of select="$myparam"/> (Horizon start date)</xsl:when>
      		<xsl:when test="$myparam='159'"><xsl:value-of select="$myparam"/> (Horizon end date)</xsl:when>
      		<xsl:when test="$myparam='160'"><xsl:value-of select="$myparam"/> (Authorization date)</xsl:when>
      		<xsl:when test="$myparam='161'"><xsl:value-of select="$myparam"/> (Release date of customer)</xsl:when>
      		<xsl:when test="$myparam='162'"><xsl:value-of select="$myparam"/> (Release date of supplier)</xsl:when>
      		<xsl:when test="$myparam='163'"><xsl:value-of select="$myparam"/> (Processing start date/time)</xsl:when>
      		<xsl:when test="$myparam='164'"><xsl:value-of select="$myparam"/> (Processing end date/time)</xsl:when>
      		<xsl:when test="$myparam='165'"><xsl:value-of select="$myparam"/> (Tax period start date)</xsl:when>
      		<xsl:when test="$myparam='166'"><xsl:value-of select="$myparam"/> (Tax period end date)</xsl:when>
      		<xsl:when test="$myparam='167'"><xsl:value-of select="$myparam"/> (Charge period start date)</xsl:when>
      		<xsl:when test="$myparam='168'"><xsl:value-of select="$myparam"/> (Charge period end date)</xsl:when>
      		<xsl:when test="$myparam='169'"><xsl:value-of select="$myparam"/> (Lead time)</xsl:when>
      		<xsl:when test="$myparam='170'"><xsl:value-of select="$myparam"/> (Settlement due date)</xsl:when>
      		<xsl:when test="$myparam='171'"><xsl:value-of select="$myparam"/> (Reference date/time)</xsl:when>
      		<xsl:when test="$myparam='172'"><xsl:value-of select="$myparam"/> (Hired from date)</xsl:when>
      		<xsl:when test="$myparam='173'"><xsl:value-of select="$myparam"/> (Hired until date)</xsl:when>
      		<xsl:when test="$myparam='174'"><xsl:value-of select="$myparam"/> (Advise after date/time)</xsl:when>
      		<xsl:when test="$myparam='175'"><xsl:value-of select="$myparam"/> (Advise before date/time)</xsl:when>
      		<xsl:when test="$myparam='176'"><xsl:value-of select="$myparam"/> (Advise completed date/time)</xsl:when>
      		<xsl:when test="$myparam='177'"><xsl:value-of select="$myparam"/> (Advise on date/time)</xsl:when>
      		<xsl:when test="$myparam='178'"><xsl:value-of select="$myparam"/> (Transport means arrival date time, actual)</xsl:when>
      		<xsl:when test="$myparam='179'"><xsl:value-of select="$myparam"/> (Booking date/time)</xsl:when>
      		<xsl:when test="$myparam='180'"><xsl:value-of select="$myparam"/> (Closing date/time)</xsl:when>
      		<xsl:when test="$myparam='181'"><xsl:value-of select="$myparam"/> (Positioning date/time of equipment)</xsl:when>
      		<xsl:when test="$myparam='182'"><xsl:value-of select="$myparam"/> (Issue date)</xsl:when>
      		<xsl:when test="$myparam='183'"><xsl:value-of select="$myparam"/> (Date, as at)</xsl:when>
      		<xsl:when test="$myparam='184'"><xsl:value-of select="$myparam"/> (Notification date/time)</xsl:when>
      		<xsl:when test="$myparam='185'"><xsl:value-of select="$myparam"/> (Commenced tank cleaning date/time)</xsl:when>
      		<xsl:when test="$myparam='186'"><xsl:value-of select="$myparam"/> (Transport means departure date/time, actual)</xsl:when>
      		<xsl:when test="$myparam='187'"><xsl:value-of select="$myparam"/> (Authentication date/time of document)</xsl:when>
      		<xsl:when test="$myparam='188'"><xsl:value-of select="$myparam"/> (Previous current account date)</xsl:when>
      		<xsl:when test="$myparam='189'"><xsl:value-of select="$myparam"/> (Transport means departure date/time, scheduled)</xsl:when>
      		<xsl:when test="$myparam='190'"><xsl:value-of select="$myparam"/> (Transhipment date/time)</xsl:when>
      		<xsl:when test="$myparam='191'"><xsl:value-of select="$myparam"/> (Delivery date/time, expected)</xsl:when>
      		<xsl:when test="$myparam='192'"><xsl:value-of select="$myparam"/> (Expiration date/time of customs document)</xsl:when>
      		<xsl:when test="$myparam='193'"><xsl:value-of select="$myparam"/> (Execution date)</xsl:when>
      		<xsl:when test="$myparam='194'"><xsl:value-of select="$myparam"/> (Start date/time)</xsl:when>
      		<xsl:when test="$myparam='195'"><xsl:value-of select="$myparam"/> (Import permit effective end date time)</xsl:when>
      		<xsl:when test="$myparam='196'"><xsl:value-of select="$myparam"/> (Transport means departure date/time, earliest)</xsl:when>
      		<xsl:when test="$myparam='197'"><xsl:value-of select="$myparam"/> (Lay-time first day)</xsl:when>
      		<xsl:when test="$myparam='198'"><xsl:value-of select="$myparam"/> (Lay-time last day)</xsl:when>
      		<xsl:when test="$myparam='199'"><xsl:value-of select="$myparam"/> (Positioning date/time of goods)</xsl:when>
      		<xsl:when test="$myparam='200'"><xsl:value-of select="$myparam"/> (Cargo pick-up date / time)</xsl:when>
      		<xsl:when test="$myparam='201'"><xsl:value-of select="$myparam"/> (Equipment pick-up date / time)</xsl:when>
      		<xsl:when test="$myparam='202'"><xsl:value-of select="$myparam"/> (Posting date)</xsl:when>
      		<xsl:when test="$myparam='203'"><xsl:value-of select="$myparam"/> (Execution date/time, requested)</xsl:when>
      		<xsl:when test="$myparam='204'"><xsl:value-of select="$myparam"/> (Release date (Customs))</xsl:when>
      		<xsl:when test="$myparam='205'"><xsl:value-of select="$myparam"/> (Settlement date)</xsl:when>
      		<xsl:when test="$myparam='206'"><xsl:value-of select="$myparam"/> (End date/time)</xsl:when>
      		<xsl:when test="$myparam='207'"><xsl:value-of select="$myparam"/> (Commenced pumping ballast date/time)</xsl:when>
      		<xsl:when test="$myparam='208'"><xsl:value-of select="$myparam"/> (Transport means departure date/time, ultimate)</xsl:when>
      		<xsl:when test="$myparam='209'"><xsl:value-of select="$myparam"/> (Value date)</xsl:when>
      		<xsl:when test="$myparam='210'"><xsl:value-of select="$myparam"/> (Reinsurance current account period)</xsl:when>
      		<xsl:when test="$myparam='211'"><xsl:value-of select="$myparam"/> (360/30)</xsl:when>
      		<xsl:when test="$myparam='212'"><xsl:value-of select="$myparam"/> (360/28-31)</xsl:when>
      		<xsl:when test="$myparam='213'"><xsl:value-of select="$myparam"/> (365-6/30)</xsl:when>
      		<xsl:when test="$myparam='214'"><xsl:value-of select="$myparam"/> (365-6/28-31)</xsl:when>
      		<xsl:when test="$myparam='215'"><xsl:value-of select="$myparam"/> (365/28-31)</xsl:when>
      		<xsl:when test="$myparam='216'"><xsl:value-of select="$myparam"/> (365/30)</xsl:when>
      		<xsl:when test="$myparam='217'"><xsl:value-of select="$myparam"/> (From date of award to latest delivery)</xsl:when>
      		<xsl:when test="$myparam='218'"><xsl:value-of select="$myparam"/> (Authentication/validation date/time)</xsl:when>
      		<xsl:when test="$myparam='219'"><xsl:value-of select="$myparam"/> (Crossborder date/time)</xsl:when>
      		<xsl:when test="$myparam='220'"><xsl:value-of select="$myparam"/> (Property mortgage scheduled date, end)</xsl:when>
      		<xsl:when test="$myparam='221'"><xsl:value-of select="$myparam"/> (Interest period)</xsl:when>
      		<xsl:when test="$myparam='222'"><xsl:value-of select="$myparam"/> (Presentation date, latest)</xsl:when>
      		<xsl:when test="$myparam='223'"><xsl:value-of select="$myparam"/> (Delivery date/time, deferred)</xsl:when>
      		<xsl:when test="$myparam='224'"><xsl:value-of select="$myparam"/> (Permit to admit date)</xsl:when>
      		<xsl:when test="$myparam='225'"><xsl:value-of select="$myparam"/> (Certification of weight date/time)</xsl:when>
      		<xsl:when test="$myparam='226'"><xsl:value-of select="$myparam"/> (Discrepancy date/time)</xsl:when>
      		<xsl:when test="$myparam='227'"><xsl:value-of select="$myparam"/> (Beneficiary's banks due date)</xsl:when>
      		<xsl:when test="$myparam='228'"><xsl:value-of select="$myparam"/> (Debit value date, requested)</xsl:when>
      		<xsl:when test="$myparam='229'"><xsl:value-of select="$myparam"/> (Hoses connected date/time)</xsl:when>
      		<xsl:when test="$myparam='230'"><xsl:value-of select="$myparam"/> (Hoses disconnected date/time)</xsl:when>
      		<xsl:when test="$myparam='231'"><xsl:value-of select="$myparam"/> (Transport means arrival date/time, earliest)</xsl:when>
      		<xsl:when test="$myparam='232'"><xsl:value-of select="$myparam"/> (Transport means arrival date/time, scheduled)</xsl:when>
      		<xsl:when test="$myparam='233'"><xsl:value-of select="$myparam"/> (Transport means arrival date/time, ultimate)</xsl:when>
      		<xsl:when test="$myparam='234'"><xsl:value-of select="$myparam"/> (Collection date/time, earliest)</xsl:when>
      		<xsl:when test="$myparam='235'"><xsl:value-of select="$myparam"/> (Collection date/time, latest)</xsl:when>
      		<xsl:when test="$myparam='236'"><xsl:value-of select="$myparam"/> (Completed pumping ballast date/time)</xsl:when>
      		<xsl:when test="$myparam='237'"><xsl:value-of select="$myparam"/> (Completed tank cleaning date/time)</xsl:when>
      		<xsl:when test="$myparam='238'"><xsl:value-of select="$myparam"/> (Tanks accepted date/time)</xsl:when>
      		<xsl:when test="$myparam='239'"><xsl:value-of select="$myparam"/> (Tanks inspected date/time)</xsl:when>
      		<xsl:when test="$myparam='240'"><xsl:value-of select="$myparam"/> (Reinsurance accounting period)</xsl:when>
      		<xsl:when test="$myparam='241'"><xsl:value-of select="$myparam"/> (From date of award to earliest delivery)</xsl:when>
      		<xsl:when test="$myparam='242'"><xsl:value-of select="$myparam"/> (Preparation date/time of document)</xsl:when>
      		<xsl:when test="$myparam='243'"><xsl:value-of select="$myparam"/> (Transmission date/time of document)</xsl:when>
      		<xsl:when test="$myparam='244'"><xsl:value-of select="$myparam"/> (Settlement date, planned)</xsl:when>
      		<xsl:when test="$myparam='245'"><xsl:value-of select="$myparam"/> (Underwriting year)</xsl:when>
      		<xsl:when test="$myparam='246'"><xsl:value-of select="$myparam"/> (Accounting year)</xsl:when>
      		<xsl:when test="$myparam='247'"><xsl:value-of select="$myparam"/> (Year of occurrence)</xsl:when>
      		<xsl:when test="$myparam='248'"><xsl:value-of select="$myparam"/> (Loss)</xsl:when>
      		<xsl:when test="$myparam='249'"><xsl:value-of select="$myparam"/> (Cash call date)</xsl:when>
      		<xsl:when test="$myparam='250'"><xsl:value-of select="$myparam"/> (Re-exportation date)</xsl:when>
      		<xsl:when test="$myparam='251'"><xsl:value-of select="$myparam"/> (Re-importation date)</xsl:when>
      		<xsl:when test="$myparam='252'"><xsl:value-of select="$myparam"/> (Arrival date/time at initial port)</xsl:when>
      		<xsl:when test="$myparam='253'"><xsl:value-of select="$myparam"/> (Departure date/time from last port of call)</xsl:when>
      		<xsl:when test="$myparam='254'"><xsl:value-of select="$myparam"/> (Registration date of previous Customs declaration)</xsl:when>
      		<xsl:when test="$myparam='255'"><xsl:value-of select="$myparam"/> (Availability due date)</xsl:when>
      		<xsl:when test="$myparam='256'"><xsl:value-of select="$myparam"/> (From date of award to completion)</xsl:when>
      		<xsl:when test="$myparam='257'"><xsl:value-of select="$myparam"/> (Calculation date time)</xsl:when>
      		<xsl:when test="$myparam='258'"><xsl:value-of select="$myparam"/> (Guarantee date)</xsl:when>
      		<xsl:when test="$myparam='259'"><xsl:value-of select="$myparam"/> (Conveyance registration date)</xsl:when>
      		<xsl:when test="$myparam='260'"><xsl:value-of select="$myparam"/> (Valuation date (Customs))</xsl:when>
      		<xsl:when test="$myparam='261'"><xsl:value-of select="$myparam"/> (Release date/time)</xsl:when>
      		<xsl:when test="$myparam='262'"><xsl:value-of select="$myparam"/> (Closure date/time/period)</xsl:when>
      		<xsl:when test="$myparam='263'"><xsl:value-of select="$myparam"/> (Invoicing period)</xsl:when>
      		<xsl:when test="$myparam='264'"><xsl:value-of select="$myparam"/> (Release frequency)</xsl:when>
      		<xsl:when test="$myparam='265'"><xsl:value-of select="$myparam"/> (Due date)</xsl:when>
      		<xsl:when test="$myparam='266'"><xsl:value-of select="$myparam"/> (Validation date)</xsl:when>
      		<xsl:when test="$myparam='267'"><xsl:value-of select="$myparam"/> (Rate/price date/time)</xsl:when>
      		<xsl:when test="$myparam='268'"><xsl:value-of select="$myparam"/> (Transit time/limits)</xsl:when>
      		<xsl:when test="$myparam='269'"><xsl:value-of select="$myparam"/> (Discharge date/time, started)</xsl:when>
      		<xsl:when test="$myparam='270'"><xsl:value-of select="$myparam"/> (Ship during date)</xsl:when>
      		<xsl:when test="$myparam='271'"><xsl:value-of select="$myparam"/> (Ship on or about date)</xsl:when>
      		<xsl:when test="$myparam='272'"><xsl:value-of select="$myparam"/> (Documentary credit presentation period)</xsl:when>
      		<xsl:when test="$myparam='273'"><xsl:value-of select="$myparam"/> (Validity period)</xsl:when>
      		<xsl:when test="$myparam='274'"><xsl:value-of select="$myparam"/> (From date of order receipt to sample ready)</xsl:when>
      		<xsl:when test="$myparam='275'"><xsl:value-of select="$myparam"/> (From date of tooling authorization to sample ready)</xsl:when>
      		<xsl:when test="$myparam='276'"><xsl:value-of select="$myparam"/> (From date of receipt of tooling aids to sample ready)</xsl:when>
      		<xsl:when test="$myparam='277'"><xsl:value-of select="$myparam"/> (From date of sample approval to first product shipment)</xsl:when>
      		<xsl:when test="$myparam='278'"><xsl:value-of select="$myparam"/> (From date of order receipt to shipment)</xsl:when>
      		<xsl:when test="$myparam='279'"><xsl:value-of select="$myparam"/> (From date of order receipt to delivery)</xsl:when>
      		<xsl:when test="$myparam='280'"><xsl:value-of select="$myparam"/> (From last booked order to delivery)</xsl:when>
      		<xsl:when test="$myparam='281'"><xsl:value-of select="$myparam"/> (Date of order lead time)</xsl:when>
      		<xsl:when test="$myparam='282'"><xsl:value-of select="$myparam"/> (Confirmation date lead time)</xsl:when>
      		<xsl:when test="$myparam='283'"><xsl:value-of select="$myparam"/> (Arrival date/time of transport lead time)</xsl:when>
      		<xsl:when test="$myparam='284'"><xsl:value-of select="$myparam"/> (Before inventory is replenished based on stock check lead time)</xsl:when>
      		<xsl:when test="$myparam='285'"><xsl:value-of select="$myparam"/> (Invitation to tender date/time)</xsl:when>
      		<xsl:when test="$myparam='286'"><xsl:value-of select="$myparam"/> (Tender submission date/time)</xsl:when>
      		<xsl:when test="$myparam='287'"><xsl:value-of select="$myparam"/> (Contract award date/time)</xsl:when>
      		<xsl:when test="$myparam='288'"><xsl:value-of select="$myparam"/> (Price base date/time)</xsl:when>
      		<xsl:when test="$myparam='289'"><xsl:value-of select="$myparam"/> (Interest rate validity period)</xsl:when>
      		<xsl:when test="$myparam='290'"><xsl:value-of select="$myparam"/> (Contractual start date/time)</xsl:when>
      		<xsl:when test="$myparam='291'"><xsl:value-of select="$myparam"/> (Start date/time, planned)</xsl:when>
      		<xsl:when test="$myparam='292'"><xsl:value-of select="$myparam"/> (Works completion date/time, planned)</xsl:when>
      		<xsl:when test="$myparam='293'"><xsl:value-of select="$myparam"/> (Works completion date/time, actual)</xsl:when>
      		<xsl:when test="$myparam='294'"><xsl:value-of select="$myparam"/> (Hand over date/time, planned)</xsl:when>
      		<xsl:when test="$myparam='295'"><xsl:value-of select="$myparam"/> (Hand over date/time, actual)</xsl:when>
      		<xsl:when test="$myparam='296'"><xsl:value-of select="$myparam"/> (Retention release date/time)</xsl:when>
      		<xsl:when test="$myparam='297'"><xsl:value-of select="$myparam"/> (Retention release date/time, partial)</xsl:when>
      		<xsl:when test="$myparam='298'"><xsl:value-of select="$myparam"/> (Goods pick-up date / time, planned)</xsl:when>
      		<xsl:when test="$myparam='299'"><xsl:value-of select="$myparam"/> (Price adjustment start date)</xsl:when>
      		<xsl:when test="$myparam='300'"><xsl:value-of select="$myparam"/> (Price adjustment limit date)</xsl:when>
      		<xsl:when test="$myparam='301'"><xsl:value-of select="$myparam"/> (Value date of index)</xsl:when>
      		<xsl:when test="$myparam='302'"><xsl:value-of select="$myparam"/> (Publication date)</xsl:when>
      		<xsl:when test="$myparam='303'"><xsl:value-of select="$myparam"/> (Escalation date)</xsl:when>
      		<xsl:when test="$myparam='304'"><xsl:value-of select="$myparam"/> (Price adjustment date)</xsl:when>
      		<xsl:when test="$myparam='305'"><xsl:value-of select="$myparam"/> (Latest price adjustment date)</xsl:when>
      		<xsl:when test="$myparam='306'"><xsl:value-of select="$myparam"/> (Work period)</xsl:when>
      		<xsl:when test="$myparam='307'"><xsl:value-of select="$myparam"/> (Payment instruction date/time)</xsl:when>
      		<xsl:when test="$myparam='308'"><xsl:value-of select="$myparam"/> (Payment valuation presentation date/time)</xsl:when>
      		<xsl:when test="$myparam='309'"><xsl:value-of select="$myparam"/> (Banks' value date)</xsl:when>
      		<xsl:when test="$myparam='310'"><xsl:value-of select="$myparam"/> (Received date/time)</xsl:when>
      		<xsl:when test="$myparam='311'"><xsl:value-of select="$myparam"/> (On)</xsl:when>
      		<xsl:when test="$myparam='312'"><xsl:value-of select="$myparam"/> (Ship not before and not after date/time)</xsl:when>
      		<xsl:when test="$myparam='313'"><xsl:value-of select="$myparam"/> (Order to proceed date)</xsl:when>
      		<xsl:when test="$myparam='314'"><xsl:value-of select="$myparam"/> (Planned duration of works)</xsl:when>
      		<xsl:when test="$myparam='315'"><xsl:value-of select="$myparam"/> (Agreement to pay date)</xsl:when>
      		<xsl:when test="$myparam='316'"><xsl:value-of select="$myparam"/> (Valuation date/time)</xsl:when>
      		<xsl:when test="$myparam='317'"><xsl:value-of select="$myparam"/> (Reply date)</xsl:when>
      		<xsl:when test="$myparam='318'"><xsl:value-of select="$myparam"/> (Request date)</xsl:when>
      		<xsl:when test="$myparam='319'"><xsl:value-of select="$myparam"/> (Customer value date)</xsl:when>
      		<xsl:when test="$myparam='320'"><xsl:value-of select="$myparam"/> (Declaration reference period)</xsl:when>
      		<xsl:when test="$myparam='321'"><xsl:value-of select="$myparam"/> (Promotion date/period)</xsl:when>
      		<xsl:when test="$myparam='322'"><xsl:value-of select="$myparam"/> (Accounting period)</xsl:when>
      		<xsl:when test="$myparam='323'"><xsl:value-of select="$myparam"/> (Horizon period)</xsl:when>
      		<xsl:when test="$myparam='324'"><xsl:value-of select="$myparam"/> (Processing date/period)</xsl:when>
      		<xsl:when test="$myparam='325'"><xsl:value-of select="$myparam"/> (Tax period)</xsl:when>
      		<xsl:when test="$myparam='326'"><xsl:value-of select="$myparam"/> (Charge period)</xsl:when>
      		<xsl:when test="$myparam='327'"><xsl:value-of select="$myparam"/> (Instalment payment due date)</xsl:when>
      		<xsl:when test="$myparam='328'"><xsl:value-of select="$myparam"/> (Payroll deduction date/time)</xsl:when>
      		<xsl:when test="$myparam='329'"><xsl:value-of select="$myparam"/> (Person birth date time)</xsl:when>
      		<xsl:when test="$myparam='330'"><xsl:value-of select="$myparam"/> (Joined employer date)</xsl:when>
      		<xsl:when test="$myparam='331'"><xsl:value-of select="$myparam"/> (Contributions ceasing date/time)</xsl:when>
      		<xsl:when test="$myparam='332'"><xsl:value-of select="$myparam"/> (Contribution period end date/time)</xsl:when>
      		<xsl:when test="$myparam='333'"><xsl:value-of select="$myparam"/> (Part-time working change date/time)</xsl:when>
      		<xsl:when test="$myparam='334'"><xsl:value-of select="$myparam"/> (Status change date/time)</xsl:when>
      		<xsl:when test="$myparam='335'"><xsl:value-of select="$myparam"/> (Contribution period start date/time)</xsl:when>
      		<xsl:when test="$myparam='336'"><xsl:value-of select="$myparam"/> (Salary change effective date)</xsl:when>
      		<xsl:when test="$myparam='337'"><xsl:value-of select="$myparam"/> (Left employer date)</xsl:when>
      		<xsl:when test="$myparam='338'"><xsl:value-of select="$myparam"/> (Benefit change date/time)</xsl:when>
      		<xsl:when test="$myparam='339'"><xsl:value-of select="$myparam"/> (Category change date/time)</xsl:when>
      		<xsl:when test="$myparam='340'"><xsl:value-of select="$myparam"/> (Joined fund date/time)</xsl:when>
      		<xsl:when test="$myparam='341'"><xsl:value-of select="$myparam"/> (Waiting time)</xsl:when>
      		<xsl:when test="$myparam='342'"><xsl:value-of select="$myparam"/> (Consignment loading date time)</xsl:when>
      		<xsl:when test="$myparam='343'"><xsl:value-of select="$myparam"/> (Date/time of discount termination)</xsl:when>
      		<xsl:when test="$myparam='344'"><xsl:value-of select="$myparam"/> (Date/time of interest due)</xsl:when>
      		<xsl:when test="$myparam='345'"><xsl:value-of select="$myparam"/> (Days of operation)</xsl:when>
      		<xsl:when test="$myparam='346'"><xsl:value-of select="$myparam"/> (Latest check-in time)</xsl:when>
      		<xsl:when test="$myparam='347'"><xsl:value-of select="$myparam"/> (Slaughtering start date)</xsl:when>
      		<xsl:when test="$myparam='348'"><xsl:value-of select="$myparam"/> (Packing start date)</xsl:when>
      		<xsl:when test="$myparam='349'"><xsl:value-of select="$myparam"/> (Packing end date)</xsl:when>
      		<xsl:when test="$myparam='350'"><xsl:value-of select="$myparam"/> (Test start date)</xsl:when>
      		<xsl:when test="$myparam='351'"><xsl:value-of select="$myparam"/> (Inspection date)</xsl:when>
      		<xsl:when test="$myparam='352'"><xsl:value-of select="$myparam"/> (Slaughtering end date)</xsl:when>
      		<xsl:when test="$myparam='353'"><xsl:value-of select="$myparam"/> (Accounting transaction date)</xsl:when>
      		<xsl:when test="$myparam='354'"><xsl:value-of select="$myparam"/> (Activity period date range)</xsl:when>
      		<xsl:when test="$myparam='355'"><xsl:value-of select="$myparam"/> (Contractual delivery date)</xsl:when>
      		<xsl:when test="$myparam='356'"><xsl:value-of select="$myparam"/> (Sales date, and or time, and or period)</xsl:when>
      		<xsl:when test="$myparam='357'"><xsl:value-of select="$myparam"/> (Cancel if not published by this date)</xsl:when>
      		<xsl:when test="$myparam='358'"><xsl:value-of select="$myparam"/> (Scheduled for delivery on or after)</xsl:when>
      		<xsl:when test="$myparam='359'"><xsl:value-of select="$myparam"/> (Scheduled for delivery on or before)</xsl:when>
      		<xsl:when test="$myparam='360'"><xsl:value-of select="$myparam"/> (Sell by date)</xsl:when>
      		<xsl:when test="$myparam='361'"><xsl:value-of select="$myparam"/> (Product best before date time)</xsl:when>
      		<xsl:when test="$myparam='362'"><xsl:value-of select="$myparam"/> (End availability date)</xsl:when>
      		<xsl:when test="$myparam='363'"><xsl:value-of select="$myparam"/> (Total shelf life period)</xsl:when>
      		<xsl:when test="$myparam='364'"><xsl:value-of select="$myparam"/> (Minimum shelf life remaining at time of despatch period)</xsl:when>
      		<xsl:when test="$myparam='365'"><xsl:value-of select="$myparam"/> (Packaging date)</xsl:when>
      		<xsl:when test="$myparam='366'"><xsl:value-of select="$myparam"/> (Inventory report date)</xsl:when>
      		<xsl:when test="$myparam='367'"><xsl:value-of select="$myparam"/> (Meter reading date, previous)</xsl:when>
      		<xsl:when test="$myparam='368'"><xsl:value-of select="$myparam"/> (Meter reading date, latest)</xsl:when>
      		<xsl:when test="$myparam='369'"><xsl:value-of select="$myparam"/> (Date and or time of handling, estimated)</xsl:when>
      		<xsl:when test="$myparam='370'"><xsl:value-of select="$myparam"/> (Date when container equipment becomes domestic)</xsl:when>
      		<xsl:when test="$myparam='371'"><xsl:value-of select="$myparam"/> (Hydrotest date)</xsl:when>
      		<xsl:when test="$myparam='372'"><xsl:value-of select="$myparam"/> (Equipment pre-trip date)</xsl:when>
      		<xsl:when test="$myparam='373'"><xsl:value-of select="$myparam"/> (Mooring, date and time)</xsl:when>
      		<xsl:when test="$myparam='374'"><xsl:value-of select="$myparam"/> (Road fund tax expiry date)</xsl:when>
      		<xsl:when test="$myparam='375'"><xsl:value-of select="$myparam"/> (Date of first registration)</xsl:when>
      		<xsl:when test="$myparam='376'"><xsl:value-of select="$myparam"/> (Biannual terminal inspection date)</xsl:when>
      		<xsl:when test="$myparam='377'"><xsl:value-of select="$myparam"/> (Federal HighWay Administration (FHWA) inspection date)</xsl:when>
      		<xsl:when test="$myparam='378'"><xsl:value-of select="$myparam"/> (Container Safety Convention (CSC) inspection date)</xsl:when>
      		<xsl:when test="$myparam='379'"><xsl:value-of select="$myparam"/> (Periodic inspection date)</xsl:when>
      		<xsl:when test="$myparam='380'"><xsl:value-of select="$myparam"/> (Drawing revision date)</xsl:when>
      		<xsl:when test="$myparam='381'"><xsl:value-of select="$myparam"/> (Product lifespan at time of production)</xsl:when>
      		<xsl:when test="$myparam='382'"><xsl:value-of select="$myparam"/> (Earliest sale date)</xsl:when>
      		<xsl:when test="$myparam='383'"><xsl:value-of select="$myparam"/> (Cancel if not shipped by this date)</xsl:when>
      		<xsl:when test="$myparam='384'"><xsl:value-of select="$myparam"/> (Previous invoice date)</xsl:when>
      		<xsl:when test="$myparam='385'"><xsl:value-of select="$myparam"/> (Payment cancelled, violation of agreement)</xsl:when>
      		<xsl:when test="$myparam='386'"><xsl:value-of select="$myparam"/> (Payment cancelled due to administrative error)</xsl:when>
      		<xsl:when test="$myparam='387'"><xsl:value-of select="$myparam"/> (Repair turnaround time)</xsl:when>
      		<xsl:when test="$myparam='388'"><xsl:value-of select="$myparam"/> (Order amendment binding date)</xsl:when>
      		<xsl:when test="$myparam='389'"><xsl:value-of select="$myparam"/> (Cure time)</xsl:when>
      		<xsl:when test="$myparam='390'"><xsl:value-of select="$myparam"/> (From date of award to delivery)</xsl:when>
      		<xsl:when test="$myparam='391'"><xsl:value-of select="$myparam"/> (From date of receipt of item to approval)</xsl:when>
      		<xsl:when test="$myparam='392'"><xsl:value-of select="$myparam"/> (Equipment pick-up date / time, earliest)</xsl:when>
      		<xsl:when test="$myparam='393'"><xsl:value-of select="$myparam"/> (Equipment pick-up date / time, planned)</xsl:when>
      		<xsl:when test="$myparam='394'"><xsl:value-of select="$myparam"/> (Equipment positioning date/time, actual)</xsl:when>
      		<xsl:when test="$myparam='395'"><xsl:value-of select="$myparam"/> (Equipment positioning date/time, estimated)</xsl:when>
      		<xsl:when test="$myparam='396'"><xsl:value-of select="$myparam"/> (Equipment positioning date/time, requested)</xsl:when>
      		<xsl:when test="$myparam='397'"><xsl:value-of select="$myparam"/> (Equipment positioning date/time, ultimate)</xsl:when>
      		<xsl:when test="$myparam='398'"><xsl:value-of select="$myparam"/> (Goods collection or pick-up date/time, planned)</xsl:when>
      		<xsl:when test="$myparam='399'"><xsl:value-of select="$myparam"/> (Goods positioning date/time, expected)</xsl:when>
      		<xsl:when test="$myparam='400'"><xsl:value-of select="$myparam"/> (Cargo release date/time, ultimate)</xsl:when>
      		<xsl:when test="$myparam='401'"><xsl:value-of select="$myparam"/> (Container Safety Convention (CSC) plate expiration date)</xsl:when>
      		<xsl:when test="$myparam='402'"><xsl:value-of select="$myparam"/> (Document received date/time)</xsl:when>
      		<xsl:when test="$myparam='403'"><xsl:value-of select="$myparam"/> (Discharge date/time, actual)</xsl:when>
      		<xsl:when test="$myparam='404'"><xsl:value-of select="$myparam"/> (Transport means loading date/time, actual)</xsl:when>
      		<xsl:when test="$myparam='405'"><xsl:value-of select="$myparam"/> (Equipment pick-up date / time, actual)</xsl:when>
      		<xsl:when test="$myparam='406'"><xsl:value-of select="$myparam"/> (Goods positioning date/time, planned)</xsl:when>
      		<xsl:when test="$myparam='407'"><xsl:value-of select="$myparam"/> (Document requested date/time)</xsl:when>
      		<xsl:when test="$myparam='408'"><xsl:value-of select="$myparam"/> (Expected container hire from date/time)</xsl:when>
      		<xsl:when test="$myparam='409'"><xsl:value-of select="$myparam"/> (Order completion date/time, ultimate)</xsl:when>
      		<xsl:when test="$myparam='410'"><xsl:value-of select="$myparam"/> (Equipment repair ready date/time, ultimate)</xsl:when>
      		<xsl:when test="$myparam='411'"><xsl:value-of select="$myparam"/> (Container stuffing date/time, ultimate)</xsl:when>
      		<xsl:when test="$myparam='412'"><xsl:value-of select="$myparam"/> (Container stripping date/time, ultimate)</xsl:when>
      		<xsl:when test="$myparam='413'"><xsl:value-of select="$myparam"/> (Discharge and loading completed date/time)</xsl:when>
      		<xsl:when test="$myparam='414'"><xsl:value-of select="$myparam"/> (Equipment stock check date/time)</xsl:when>
      		<xsl:when test="$myparam='415'"><xsl:value-of select="$myparam"/> (Activity reporting date)</xsl:when>
      		<xsl:when test="$myparam='416'"><xsl:value-of select="$myparam"/> (Submission date)</xsl:when>
      		<xsl:when test="$myparam='417'"><xsl:value-of select="$myparam"/> (Previous booking date/time)</xsl:when>
      		<xsl:when test="$myparam='418'"><xsl:value-of select="$myparam"/> (Minimum shelf life remaining at time of receipt)</xsl:when>
      		<xsl:when test="$myparam='419'"><xsl:value-of select="$myparam"/> (Forecast period)</xsl:when>
      		<xsl:when test="$myparam='420'"><xsl:value-of select="$myparam"/> (Unloaded, date and time)</xsl:when>
      		<xsl:when test="$myparam='421'"><xsl:value-of select="$myparam"/> (Estimated acceptance date)</xsl:when>
      		<xsl:when test="$myparam='422'"><xsl:value-of select="$myparam"/> (Documentary credit issue date)</xsl:when>
      		<xsl:when test="$myparam='423'"><xsl:value-of select="$myparam"/> (First date of ordering)</xsl:when>
      		<xsl:when test="$myparam='424'"><xsl:value-of select="$myparam"/> (Last date of ordering)</xsl:when>
      		<xsl:when test="$myparam='425'"><xsl:value-of select="$myparam"/> (Original posting date)</xsl:when>
      		<xsl:when test="$myparam='426'"><xsl:value-of select="$myparam"/> (Reinsurance payment frequency)</xsl:when>
      		<xsl:when test="$myparam='427'"><xsl:value-of select="$myparam"/> (Adjusted age)</xsl:when>
      		<xsl:when test="$myparam='428'"><xsl:value-of select="$myparam"/> (Original issue age)</xsl:when>
      		<xsl:when test="$myparam='429'"><xsl:value-of select="$myparam"/> (Coverage duration)</xsl:when>
      		<xsl:when test="$myparam='430'"><xsl:value-of select="$myparam"/> (Coverage issue date)</xsl:when>
      		<xsl:when test="$myparam='431'"><xsl:value-of select="$myparam"/> (Flat extra period)</xsl:when>
      		<xsl:when test="$myparam='432'"><xsl:value-of select="$myparam"/> (Paid to date)</xsl:when>
      		<xsl:when test="$myparam='433'"><xsl:value-of select="$myparam"/> (Reinsurance coverage duration)</xsl:when>
      		<xsl:when test="$myparam='434'"><xsl:value-of select="$myparam"/> (Maturity date)</xsl:when>
      		<xsl:when test="$myparam='435'"><xsl:value-of select="$myparam"/> (Reinsurance issue age)</xsl:when>
      		<xsl:when test="$myparam='436'"><xsl:value-of select="$myparam"/> (Reinsurance paid-up date)</xsl:when>
      		<xsl:when test="$myparam='437'"><xsl:value-of select="$myparam"/> (Benefit period)</xsl:when>
      		<xsl:when test="$myparam='438'"><xsl:value-of select="$myparam"/> (Disability wait period)</xsl:when>
      		<xsl:when test="$myparam='439'"><xsl:value-of select="$myparam"/> (Deferred Period)</xsl:when>
      		<xsl:when test="$myparam='440'"><xsl:value-of select="$myparam"/> (Documentary credit amendment date)</xsl:when>
      		<xsl:when test="$myparam='441'"><xsl:value-of select="$myparam"/> (Last on hire date)</xsl:when>
      		<xsl:when test="$myparam='442'"><xsl:value-of select="$myparam"/> (Last off hire date)</xsl:when>
      		<xsl:when test="$myparam='443'"><xsl:value-of select="$myparam"/> (Direct interchange date)</xsl:when>
      		<xsl:when test="$myparam='444'"><xsl:value-of select="$myparam"/> (Approval date)</xsl:when>
      		<xsl:when test="$myparam='445'"><xsl:value-of select="$myparam"/> (Original estimate date)</xsl:when>
      		<xsl:when test="$myparam='446'"><xsl:value-of select="$myparam"/> (Revised estimate date)</xsl:when>
      		<xsl:when test="$myparam='447'"><xsl:value-of select="$myparam"/> (Creditor's requested value date)</xsl:when>
      		<xsl:when test="$myparam='448'"><xsl:value-of select="$myparam"/> (Referenced item creation date)</xsl:when>
      		<xsl:when test="$myparam='449'"><xsl:value-of select="$myparam"/> (Date for the last update)</xsl:when>
      		<xsl:when test="$myparam='450'"><xsl:value-of select="$myparam"/> (Opening date)</xsl:when>
      		<xsl:when test="$myparam='451'"><xsl:value-of select="$myparam"/> (Source document capture date)</xsl:when>
      		<xsl:when test="$myparam='452'"><xsl:value-of select="$myparam"/> (Trial balance period)</xsl:when>
      		<xsl:when test="$myparam='453'"><xsl:value-of select="$myparam"/> (Date of source document)</xsl:when>
      		<xsl:when test="$myparam='454'"><xsl:value-of select="$myparam"/> (Accounting value date)</xsl:when>
      		<xsl:when test="$myparam='455'"><xsl:value-of select="$myparam"/> (Expected value date)</xsl:when>
      		<xsl:when test="$myparam='456'"><xsl:value-of select="$myparam"/> (Chart of account period)</xsl:when>
      		<xsl:when test="$myparam='457'"><xsl:value-of select="$myparam"/> (Date of separation)</xsl:when>
      		<xsl:when test="$myparam='458'"><xsl:value-of select="$myparam"/> (Date of divorce)</xsl:when>
      		<xsl:when test="$myparam='459'"><xsl:value-of select="$myparam"/> (Date of marriage)</xsl:when>
      		<xsl:when test="$myparam='460'"><xsl:value-of select="$myparam"/> (Wage period, start date)</xsl:when>
      		<xsl:when test="$myparam='461'"><xsl:value-of select="$myparam"/> (Wage period, end date)</xsl:when>
      		<xsl:when test="$myparam='462'"><xsl:value-of select="$myparam"/> (Working period, start date)</xsl:when>
      		<xsl:when test="$myparam='463'"><xsl:value-of select="$myparam"/> (Working period, end date)</xsl:when>
      		<xsl:when test="$myparam='464'"><xsl:value-of select="$myparam"/> (Embarkation date and time)</xsl:when>
      		<xsl:when test="$myparam='465'"><xsl:value-of select="$myparam"/> (Disembarkation date and time)</xsl:when>
      		<xsl:when test="$myparam='466'"><xsl:value-of select="$myparam"/> (Time now date)</xsl:when>
      		<xsl:when test="$myparam='467'"><xsl:value-of select="$myparam"/> (Holiday)</xsl:when>
      		<xsl:when test="$myparam='468'"><xsl:value-of select="$myparam"/> (Non working)</xsl:when>
      		<xsl:when test="$myparam='469'"><xsl:value-of select="$myparam"/> (Start date or time, earliest)</xsl:when>
      		<xsl:when test="$myparam='470'"><xsl:value-of select="$myparam"/> (Start date or time, latest)</xsl:when>
      		<xsl:when test="$myparam='471'"><xsl:value-of select="$myparam"/> (Finish date or time, earliest)</xsl:when>
      		<xsl:when test="$myparam='472'"><xsl:value-of select="$myparam"/> (Finish date or time, latest)</xsl:when>
      		<xsl:when test="$myparam='473'"><xsl:value-of select="$myparam"/> (Start date or time, mandatory)</xsl:when>
      		<xsl:when test="$myparam='474'"><xsl:value-of select="$myparam"/> (Finish date or time, mandatory)</xsl:when>
      		<xsl:when test="$myparam='475'"><xsl:value-of select="$myparam"/> (Start date or time, actual)</xsl:when>
      		<xsl:when test="$myparam='476'"><xsl:value-of select="$myparam"/> (Start date or time, estimated)</xsl:when>
      		<xsl:when test="$myparam='477'"><xsl:value-of select="$myparam"/> (Completion date or time, estimated)</xsl:when>
      		<xsl:when test="$myparam='478'"><xsl:value-of select="$myparam"/> (Start date or time, scheduled)</xsl:when>
      		<xsl:when test="$myparam='479'"><xsl:value-of select="$myparam"/> (Completion date or time, scheduled)</xsl:when>
      		<xsl:when test="$myparam='480'"><xsl:value-of select="$myparam"/> (Start date or time, not before)</xsl:when>
      		<xsl:when test="$myparam='481'"><xsl:value-of select="$myparam"/> (Start date or time, not after)</xsl:when>
      		<xsl:when test="$myparam='482'"><xsl:value-of select="$myparam"/> (Completion date or time, not before)</xsl:when>
      		<xsl:when test="$myparam='483'"><xsl:value-of select="$myparam"/> (Completion date or time, not after)</xsl:when>
      		<xsl:when test="$myparam='484'"><xsl:value-of select="$myparam"/> (Illness recovery date, expected)</xsl:when>
      		<xsl:when test="$myparam='485'"><xsl:value-of select="$myparam"/> (Period of illness, start date)</xsl:when>
      		<xsl:when test="$myparam='486'"><xsl:value-of select="$myparam"/> (Period of illness, end date)</xsl:when>
      		<xsl:when test="$myparam='487'"><xsl:value-of select="$myparam"/> (Decease date)</xsl:when>
      		<xsl:when test="$myparam='488'"><xsl:value-of select="$myparam"/> (Benefit period, start date)</xsl:when>
      		<xsl:when test="$myparam='489'"><xsl:value-of select="$myparam"/> (Benefit period, end date)</xsl:when>
      		<xsl:when test="$myparam='490'"><xsl:value-of select="$myparam"/> (Selection period, start date)</xsl:when>
      		<xsl:when test="$myparam='491'"><xsl:value-of select="$myparam"/> (Selection period, end date)</xsl:when>
      		<xsl:when test="$myparam='492'"><xsl:value-of select="$myparam"/> (Balance date/time/period)</xsl:when>
      		<xsl:when test="$myparam='493'"><xsl:value-of select="$myparam"/> (Benefit payments termination date)</xsl:when>
      		<xsl:when test="$myparam='494'"><xsl:value-of select="$myparam"/> (Covered income period)</xsl:when>
      		<xsl:when test="$myparam='495'"><xsl:value-of select="$myparam"/> (Current income period)</xsl:when>
      		<xsl:when test="$myparam='496'"><xsl:value-of select="$myparam"/> (Reinstatement date)</xsl:when>
      		<xsl:when test="$myparam='497'"><xsl:value-of select="$myparam"/> (Definition of disability duration)</xsl:when>
      		<xsl:when test="$myparam='498'"><xsl:value-of select="$myparam"/> (Previous termination date)</xsl:when>
      		<xsl:when test="$myparam='499'"><xsl:value-of select="$myparam"/> (Premium change period)</xsl:when>
      		<xsl:when test="$myparam='500'"><xsl:value-of select="$myparam"/> (Off-hire survey date)</xsl:when>
      		<xsl:when test="$myparam='501'"><xsl:value-of select="$myparam"/> (In service survey date)</xsl:when>
      		<xsl:when test="$myparam='502'"><xsl:value-of select="$myparam"/> (On hire survey date)</xsl:when>
      		<xsl:when test="$myparam='503'"><xsl:value-of select="$myparam"/> (Production inspection date)</xsl:when>
      		<xsl:when test="$myparam='504'"><xsl:value-of select="$myparam"/> (Overtime, start date)</xsl:when>
      		<xsl:when test="$myparam='505'"><xsl:value-of select="$myparam"/> (Overtime, end date)</xsl:when>
      		<xsl:when test="$myparam='506'"><xsl:value-of select="$myparam"/> (Back order delivery date/time/period)</xsl:when>
      		<xsl:when test="$myparam='507'"><xsl:value-of select="$myparam"/> (Negotiations start date)</xsl:when>
      		<xsl:when test="$myparam='508'"><xsl:value-of select="$myparam"/> (Work effective start date)</xsl:when>
      		<xsl:when test="$myparam='510'"><xsl:value-of select="$myparam"/> (Notification time limit)</xsl:when>
      		<xsl:when test="$myparam='511'"><xsl:value-of select="$myparam"/> (Time limit)</xsl:when>
      		<xsl:when test="$myparam='512'"><xsl:value-of select="$myparam"/> (Attendance date and or time and or period)</xsl:when>
      		<xsl:when test="$myparam='513'"><xsl:value-of select="$myparam"/> (Accident date and or time)</xsl:when>
      		<xsl:when test="$myparam='514'"><xsl:value-of select="$myparam"/> (Adoption date, actual)</xsl:when>
      		<xsl:when test="$myparam='515'"><xsl:value-of select="$myparam"/> (Reimbursement claim issue date and or time)</xsl:when>
      		<xsl:when test="$myparam='516'"><xsl:value-of select="$myparam"/> (Hospital admission date and or time)</xsl:when>
      		<xsl:when test="$myparam='517'"><xsl:value-of select="$myparam"/> (Hospital discharge date and or time)</xsl:when>
      		<xsl:when test="$myparam='518'"><xsl:value-of select="$myparam"/> (Period of care start date and or time)</xsl:when>
      		<xsl:when test="$myparam='519'"><xsl:value-of select="$myparam"/> (Period of care end date and or time)</xsl:when>
      		<xsl:when test="$myparam='520'"><xsl:value-of select="$myparam"/> (Department admission date and or time)</xsl:when>
      		<xsl:when test="$myparam='521'"><xsl:value-of select="$myparam"/> (Department discharge date and or time)</xsl:when>
      		<xsl:when test="$myparam='522'"><xsl:value-of select="$myparam"/> (Childbirth date and or time, actual)</xsl:when>
      		<xsl:when test="$myparam='523'"><xsl:value-of select="$myparam"/> (Prescription issue date and or time)</xsl:when>
      		<xsl:when test="$myparam='524'"><xsl:value-of select="$myparam"/> (Prescription dispensing date and or time)</xsl:when>
      		<xsl:when test="$myparam='525'"><xsl:value-of select="$myparam"/> (Clinical examination date and or time)</xsl:when>
      		<xsl:when test="$myparam='526'"><xsl:value-of select="$myparam"/> (Death date and or time)</xsl:when>
      		<xsl:when test="$myparam='527'"><xsl:value-of select="$myparam"/> (Childbirth date, estimated)</xsl:when>
      		<xsl:when test="$myparam='528'"><xsl:value-of select="$myparam"/> (Last menstrual cycle, start date)</xsl:when>
      		<xsl:when test="$myparam='529'"><xsl:value-of select="$myparam"/> (Pregnancy duration, actual)</xsl:when>
      		<xsl:when test="$myparam='530'"><xsl:value-of select="$myparam"/> (Fumigation date and/or time)</xsl:when>
      		<xsl:when test="$myparam='531'"><xsl:value-of select="$myparam"/> (Payment period)</xsl:when>
      		<xsl:when test="$myparam='532'"><xsl:value-of select="$myparam"/> (Average delivery delay)</xsl:when>
      		<xsl:when test="$myparam='533'"><xsl:value-of select="$myparam"/> (Budget line application date)</xsl:when>
      		<xsl:when test="$myparam='534'"><xsl:value-of select="$myparam"/> (Date of repair or service)</xsl:when>
      		<xsl:when test="$myparam='535'"><xsl:value-of select="$myparam"/> (Date of product failure)</xsl:when>
      		<xsl:when test="$myparam='536'"><xsl:value-of select="$myparam"/> (Review date)</xsl:when>
      		<xsl:when test="$myparam='537'"><xsl:value-of select="$myparam"/> (International review cycle start date)</xsl:when>
      		<xsl:when test="$myparam='538'"><xsl:value-of select="$myparam"/> (International assessment approval for publication date)</xsl:when>
      		<xsl:when test="$myparam='539'"><xsl:value-of select="$myparam"/> (Status assignment date)</xsl:when>
      		<xsl:when test="$myparam='540'"><xsl:value-of select="$myparam"/> (Instruction's original execution date)</xsl:when>
      		<xsl:when test="$myparam='541'"><xsl:value-of select="$myparam"/> (First published date)</xsl:when>
      		<xsl:when test="$myparam='542'"><xsl:value-of select="$myparam"/> (Last published date)</xsl:when>
      		<xsl:when test="$myparam='543'"><xsl:value-of select="$myparam"/> (Balance sheet date, latest)</xsl:when>
      		<xsl:when test="$myparam='544'"><xsl:value-of select="$myparam"/> (Security share price as of given date)</xsl:when>
      		<xsl:when test="$myparam='545'"><xsl:value-of select="$myparam"/> (Assigned date)</xsl:when>
      		<xsl:when test="$myparam='546'"><xsl:value-of select="$myparam"/> (Business opened date)</xsl:when>
      		<xsl:when test="$myparam='547'"><xsl:value-of select="$myparam"/> (Initial financial accounts filed date)</xsl:when>
      		<xsl:when test="$myparam='548'"><xsl:value-of select="$myparam"/> (Stop work as of given date)</xsl:when>
      		<xsl:when test="$myparam='549'"><xsl:value-of select="$myparam"/> (Completion date)</xsl:when>
      		<xsl:when test="$myparam='550'"><xsl:value-of select="$myparam"/> (Lease term, start date)</xsl:when>
      		<xsl:when test="$myparam='551'"><xsl:value-of select="$myparam"/> (Lease term, end date)</xsl:when>
      		<xsl:when test="$myparam='552'"><xsl:value-of select="$myparam"/> (Start date, actual)</xsl:when>
      		<xsl:when test="$myparam='553'"><xsl:value-of select="$myparam"/> (Start date, estimated)</xsl:when>
      		<xsl:when test="$myparam='554'"><xsl:value-of select="$myparam"/> (Filed date)</xsl:when>
      		<xsl:when test="$myparam='555'"><xsl:value-of select="$myparam"/> (Return to work date)</xsl:when>
      		<xsl:when test="$myparam='556'"><xsl:value-of select="$myparam"/> (Purchased date)</xsl:when>
      		<xsl:when test="$myparam='557'"><xsl:value-of select="$myparam"/> (Returned date)</xsl:when>
      		<xsl:when test="$myparam='558'"><xsl:value-of select="$myparam"/> (Changed date)</xsl:when>
      		<xsl:when test="$myparam='559'"><xsl:value-of select="$myparam"/> (Terminated date)</xsl:when>
      		<xsl:when test="$myparam='560'"><xsl:value-of select="$myparam"/> (Evaluation date)</xsl:when>
      		<xsl:when test="$myparam='561'"><xsl:value-of select="$myparam"/> (Business termination date)</xsl:when>
      		<xsl:when test="$myparam='562'"><xsl:value-of select="$myparam"/> (Release from bankruptcy date)</xsl:when>
      		<xsl:when test="$myparam='563'"><xsl:value-of select="$myparam"/> (Placement date, initial)</xsl:when>
      		<xsl:when test="$myparam='564'"><xsl:value-of select="$myparam"/> (Signature date)</xsl:when>
      		<xsl:when test="$myparam='565'"><xsl:value-of select="$myparam"/> (Bankruptcy filed date)</xsl:when>
      		<xsl:when test="$myparam='566'"><xsl:value-of select="$myparam"/> (End date, scheduled)</xsl:when>
      		<xsl:when test="$myparam='567'"><xsl:value-of select="$myparam"/> (Report period)</xsl:when>
      		<xsl:when test="$myparam='568'"><xsl:value-of select="$myparam"/> (Suspended date)</xsl:when>
      		<xsl:when test="$myparam='569'"><xsl:value-of select="$myparam"/> (Renewal date)</xsl:when>
      		<xsl:when test="$myparam='570'"><xsl:value-of select="$myparam"/> (Reported date)</xsl:when>
      		<xsl:when test="$myparam='571'"><xsl:value-of select="$myparam"/> (Checked date)</xsl:when>
      		<xsl:when test="$myparam='572'"><xsl:value-of select="$myparam"/> (Present residence, start date)</xsl:when>
      		<xsl:when test="$myparam='573'"><xsl:value-of select="$myparam"/> (Employment position, start date)</xsl:when>
      		<xsl:when test="$myparam='574'"><xsl:value-of select="$myparam"/> (Account closed date)</xsl:when>
      		<xsl:when test="$myparam='575'"><xsl:value-of select="$myparam"/> (Construction date, actual)</xsl:when>
      		<xsl:when test="$myparam='576'"><xsl:value-of select="$myparam"/> (Employment profession start date)</xsl:when>
      		<xsl:when test="$myparam='577'"><xsl:value-of select="$myparam"/> (Next review date)</xsl:when>
      		<xsl:when test="$myparam='578'"><xsl:value-of select="$myparam"/> (Meeting date)</xsl:when>
      		<xsl:when test="$myparam='579'"><xsl:value-of select="$myparam"/> (Administrator ordered date)</xsl:when>
      		<xsl:when test="$myparam='580'"><xsl:value-of select="$myparam"/> (Last date to file a claim)</xsl:when>
      		<xsl:when test="$myparam='581'"><xsl:value-of select="$myparam"/> (Convicted date)</xsl:when>
      		<xsl:when test="$myparam='582'"><xsl:value-of select="$myparam"/> (Interviewed date)</xsl:when>
      		<xsl:when test="$myparam='583'"><xsl:value-of select="$myparam"/> (Last visit date)</xsl:when>
      		<xsl:when test="$myparam='584'"><xsl:value-of select="$myparam"/> (Future period)</xsl:when>
      		<xsl:when test="$myparam='585'"><xsl:value-of select="$myparam"/> (Preceding period)</xsl:when>
      		<xsl:when test="$myparam='586'"><xsl:value-of select="$myparam"/> (Expected problem resolution date)</xsl:when>
      		<xsl:when test="$myparam='587'"><xsl:value-of select="$myparam"/> (Action date)</xsl:when>
      		<xsl:when test="$myparam='588'"><xsl:value-of select="$myparam"/> (Accountant's opinion date)</xsl:when>
      		<xsl:when test="$myparam='589'"><xsl:value-of select="$myparam"/> (Last activity date)</xsl:when>
      		<xsl:when test="$myparam='590'"><xsl:value-of select="$myparam"/> (Resolved date)</xsl:when>
      		<xsl:when test="$myparam='591'"><xsl:value-of select="$myparam"/> (Recorded date)</xsl:when>
      		<xsl:when test="$myparam='592'"><xsl:value-of select="$myparam"/> (Date of birth, estimated)</xsl:when>
      		<xsl:when test="$myparam='593'"><xsl:value-of select="$myparam"/> (Last annual report date)</xsl:when>
      		<xsl:when test="$myparam='594'"><xsl:value-of select="$myparam"/> (Net worth date)</xsl:when>
      		<xsl:when test="$myparam='595'"><xsl:value-of select="$myparam"/> (Payment cancellation rejected)</xsl:when>
      		<xsl:when test="$myparam='596'"><xsl:value-of select="$myparam"/> (Profit period)</xsl:when>
      		<xsl:when test="$myparam='597'"><xsl:value-of select="$myparam"/> (Registration date)</xsl:when>
      		<xsl:when test="$myparam='598'"><xsl:value-of select="$myparam"/> (Consolidation date)</xsl:when>
      		<xsl:when test="$myparam='599'"><xsl:value-of select="$myparam"/> (Board of directors not authorised as of given date)</xsl:when>
      		<xsl:when test="$myparam='600'"><xsl:value-of select="$myparam"/> (Board of directors not complete as of given date)</xsl:when>
      		<xsl:when test="$myparam='601'"><xsl:value-of select="$myparam"/> (Manager not registered as of given date)</xsl:when>
      		<xsl:when test="$myparam='602'"><xsl:value-of select="$myparam"/> (Citizenship change date)</xsl:when>
      		<xsl:when test="$myparam='603'"><xsl:value-of select="$myparam"/> (Participation date)</xsl:when>
      		<xsl:when test="$myparam='604'"><xsl:value-of select="$myparam"/> (Capitalisation date)</xsl:when>
      		<xsl:when test="$myparam='605'"><xsl:value-of select="$myparam"/> (Board of directors registration date)</xsl:when>
      		<xsl:when test="$myparam='606'"><xsl:value-of select="$myparam"/> (Operations ceased date)</xsl:when>
      		<xsl:when test="$myparam='607'"><xsl:value-of select="$myparam"/> (Satisfaction date)</xsl:when>
      		<xsl:when test="$myparam='608'"><xsl:value-of select="$myparam"/> (Legal settlement terms met date)</xsl:when>
      		<xsl:when test="$myparam='609'"><xsl:value-of select="$myparam"/> (Business control change date)</xsl:when>
      		<xsl:when test="$myparam='610'"><xsl:value-of select="$myparam"/> (Court registration date)</xsl:when>
      		<xsl:when test="$myparam='611'"><xsl:value-of select="$myparam"/> (Annual report due date)</xsl:when>
      		<xsl:when test="$myparam='612'"><xsl:value-of select="$myparam"/> (Asset and liability schedule date)</xsl:when>
      		<xsl:when test="$myparam='613'"><xsl:value-of select="$myparam"/> (Annual report mailing date)</xsl:when>
      		<xsl:when test="$myparam='614'"><xsl:value-of select="$myparam"/> (Annual report filing date)</xsl:when>
      		<xsl:when test="$myparam='615'"><xsl:value-of select="$myparam"/> (Annual report delinquent on date)</xsl:when>
      		<xsl:when test="$myparam='616'"><xsl:value-of select="$myparam"/> (Accounting methodology change date)</xsl:when>
      		<xsl:when test="$myparam='617'"><xsl:value-of select="$myparam"/> (Closed until date)</xsl:when>
      		<xsl:when test="$myparam='618'"><xsl:value-of select="$myparam"/> (Conversion into holding company date)</xsl:when>
      		<xsl:when test="$myparam='619'"><xsl:value-of select="$myparam"/> (Deed not available as of given date)</xsl:when>
      		<xsl:when test="$myparam='620'"><xsl:value-of select="$myparam"/> (Detrimental information receipt date)</xsl:when>
      		<xsl:when test="$myparam='621'"><xsl:value-of select="$myparam"/> (Construction date, estimated)</xsl:when>
      		<xsl:when test="$myparam='622'"><xsl:value-of select="$myparam"/> (Financial information date)</xsl:when>
      		<xsl:when test="$myparam='623'"><xsl:value-of select="$myparam"/> (Graduation date)</xsl:when>
      		<xsl:when test="$myparam='624'"><xsl:value-of select="$myparam"/> (Insolvency discharge granted date)</xsl:when>
      		<xsl:when test="$myparam='625'"><xsl:value-of select="$myparam"/> (Incorporation date)</xsl:when>
      		<xsl:when test="$myparam='626'"><xsl:value-of select="$myparam"/> (Inactivity end date)</xsl:when>
      		<xsl:when test="$myparam='627'"><xsl:value-of select="$myparam"/> (Last check for balance sheet update date)</xsl:when>
      		<xsl:when test="$myparam='628'"><xsl:value-of select="$myparam"/> (Last capital change date)</xsl:when>
      		<xsl:when test="$myparam='629'"><xsl:value-of select="$myparam"/> (Letter of agreement date)</xsl:when>
      		<xsl:when test="$myparam='630'"><xsl:value-of select="$myparam"/> (Letter of liability date)</xsl:when>
      		<xsl:when test="$myparam='631'"><xsl:value-of select="$myparam"/> (Liquidation date)</xsl:when>
      		<xsl:when test="$myparam='632'"><xsl:value-of select="$myparam"/> (Lowest activity period)</xsl:when>
      		<xsl:when test="$myparam='633'"><xsl:value-of select="$myparam"/> (Legal structure change date)</xsl:when>
      		<xsl:when test="$myparam='634'"><xsl:value-of select="$myparam"/> (Current name effective date)</xsl:when>
      		<xsl:when test="$myparam='635'"><xsl:value-of select="$myparam"/> (Not registered as of given date)</xsl:when>
      		<xsl:when test="$myparam='636'"><xsl:value-of select="$myparam"/> (Current authority control start date)</xsl:when>
      		<xsl:when test="$myparam='637'"><xsl:value-of select="$myparam"/> (Privilege details verification date)</xsl:when>
      		<xsl:when test="$myparam='638'"><xsl:value-of select="$myparam"/> (Current legal structure effective date)</xsl:when>
      		<xsl:when test="$myparam='639'"><xsl:value-of select="$myparam"/> (Peak activity period)</xsl:when>
      		<xsl:when test="$myparam='640'"><xsl:value-of select="$myparam"/> (Presentation to bankruptcy receivers date)</xsl:when>
      		<xsl:when test="$myparam='641'"><xsl:value-of select="$myparam"/> (Resignation date)</xsl:when>
      		<xsl:when test="$myparam='642'"><xsl:value-of select="$myparam"/> (Legal action closed date)</xsl:when>
      		<xsl:when test="$myparam='643'"><xsl:value-of select="$myparam"/> (Mail receipt date)</xsl:when>
      		<xsl:when test="$myparam='644'"><xsl:value-of select="$myparam"/> (Social security claims verification date)</xsl:when>
      		<xsl:when test="$myparam='645'"><xsl:value-of select="$myparam"/> (Sole directorship registration date)</xsl:when>
      		<xsl:when test="$myparam='646'"><xsl:value-of select="$myparam"/> (Trade style registration date)</xsl:when>
      		<xsl:when test="$myparam='647'"><xsl:value-of select="$myparam"/> (Trial start date, scheduled)</xsl:when>
      		<xsl:when test="$myparam='648'"><xsl:value-of select="$myparam"/> (Trial start date, actual)</xsl:when>
      		<xsl:when test="$myparam='649'"><xsl:value-of select="$myparam"/> (Value Added Tax (VAT) claims verification date)</xsl:when>
      		<xsl:when test="$myparam='650'"><xsl:value-of select="$myparam"/> (Receivership result date)</xsl:when>
      		<xsl:when test="$myparam='651'"><xsl:value-of select="$myparam"/> (Investigation end date)</xsl:when>
      		<xsl:when test="$myparam='652'"><xsl:value-of select="$myparam"/> (Employee temporary laid-off period end date)</xsl:when>
      		<xsl:when test="$myparam='653'"><xsl:value-of select="$myparam"/> (Investigation start date)</xsl:when>
      		<xsl:when test="$myparam='654'"><xsl:value-of select="$myparam"/> (Income period)</xsl:when>
      		<xsl:when test="$myparam='655'"><xsl:value-of select="$myparam"/> (Criminal sentence duration)</xsl:when>
      		<xsl:when test="$myparam='656'"><xsl:value-of select="$myparam"/> (Age)</xsl:when>
      		<xsl:when test="$myparam='657'"><xsl:value-of select="$myparam"/> (Receivables collection period)</xsl:when>
      		<xsl:when test="$myparam='658'"><xsl:value-of select="$myparam"/> (Comparison period)</xsl:when>
      		<xsl:when test="$myparam='659'"><xsl:value-of select="$myparam"/> (Adjournment)</xsl:when>
      		<xsl:when test="$myparam='660'"><xsl:value-of select="$myparam"/> (Court dismissal date)</xsl:when>
      		<xsl:when test="$myparam='661'"><xsl:value-of select="$myparam"/> (Insufficient assets judgement date)</xsl:when>
      		<xsl:when test="$myparam='662'"><xsl:value-of select="$myparam"/> (Average payment period)</xsl:when>
      		<xsl:when test="$myparam='663'"><xsl:value-of select="$myparam"/> (Forecast period start)</xsl:when>
      		<xsl:when test="$myparam='664'"><xsl:value-of select="$myparam"/> (Period extended)</xsl:when>
      		<xsl:when test="$myparam='665'"><xsl:value-of select="$myparam"/> (Employee temporary laid-off period start date)</xsl:when>
      		<xsl:when test="$myparam='666'"><xsl:value-of select="$myparam"/> (Management available date)</xsl:when>
      		<xsl:when test="$myparam='667'"><xsl:value-of select="$myparam"/> (Withdrawn date)</xsl:when>
      		<xsl:when test="$myparam='668'"><xsl:value-of select="$myparam"/> (Claim incurred date)</xsl:when>
      		<xsl:when test="$myparam='669'"><xsl:value-of select="$myparam"/> (Financial coverage period)</xsl:when>
      		<xsl:when test="$myparam='670'"><xsl:value-of select="$myparam"/> (Claim made date)</xsl:when>
      		<xsl:when test="$myparam='671'"><xsl:value-of select="$myparam"/> (Stop distribution date)</xsl:when>
      		<xsl:when test="$myparam='672'"><xsl:value-of select="$myparam"/> (Period assigned)</xsl:when>
      		<xsl:when test="$myparam='673'"><xsl:value-of select="$myparam"/> (Lease period)</xsl:when>
      		<xsl:when test="$myparam='674'"><xsl:value-of select="$myparam"/> (Forecast period end date)</xsl:when>
      		<xsl:when test="$myparam='675'"><xsl:value-of select="$myparam"/> (Judgement date)</xsl:when>
      		<xsl:when test="$myparam='676'"><xsl:value-of select="$myparam"/> (Period worked for the company)</xsl:when>
      		<xsl:when test="$myparam='677'"><xsl:value-of select="$myparam"/> (Transport equipment stuffing date and/or time)</xsl:when>
      		<xsl:when test="$myparam='678'"><xsl:value-of select="$myparam"/> (Transport equipment stripping date and/or time)</xsl:when>
      		<xsl:when test="$myparam='679'"><xsl:value-of select="$myparam"/> (Initial request date)</xsl:when>
      		<xsl:when test="$myparam='680'"><xsl:value-of select="$myparam"/> (Period overdue)</xsl:when>
      		<xsl:when test="$myparam='681'"><xsl:value-of select="$myparam"/> (Implementation date/time/period)</xsl:when>
      		<xsl:when test="$myparam='682'"><xsl:value-of select="$myparam"/> (Refusal period)</xsl:when>
      		<xsl:when test="$myparam='683'"><xsl:value-of select="$myparam"/> (Suspension period)</xsl:when>
      		<xsl:when test="$myparam='684'"><xsl:value-of select="$myparam"/> (Deletion date)</xsl:when>
      		<xsl:when test="$myparam='685'"><xsl:value-of select="$myparam"/> (First sale date and/or time and/or period)</xsl:when>
      		<xsl:when test="$myparam='686'"><xsl:value-of select="$myparam"/> (Last sale date and/or time and/or period)</xsl:when>
      		<xsl:when test="$myparam='687'"><xsl:value-of select="$myparam"/> (Date ready for collection)</xsl:when>
      		<xsl:when test="$myparam='688'"><xsl:value-of select="$myparam"/> (Shipping date, no schedule established as of)</xsl:when>
      		<xsl:when test="$myparam='689'"><xsl:value-of select="$myparam"/> (Shipping date and/or time, current schedule)</xsl:when>
      		<xsl:when test="$myparam='690'"><xsl:value-of select="$myparam"/> (Suppliers' average credit period)</xsl:when>
      		<xsl:when test="$myparam='691'"><xsl:value-of select="$myparam"/> (Advising date)</xsl:when>
      		<xsl:when test="$myparam='692'"><xsl:value-of select="$myparam"/> (Project over target baseline date)</xsl:when>
      		<xsl:when test="$myparam='693'"><xsl:value-of select="$myparam"/> (Established date)</xsl:when>
      		<xsl:when test="$myparam='694'"><xsl:value-of select="$myparam"/> (Latest filing period)</xsl:when>
      		<xsl:when test="$myparam='695'"><xsl:value-of select="$myparam"/> (Mailing date)</xsl:when>
      		<xsl:when test="$myparam='696'"><xsl:value-of select="$myparam"/> (Date/time of latest accounts filing at public registry)</xsl:when>
      		<xsl:when test="$myparam='697'"><xsl:value-of select="$myparam"/> (Date placed in disfavour)</xsl:when>
      		<xsl:when test="$myparam='698'"><xsl:value-of select="$myparam"/> (Employment position start date, estimated)</xsl:when>
      		<xsl:when test="$myparam='699'"><xsl:value-of select="$myparam"/> (Registered contractor number assignment date, original)</xsl:when>
      		<xsl:when test="$myparam='700'"><xsl:value-of select="$myparam"/> (Ownership change date)</xsl:when>
      		<xsl:when test="$myparam='701'"><xsl:value-of select="$myparam"/> (Original duration)</xsl:when>
      		<xsl:when test="$myparam='702'"><xsl:value-of select="$myparam"/> (Period between changes)</xsl:when>
      		<xsl:when test="$myparam='703'"><xsl:value-of select="$myparam"/> (From date of notice to proceed to commencement of performance)</xsl:when>
      		<xsl:when test="$myparam='704'"><xsl:value-of select="$myparam"/> (From date of notice to proceed to completion)</xsl:when>
      		<xsl:when test="$myparam='705'"><xsl:value-of select="$myparam"/> (Period an event is late due to customer)</xsl:when>
      		<xsl:when test="$myparam='706'"><xsl:value-of select="$myparam"/> (File generation date and/or time)</xsl:when>
      		<xsl:when test="$myparam='707'"><xsl:value-of select="$myparam"/> (Endorsed certificate issue date)</xsl:when>
      		<xsl:when test="$myparam='708'"><xsl:value-of select="$myparam"/> (Patient first visit for condition)</xsl:when>
      		<xsl:when test="$myparam='709'"><xsl:value-of select="$myparam"/> (Admission date and/or time, expected)</xsl:when>
      		<xsl:when test="$myparam='710'"><xsl:value-of select="$myparam"/> (Symptoms onset, patient alleged)</xsl:when>
      		<xsl:when test="$myparam='711'"><xsl:value-of select="$myparam"/> (Accident benefit period)</xsl:when>
      		<xsl:when test="$myparam='712'"><xsl:value-of select="$myparam"/> (Accident benefit age limit)</xsl:when>
      		<xsl:when test="$myparam='713'"><xsl:value-of select="$myparam"/> (Accident lifetime benefit qualification age)</xsl:when>
      		<xsl:when test="$myparam='714'"><xsl:value-of select="$myparam"/> (Sickness benefit period)</xsl:when>
      		<xsl:when test="$myparam='715'"><xsl:value-of select="$myparam"/> (Sickness benefit age limit)</xsl:when>
      		<xsl:when test="$myparam='716'"><xsl:value-of select="$myparam"/> (Sickness lifetime benefit qualification age)</xsl:when>
      		<xsl:when test="$myparam='717'"><xsl:value-of select="$myparam"/> (Accident insurance elimination period)</xsl:when>
      		<xsl:when test="$myparam='718'"><xsl:value-of select="$myparam"/> (Sickness insurance elimination period)</xsl:when>
      		<xsl:when test="$myparam='719'"><xsl:value-of select="$myparam"/> (Provider signature date)</xsl:when>
      		<xsl:when test="$myparam='720'"><xsl:value-of select="$myparam"/> (Condition initial treatment date)</xsl:when>
      		<xsl:when test="$myparam='721'"><xsl:value-of select="$myparam"/> (Information release authorization date)</xsl:when>
      		<xsl:when test="$myparam='722'"><xsl:value-of select="$myparam"/> (Benefit release authorization date)</xsl:when>
      		<xsl:when test="$myparam='723'"><xsl:value-of select="$myparam"/> (Last seen date)</xsl:when>
      		<xsl:when test="$myparam='724'"><xsl:value-of select="$myparam"/> (Acute manifestation date)</xsl:when>
      		<xsl:when test="$myparam='725'"><xsl:value-of select="$myparam"/> (Similar illness onset date)</xsl:when>
      		<xsl:when test="$myparam='726'"><xsl:value-of select="$myparam"/> (Last X-ray date)</xsl:when>
      		<xsl:when test="$myparam='727'"><xsl:value-of select="$myparam"/> (Placement date, previous)</xsl:when>
      		<xsl:when test="$myparam='728'"><xsl:value-of select="$myparam"/> (Placement date)</xsl:when>
      		<xsl:when test="$myparam='729'"><xsl:value-of select="$myparam"/> (Temporary prosthesis date)</xsl:when>
      		<xsl:when test="$myparam='730'"><xsl:value-of select="$myparam"/> (Orthodontic treatment period, remaining)</xsl:when>
      		<xsl:when test="$myparam='731'"><xsl:value-of select="$myparam"/> (Orthodontic treatment period, total)</xsl:when>
      		<xsl:when test="$myparam='732'"><xsl:value-of select="$myparam"/> (Maximum credit granted date)</xsl:when>
      		<xsl:when test="$myparam='733'"><xsl:value-of select="$myparam"/> (Last date of accounts filed at public register)</xsl:when>
      		<xsl:when test="$myparam='734'"><xsl:value-of select="$myparam"/> (Allowed renewal duration period)</xsl:when>
      		<xsl:when test="$myparam='735'"><xsl:value-of select="$myparam"/> (Offset from Coordinated Universal Time (UTC))</xsl:when>
      		<xsl:when test="$myparam='736'"><xsl:value-of select="$myparam"/> (Appointment expiry date)</xsl:when>
      		<xsl:when test="$myparam='737'"><xsl:value-of select="$myparam"/> (Earliest filing period)</xsl:when>
      		<xsl:when test="$myparam='738'"><xsl:value-of select="$myparam"/> (Original name change date)</xsl:when>
      		<xsl:when test="$myparam='739'"><xsl:value-of select="$myparam"/> (Education start date)</xsl:when>
      		<xsl:when test="$myparam='740'"><xsl:value-of select="$myparam"/> (Education end date)</xsl:when>
      		<xsl:when test="$myparam='741'"><xsl:value-of select="$myparam"/> (Receivership period)</xsl:when>
      		<xsl:when test="$myparam='742'"><xsl:value-of select="$myparam"/> (Financial information submission date/time)</xsl:when>
      		<xsl:when test="$myparam='743'"><xsl:value-of select="$myparam"/> (Purchase order latest possible change date)</xsl:when>
      		<xsl:when test="$myparam='744'"><xsl:value-of select="$myparam"/> (Investment number allocation date)</xsl:when>
      		<xsl:when test="$myparam='745'"><xsl:value-of select="$myparam"/> (Payment impossible)</xsl:when>
      		<xsl:when test="$myparam='746'"><xsl:value-of select="$myparam"/> (Record extraction period)</xsl:when>
      		<xsl:when test="$myparam='747'"><xsl:value-of select="$myparam"/> (Cost accounting value date)</xsl:when>
      		<xsl:when test="$myparam='748'"><xsl:value-of select="$myparam"/> (Open period)</xsl:when>
      		<xsl:when test="$myparam='749'"><xsl:value-of select="$myparam"/> (Period between issue date and maturity date)</xsl:when>
      		<xsl:when test="$myparam='750'"><xsl:value-of select="$myparam"/> (Before date)</xsl:when>
      		<xsl:when test="$myparam='751'"><xsl:value-of select="$myparam"/> (After date)</xsl:when>
      		<xsl:when test="$myparam='752'"><xsl:value-of select="$myparam"/> (Meter reading date, next scheduled)</xsl:when>
      		<xsl:when test="$myparam='753'"><xsl:value-of select="$myparam"/> (Maturity date, optimal)</xsl:when>
      		<xsl:when test="$myparam='754'"><xsl:value-of select="$myparam"/> (Product ageing duration, maximum)</xsl:when>
      		<xsl:when test="$myparam='755'"><xsl:value-of select="$myparam"/> (Product ageing duration, minimum)</xsl:when>
      		<xsl:when test="$myparam='756'"><xsl:value-of select="$myparam"/> (Ultimate documentation date/time for 24-hour rule regulation of CBP (United States Customs and Border Protection))</xsl:when>
      		<xsl:when test="$myparam='757'"><xsl:value-of select="$myparam"/> (Departure date/time from place of loading)</xsl:when>
      		<xsl:when test="$myparam='758'"><xsl:value-of select="$myparam"/> (Trade item ship date/time, earliest possible)</xsl:when>
      		<xsl:when test="$myparam='759'"><xsl:value-of select="$myparam"/> (Trade item ship date/time, latest possible)</xsl:when>
      		<xsl:when test="$myparam='760'"><xsl:value-of select="$myparam"/> (Start date/time, maximum buying quantity)</xsl:when>
      		<xsl:when test="$myparam='761'"><xsl:value-of select="$myparam"/> (Start date/time, minimum buying quantity)</xsl:when>
      		<xsl:when test="$myparam='762'"><xsl:value-of select="$myparam"/> (Marketing campaign end date/time, suggested)</xsl:when>
      		<xsl:when test="$myparam='763'"><xsl:value-of select="$myparam"/> (Marketing campaign start date/time, suggested)</xsl:when>
      		<xsl:when test="$myparam='764'"><xsl:value-of select="$myparam"/> (Start availability date)</xsl:when>
      		<xsl:when test="$myparam='765'"><xsl:value-of select="$myparam"/> (Seasonal availabilty calendar year)</xsl:when>
      		<xsl:when test="$myparam='766'"><xsl:value-of select="$myparam"/> (Goods pickup lead time)</xsl:when>
      		<xsl:when test="$myparam='767'"><xsl:value-of select="$myparam"/> (Change date/time, latest)</xsl:when>
      		<xsl:when test="$myparam='768'"><xsl:value-of select="$myparam"/> (End date/time, maximum buying quantity)</xsl:when>
      		<xsl:when test="$myparam='769'"><xsl:value-of select="$myparam"/> (End dat/time, minimum buying quantity)</xsl:when>
      		<xsl:when test="$myparam='770'"><xsl:value-of select="$myparam"/> (End date/time of exclusivity)</xsl:when>
      		<xsl:when test="$myparam='771'"><xsl:value-of select="$myparam"/> (Data release date)</xsl:when>
      		<xsl:when test="$myparam='772'"><xsl:value-of select="$myparam"/> (Handling start date and/or time, actual)</xsl:when>
      		<xsl:when test="$myparam='773'"><xsl:value-of select="$myparam"/> (Handling end date and/or time, estimated)</xsl:when>
      		<xsl:when test="$myparam='774'"><xsl:value-of select="$myparam"/> (Handling end date and/or time, actual)</xsl:when>
      		<xsl:when test="$myparam='775'"><xsl:value-of select="$myparam"/> (Minimum product lifespan for consumer)</xsl:when>
      		<xsl:when test="$myparam='776'"><xsl:value-of select="$myparam"/> (Entry date, elected)</xsl:when>
      		<xsl:when test="$myparam='777'"><xsl:value-of select="$myparam"/> (Arrival date/time at initial port with the intent to unload)</xsl:when>
      		<xsl:when test="$myparam='778'"><xsl:value-of select="$myparam"/> (Conveyance port activity date/ time)</xsl:when>
      		<xsl:when test="$myparam='779'"><xsl:value-of select="$myparam"/> (Date and time of importation into port limits)</xsl:when>
      		<xsl:when test="$myparam='780'"><xsl:value-of select="$myparam"/> (Free trade zone commodity status assignment date)</xsl:when>
      		<xsl:when test="$myparam='781'"><xsl:value-of select="$myparam"/> (Jurisdiction entry date/time, actual)</xsl:when>
      		<xsl:when test="$myparam='782'"><xsl:value-of select="$myparam"/> (Inspection start date/time)</xsl:when>
      		<xsl:when test="$myparam='783'"><xsl:value-of select="$myparam"/> (Inspection end date/time)</xsl:when>
      		<xsl:when test="$myparam='784'"><xsl:value-of select="$myparam"/> (Document/message rejection date/time)</xsl:when>
      		<xsl:when test="$myparam='785'"><xsl:value-of select="$myparam"/> (Government service date/time, requested)</xsl:when>
      		<xsl:when test="$myparam='786'"><xsl:value-of select="$myparam"/> (Crop year)</xsl:when>
      		<xsl:when test="$myparam='787'"><xsl:value-of select="$myparam"/> (Date of original manufacture)</xsl:when>
      		<xsl:when test="$myparam='788'"><xsl:value-of select="$myparam"/> (Model year)</xsl:when>
      		<xsl:when test="$myparam='789'"><xsl:value-of select="$myparam"/> (Opened trade item life span)</xsl:when>
      		<xsl:when test="$myparam='790'"><xsl:value-of select="$myparam"/> (Unmooring, date and time)</xsl:when>
      		<xsl:when test="$myparam='791'"><xsl:value-of select="$myparam"/> (First crane lift)</xsl:when>
      		<xsl:when test="$myparam='792'"><xsl:value-of select="$myparam"/> (Last crane lift)</xsl:when>
      		<xsl:when test="$myparam='793'"><xsl:value-of select="$myparam"/> (Reprocessing date/time)</xsl:when>
      		<xsl:when test="$myparam='794'"><xsl:value-of select="$myparam"/> (First returnable date/time)</xsl:when>
      		<xsl:when test="$myparam='795'"><xsl:value-of select="$myparam"/> (Community visibility date/time)</xsl:when>
      		<xsl:when test="$myparam='796'"><xsl:value-of select="$myparam"/> (Catch date/time)</xsl:when>
      		<xsl:when test="$myparam='797'"><xsl:value-of select="$myparam"/> (First freezing date)</xsl:when>
      		<xsl:when test="$myparam='798'"><xsl:value-of select="$myparam"/> (Verified gross mass determination date/time)</xsl:when>
      		<xsl:when test="$myparam='799'"><xsl:value-of select="$myparam"/> (Validity end date)</xsl:when>
      		<xsl:when test="$myparam='800'"><xsl:value-of select="$myparam"/> (Next status report date)</xsl:when>
      		<xsl:when test="$myparam='801'"><xsl:value-of select="$myparam"/> (Service connection date/time, actual)</xsl:when>
      		<xsl:when test="$myparam='802'"><xsl:value-of select="$myparam"/> (Service disconnection date/time, actual)</xsl:when>
      		<xsl:when test="$myparam='803'"><xsl:value-of select="$myparam"/> (Empty equipment required date/time/period)</xsl:when>
      		<xsl:when test="$myparam='804'"><xsl:value-of select="$myparam"/> (Product sterilisation date)</xsl:when>
      		<xsl:when test="$myparam='805'"><xsl:value-of select="$myparam"/> (Stock demand cover period, expected)</xsl:when>
      		<xsl:when test="$myparam='806'"><xsl:value-of select="$myparam"/> (Shipment date/time, expected)</xsl:when>
      		<xsl:when test="$myparam='807'"><xsl:value-of select="$myparam"/> (Slaughtering date/time)</xsl:when>
      		<xsl:when test="$myparam='808'"><xsl:value-of select="$myparam"/> (Animal birth date/time)</xsl:when>
      		<xsl:when test="$myparam='809'"><xsl:value-of select="$myparam"/> (Seasonal availability end date)</xsl:when>
      		<xsl:when test="$myparam='810'"><xsl:value-of select="$myparam"/> (Verified gross mass cut-off date/time)</xsl:when>
      		<xsl:when test="$myparam='811'"><xsl:value-of select="$myparam"/> (Dangerous goods acceptance cut-off date/time)</xsl:when>
      		<xsl:when test="$myparam='812'"><xsl:value-of select="$myparam"/> (Out of gauge or break bulk acceptance cut-off date/time)</xsl:when>
      		<xsl:when test="$myparam='813'"><xsl:value-of select="$myparam"/> (Reefer acceptance cut-off date/time)</xsl:when>
      		<xsl:when test="$myparam='814'"><xsl:value-of select="$myparam"/> (Laden transport equipment acceptance cut-off date/time)</xsl:when>
      		<xsl:when test="$myparam='815'"><xsl:value-of select="$myparam"/> (Transshipment booking acceptance cut-off date/time)</xsl:when>
      		<xsl:when test="$myparam='816'"><xsl:value-of select="$myparam"/> (Ordered labour team start time)</xsl:when>
      		<xsl:when test="$myparam='817'"><xsl:value-of select="$myparam"/> (Ordered labour team end time)</xsl:when>
      		<xsl:when test="$myparam='818'"><xsl:value-of select="$myparam"/> (Means of transport ready for cargo operations date/time)</xsl:when>
      		<xsl:when test="$myparam='819'"><xsl:value-of select="$myparam"/> (Means of transport ready for departure date/time)</xsl:when>
      		<xsl:when test="$myparam='820'"><xsl:value-of select="$myparam"/> (Vessel arrival at pilot area date/time, estimated)</xsl:when>
      		<xsl:when test="$myparam='821'"><xsl:value-of select="$myparam"/> (Vessel arrival at pilot area date/time, actual)</xsl:when>
      		<xsl:when test="$myparam='822'"><xsl:value-of select="$myparam"/> (Delivery place booking date/time)</xsl:when>
      		<xsl:when test="$myparam='823'"><xsl:value-of select="$myparam"/> (Pickup place booking date/time)</xsl:when>
      		<xsl:when test="$myparam='ZZZ'"><xsl:value-of select="$myparam"/> (Mutually defined)</xsl:when>
   			<xsl:otherwise><xsl:value-of select="$myparam"/></xsl:otherwise>
		</xsl:choose>
	</xsl:template>

</xsl:stylesheet>