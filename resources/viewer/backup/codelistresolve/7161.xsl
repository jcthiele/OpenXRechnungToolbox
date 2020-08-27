<?xml version="1.0"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template name="code.UNTDID.7161">
		<xsl:param name="myparam"/>
		<xsl:choose>
      		<xsl:when test="$myparam='AA'"><xsl:value-of select="$myparam"/> (Advertising)</xsl:when>
      		<xsl:when test="$myparam='AAA'"><xsl:value-of select="$myparam"/> (Telecommunication)</xsl:when>
      		<xsl:when test="$myparam='AAC'"><xsl:value-of select="$myparam"/> (Technical modification)</xsl:when>
      		<xsl:when test="$myparam='AAD'"><xsl:value-of select="$myparam"/> (Job-order production)</xsl:when>
      		<xsl:when test="$myparam='AAE'"><xsl:value-of select="$myparam"/> (Outlays)</xsl:when>
      		<xsl:when test="$myparam='AAF'"><xsl:value-of select="$myparam"/> (Off-premises)</xsl:when>
      		<xsl:when test="$myparam='AAH'"><xsl:value-of select="$myparam"/> (Additional processing)</xsl:when>
      		<xsl:when test="$myparam='AAI'"><xsl:value-of select="$myparam"/> (Attesting)</xsl:when>
      		<xsl:when test="$myparam='AAS'"><xsl:value-of select="$myparam"/> (Acceptance)</xsl:when>
      		<xsl:when test="$myparam='AAT'"><xsl:value-of select="$myparam"/> (Rush delivery)</xsl:when>
      		<xsl:when test="$myparam='AAV'"><xsl:value-of select="$myparam"/> (Special construction)</xsl:when>
      		<xsl:when test="$myparam='AAY'"><xsl:value-of select="$myparam"/> (Airport facilities)</xsl:when>
      		<xsl:when test="$myparam='AAZ'"><xsl:value-of select="$myparam"/> (Concession)</xsl:when>
      		<xsl:when test="$myparam='ABA'"><xsl:value-of select="$myparam"/> (Compulsory storage)</xsl:when>
      		<xsl:when test="$myparam='ABB'"><xsl:value-of select="$myparam"/> (Fuel removal)</xsl:when>
      		<xsl:when test="$myparam='ABC'"><xsl:value-of select="$myparam"/> (Into plane)</xsl:when>
      		<xsl:when test="$myparam='ABD'"><xsl:value-of select="$myparam"/> (Overtime)</xsl:when>
      		<xsl:when test="$myparam='ABF'"><xsl:value-of select="$myparam"/> (Tooling)</xsl:when>
      		<xsl:when test="$myparam='ABK'"><xsl:value-of select="$myparam"/> (Miscellaneous)</xsl:when>
      		<xsl:when test="$myparam='ABL'"><xsl:value-of select="$myparam"/> (Additional packaging)</xsl:when>
      		<xsl:when test="$myparam='ABN'"><xsl:value-of select="$myparam"/> (Dunnage)</xsl:when>
      		<xsl:when test="$myparam='ABR'"><xsl:value-of select="$myparam"/> (Containerisation)</xsl:when>
      		<xsl:when test="$myparam='ABS'"><xsl:value-of select="$myparam"/> (Carton packing)</xsl:when>
      		<xsl:when test="$myparam='ABT'"><xsl:value-of select="$myparam"/> (Hessian wrapped)</xsl:when>
      		<xsl:when test="$myparam='ABU'"><xsl:value-of select="$myparam"/> (Polyethylene wrap packing)</xsl:when>
      		<xsl:when test="$myparam='ACF'"><xsl:value-of select="$myparam"/> (Miscellaneous treatment)</xsl:when>
      		<xsl:when test="$myparam='ACG'"><xsl:value-of select="$myparam"/> (Enamelling treatment)</xsl:when>
      		<xsl:when test="$myparam='ACH'"><xsl:value-of select="$myparam"/> (Heat treatment)</xsl:when>
      		<xsl:when test="$myparam='ACI'"><xsl:value-of select="$myparam"/> (Plating treatment)</xsl:when>
      		<xsl:when test="$myparam='ACJ'"><xsl:value-of select="$myparam"/> (Painting)</xsl:when>
      		<xsl:when test="$myparam='ACK'"><xsl:value-of select="$myparam"/> (Polishing)</xsl:when>
      		<xsl:when test="$myparam='ACL'"><xsl:value-of select="$myparam"/> (Priming)</xsl:when>
      		<xsl:when test="$myparam='ACM'"><xsl:value-of select="$myparam"/> (Preservation treatment)</xsl:when>
      		<xsl:when test="$myparam='ACS'"><xsl:value-of select="$myparam"/> (Fitting)</xsl:when>
      		<xsl:when test="$myparam='ADC'"><xsl:value-of select="$myparam"/> (Consolidation)</xsl:when>
      		<xsl:when test="$myparam='ADE'"><xsl:value-of select="$myparam"/> (Bill of lading)</xsl:when>
      		<xsl:when test="$myparam='ADJ'"><xsl:value-of select="$myparam"/> (Airbag)</xsl:when>
      		<xsl:when test="$myparam='ADK'"><xsl:value-of select="$myparam"/> (Transfer)</xsl:when>
      		<xsl:when test="$myparam='ADL'"><xsl:value-of select="$myparam"/> (Slipsheet)</xsl:when>
      		<xsl:when test="$myparam='ADM'"><xsl:value-of select="$myparam"/> (Binding)</xsl:when>
      		<xsl:when test="$myparam='ADN'"><xsl:value-of select="$myparam"/> (Repair or replacement of broken returnable package)</xsl:when>
      		<xsl:when test="$myparam='ADO'"><xsl:value-of select="$myparam"/> (Efficient logistics)</xsl:when>
      		<xsl:when test="$myparam='ADP'"><xsl:value-of select="$myparam"/> (Merchandising)</xsl:when>
      		<xsl:when test="$myparam='ADQ'"><xsl:value-of select="$myparam"/> (Product mix)</xsl:when>
      		<xsl:when test="$myparam='ADR'"><xsl:value-of select="$myparam"/> (Other services)</xsl:when>
      		<xsl:when test="$myparam='ADT'"><xsl:value-of select="$myparam"/> (Pick-up)</xsl:when>
      		<xsl:when test="$myparam='ADW'"><xsl:value-of select="$myparam"/> (Chronic illness)</xsl:when>
      		<xsl:when test="$myparam='ADY'"><xsl:value-of select="$myparam"/> (New product introduction)</xsl:when>
      		<xsl:when test="$myparam='ADZ'"><xsl:value-of select="$myparam"/> (Direct delivery)</xsl:when>
      		<xsl:when test="$myparam='AEA'"><xsl:value-of select="$myparam"/> (Diversion)</xsl:when>
      		<xsl:when test="$myparam='AEB'"><xsl:value-of select="$myparam"/> (Disconnect)</xsl:when>
      		<xsl:when test="$myparam='AEC'"><xsl:value-of select="$myparam"/> (Distribution)</xsl:when>
      		<xsl:when test="$myparam='AED'"><xsl:value-of select="$myparam"/> (Handling of hazardous cargo)</xsl:when>
      		<xsl:when test="$myparam='AEF'"><xsl:value-of select="$myparam"/> (Rents and leases)</xsl:when>
      		<xsl:when test="$myparam='AEH'"><xsl:value-of select="$myparam"/> (Location differential)</xsl:when>
      		<xsl:when test="$myparam='AEI'"><xsl:value-of select="$myparam"/> (Aircraft refueling)</xsl:when>
      		<xsl:when test="$myparam='AEJ'"><xsl:value-of select="$myparam"/> (Fuel shipped into storage)</xsl:when>
      		<xsl:when test="$myparam='AEK'"><xsl:value-of select="$myparam"/> (Cash on delivery)</xsl:when>
      		<xsl:when test="$myparam='AEL'"><xsl:value-of select="$myparam"/> (Small order processing service)</xsl:when>
      		<xsl:when test="$myparam='AEM'"><xsl:value-of select="$myparam"/> (Clerical or administrative services)</xsl:when>
      		<xsl:when test="$myparam='AEN'"><xsl:value-of select="$myparam"/> (Guarantee)</xsl:when>
      		<xsl:when test="$myparam='AEO'"><xsl:value-of select="$myparam"/> (Collection and recycling)</xsl:when>
      		<xsl:when test="$myparam='AEP'"><xsl:value-of select="$myparam"/> (Copyright fee collection)</xsl:when>
      		<xsl:when test="$myparam='AES'"><xsl:value-of select="$myparam"/> (Veterinary inspection service)</xsl:when>
      		<xsl:when test="$myparam='AET'"><xsl:value-of select="$myparam"/> (Pensioner service)</xsl:when>
      		<xsl:when test="$myparam='AEU'"><xsl:value-of select="$myparam"/> (Medicine free pass holder)</xsl:when>
      		<xsl:when test="$myparam='AEV'"><xsl:value-of select="$myparam"/> (Environmental protection service)</xsl:when>
      		<xsl:when test="$myparam='AEW'"><xsl:value-of select="$myparam"/> (Environmental clean-up service)</xsl:when>
      		<xsl:when test="$myparam='AEX'"><xsl:value-of select="$myparam"/> (National cheque processing service outside account area)</xsl:when>
      		<xsl:when test="$myparam='AEY'"><xsl:value-of select="$myparam"/> (National payment service outside account area)</xsl:when>
      		<xsl:when test="$myparam='AEZ'"><xsl:value-of select="$myparam"/> (National payment service within account area)</xsl:when>
      		<xsl:when test="$myparam='AJ'"><xsl:value-of select="$myparam"/> (Adjustments)</xsl:when>
      		<xsl:when test="$myparam='AU'"><xsl:value-of select="$myparam"/> (Authentication)</xsl:when>
      		<xsl:when test="$myparam='CA'"><xsl:value-of select="$myparam"/> (Cataloguing)</xsl:when>
      		<xsl:when test="$myparam='CAB'"><xsl:value-of select="$myparam"/> (Cartage)</xsl:when>
      		<xsl:when test="$myparam='CAD'"><xsl:value-of select="$myparam"/> (Certification)</xsl:when>
      		<xsl:when test="$myparam='CAE'"><xsl:value-of select="$myparam"/> (Certificate of conformance)</xsl:when>
      		<xsl:when test="$myparam='CAF'"><xsl:value-of select="$myparam"/> (Certificate of origin)</xsl:when>
      		<xsl:when test="$myparam='CAI'"><xsl:value-of select="$myparam"/> (Cutting)</xsl:when>
      		<xsl:when test="$myparam='CAJ'"><xsl:value-of select="$myparam"/> (Consular service)</xsl:when>
      		<xsl:when test="$myparam='CAK'"><xsl:value-of select="$myparam"/> (Customer collection)</xsl:when>
      		<xsl:when test="$myparam='CAL'"><xsl:value-of select="$myparam"/> (Payroll payment service)</xsl:when>
      		<xsl:when test="$myparam='CAM'"><xsl:value-of select="$myparam"/> (Cash transportation)</xsl:when>
      		<xsl:when test="$myparam='CAN'"><xsl:value-of select="$myparam"/> (Home banking service)</xsl:when>
      		<xsl:when test="$myparam='CAO'"><xsl:value-of select="$myparam"/> (Bilateral agreement service)</xsl:when>
      		<xsl:when test="$myparam='CAP'"><xsl:value-of select="$myparam"/> (Insurance brokerage service)</xsl:when>
      		<xsl:when test="$myparam='CAQ'"><xsl:value-of select="$myparam"/> (Cheque generation)</xsl:when>
      		<xsl:when test="$myparam='CAR'"><xsl:value-of select="$myparam"/> (Preferential merchandising location)</xsl:when>
      		<xsl:when test="$myparam='CAS'"><xsl:value-of select="$myparam"/> (Crane)</xsl:when>
      		<xsl:when test="$myparam='CAT'"><xsl:value-of select="$myparam"/> (Special colour service)</xsl:when>
      		<xsl:when test="$myparam='CAU'"><xsl:value-of select="$myparam"/> (Sorting)</xsl:when>
      		<xsl:when test="$myparam='CAV'"><xsl:value-of select="$myparam"/> (Battery collection and recycling)</xsl:when>
      		<xsl:when test="$myparam='CAW'"><xsl:value-of select="$myparam"/> (Product take back fee)</xsl:when>
      		<xsl:when test="$myparam='CAX'"><xsl:value-of select="$myparam"/> (Quality control released)</xsl:when>
      		<xsl:when test="$myparam='CAY'"><xsl:value-of select="$myparam"/> (Quality control held)</xsl:when>
      		<xsl:when test="$myparam='CAZ'"><xsl:value-of select="$myparam"/> (Quality control embargo)</xsl:when>
      		<xsl:when test="$myparam='CD'"><xsl:value-of select="$myparam"/> (Car loading)</xsl:when>
      		<xsl:when test="$myparam='CG'"><xsl:value-of select="$myparam"/> (Cleaning)</xsl:when>
      		<xsl:when test="$myparam='CS'"><xsl:value-of select="$myparam"/> (Cigarette stamping)</xsl:when>
      		<xsl:when test="$myparam='CT'"><xsl:value-of select="$myparam"/> (Count and recount)</xsl:when>
      		<xsl:when test="$myparam='DAB'"><xsl:value-of select="$myparam"/> (Layout/design)</xsl:when>
      		<xsl:when test="$myparam='DAC'"><xsl:value-of select="$myparam"/> (Assortment allowance)</xsl:when>
      		<xsl:when test="$myparam='DAD'"><xsl:value-of select="$myparam"/> (Driver assigned unloading)</xsl:when>
      		<xsl:when test="$myparam='DAF'"><xsl:value-of select="$myparam"/> (Debtor bound)</xsl:when>
      		<xsl:when test="$myparam='DAG'"><xsl:value-of select="$myparam"/> (Dealer allowance)</xsl:when>
      		<xsl:when test="$myparam='DAH'"><xsl:value-of select="$myparam"/> (Allowance transferable to the consumer)</xsl:when>
      		<xsl:when test="$myparam='DAI'"><xsl:value-of select="$myparam"/> (Growth of business)</xsl:when>
      		<xsl:when test="$myparam='DAJ'"><xsl:value-of select="$myparam"/> (Introduction allowance)</xsl:when>
      		<xsl:when test="$myparam='DAK'"><xsl:value-of select="$myparam"/> (Multi-buy promotion)</xsl:when>
      		<xsl:when test="$myparam='DAL'"><xsl:value-of select="$myparam"/> (Partnership)</xsl:when>
      		<xsl:when test="$myparam='DAM'"><xsl:value-of select="$myparam"/> (Return handling)</xsl:when>
      		<xsl:when test="$myparam='DAN'"><xsl:value-of select="$myparam"/> (Minimum order not fulfilled charge)</xsl:when>
      		<xsl:when test="$myparam='DAO'"><xsl:value-of select="$myparam"/> (Point of sales threshold allowance)</xsl:when>
      		<xsl:when test="$myparam='DAP'"><xsl:value-of select="$myparam"/> (Wholesaling discount)</xsl:when>
      		<xsl:when test="$myparam='DAQ'"><xsl:value-of select="$myparam"/> (Documentary credits transfer commission)</xsl:when>
      		<xsl:when test="$myparam='DL'"><xsl:value-of select="$myparam"/> (Delivery)</xsl:when>
      		<xsl:when test="$myparam='EG'"><xsl:value-of select="$myparam"/> (Engraving)</xsl:when>
      		<xsl:when test="$myparam='EP'"><xsl:value-of select="$myparam"/> (Expediting)</xsl:when>
      		<xsl:when test="$myparam='ER'"><xsl:value-of select="$myparam"/> (Exchange rate guarantee)</xsl:when>
      		<xsl:when test="$myparam='FAA'"><xsl:value-of select="$myparam"/> (Fabrication)</xsl:when>
      		<xsl:when test="$myparam='FAB'"><xsl:value-of select="$myparam"/> (Freight equalization)</xsl:when>
      		<xsl:when test="$myparam='FAC'"><xsl:value-of select="$myparam"/> (Freight extraordinary handling)</xsl:when>
      		<xsl:when test="$myparam='FC'"><xsl:value-of select="$myparam"/> (Freight service)</xsl:when>
      		<xsl:when test="$myparam='FH'"><xsl:value-of select="$myparam"/> (Filling/handling)</xsl:when>
      		<xsl:when test="$myparam='FI'"><xsl:value-of select="$myparam"/> (Financing)</xsl:when>
      		<xsl:when test="$myparam='GAA'"><xsl:value-of select="$myparam"/> (Grinding)</xsl:when>
      		<xsl:when test="$myparam='HAA'"><xsl:value-of select="$myparam"/> (Hose)</xsl:when>
      		<xsl:when test="$myparam='HD'"><xsl:value-of select="$myparam"/> (Handling)</xsl:when>
      		<xsl:when test="$myparam='HH'"><xsl:value-of select="$myparam"/> (Hoisting and hauling)</xsl:when>
      		<xsl:when test="$myparam='IAA'"><xsl:value-of select="$myparam"/> (Installation)</xsl:when>
      		<xsl:when test="$myparam='IAB'"><xsl:value-of select="$myparam"/> (Installation and warranty)</xsl:when>
      		<xsl:when test="$myparam='ID'"><xsl:value-of select="$myparam"/> (Inside delivery)</xsl:when>
      		<xsl:when test="$myparam='IF'"><xsl:value-of select="$myparam"/> (Inspection)</xsl:when>
      		<xsl:when test="$myparam='IR'"><xsl:value-of select="$myparam"/> (Installation and training)</xsl:when>
      		<xsl:when test="$myparam='IS'"><xsl:value-of select="$myparam"/> (Invoicing)</xsl:when>
      		<xsl:when test="$myparam='KO'"><xsl:value-of select="$myparam"/> (Koshering)</xsl:when>
      		<xsl:when test="$myparam='L1'"><xsl:value-of select="$myparam"/> (Carrier count)</xsl:when>
      		<xsl:when test="$myparam='LA'"><xsl:value-of select="$myparam"/> (Labelling)</xsl:when>
      		<xsl:when test="$myparam='LAA'"><xsl:value-of select="$myparam"/> (Labour)</xsl:when>
      		<xsl:when test="$myparam='LAB'"><xsl:value-of select="$myparam"/> (Repair and return)</xsl:when>
      		<xsl:when test="$myparam='LF'"><xsl:value-of select="$myparam"/> (Legalisation)</xsl:when>
      		<xsl:when test="$myparam='MAE'"><xsl:value-of select="$myparam"/> (Mounting)</xsl:when>
      		<xsl:when test="$myparam='MI'"><xsl:value-of select="$myparam"/> (Mail invoice)</xsl:when>
      		<xsl:when test="$myparam='ML'"><xsl:value-of select="$myparam"/> (Mail invoice to each location)</xsl:when>
      		<xsl:when test="$myparam='NAA'"><xsl:value-of select="$myparam"/> (Non-returnable containers)</xsl:when>
      		<xsl:when test="$myparam='OA'"><xsl:value-of select="$myparam"/> (Outside cable connectors)</xsl:when>
      		<xsl:when test="$myparam='PA'"><xsl:value-of select="$myparam"/> (Invoice with shipment)</xsl:when>
      		<xsl:when test="$myparam='PAA'"><xsl:value-of select="$myparam"/> (Phosphatizing (steel treatment))</xsl:when>
      		<xsl:when test="$myparam='PC'"><xsl:value-of select="$myparam"/> (Packing)</xsl:when>
      		<xsl:when test="$myparam='PL'"><xsl:value-of select="$myparam"/> (Palletizing)</xsl:when>
      		<xsl:when test="$myparam='RAB'"><xsl:value-of select="$myparam"/> (Repacking)</xsl:when>
      		<xsl:when test="$myparam='RAC'"><xsl:value-of select="$myparam"/> (Repair)</xsl:when>
      		<xsl:when test="$myparam='RAD'"><xsl:value-of select="$myparam"/> (Returnable container)</xsl:when>
      		<xsl:when test="$myparam='RAF'"><xsl:value-of select="$myparam"/> (Restocking)</xsl:when>
      		<xsl:when test="$myparam='RE'"><xsl:value-of select="$myparam"/> (Re-delivery)</xsl:when>
      		<xsl:when test="$myparam='RF'"><xsl:value-of select="$myparam"/> (Refurbishing)</xsl:when>
      		<xsl:when test="$myparam='RH'"><xsl:value-of select="$myparam"/> (Rail wagon hire)</xsl:when>
      		<xsl:when test="$myparam='RV'"><xsl:value-of select="$myparam"/> (Loading)</xsl:when>
      		<xsl:when test="$myparam='SA'"><xsl:value-of select="$myparam"/> (Salvaging)</xsl:when>
      		<xsl:when test="$myparam='SAA'"><xsl:value-of select="$myparam"/> (Shipping and handling)</xsl:when>
      		<xsl:when test="$myparam='SAD'"><xsl:value-of select="$myparam"/> (Special packaging)</xsl:when>
      		<xsl:when test="$myparam='SAE'"><xsl:value-of select="$myparam"/> (Stamping)</xsl:when>
      		<xsl:when test="$myparam='SAI'"><xsl:value-of select="$myparam"/> (Consignee unload)</xsl:when>
      		<xsl:when test="$myparam='SG'"><xsl:value-of select="$myparam"/> (Shrink-wrap)</xsl:when>
      		<xsl:when test="$myparam='SH'"><xsl:value-of select="$myparam"/> (Special handling)</xsl:when>
      		<xsl:when test="$myparam='SM'"><xsl:value-of select="$myparam"/> (Special finish)</xsl:when>
      		<xsl:when test="$myparam='SU'"><xsl:value-of select="$myparam"/> (Set-up)</xsl:when>
      		<xsl:when test="$myparam='TAB'"><xsl:value-of select="$myparam"/> (Tank renting)</xsl:when>
      		<xsl:when test="$myparam='TAC'"><xsl:value-of select="$myparam"/> (Testing)</xsl:when>
      		<xsl:when test="$myparam='TT'"><xsl:value-of select="$myparam"/> (Transportation - third party billing)</xsl:when>
      		<xsl:when test="$myparam='TV'"><xsl:value-of select="$myparam"/> (Transportation by vendor)</xsl:when>
      		<xsl:when test="$myparam='V1'"><xsl:value-of select="$myparam"/> (Drop yard)</xsl:when>
      		<xsl:when test="$myparam='V2'"><xsl:value-of select="$myparam"/> (Drop dock)</xsl:when>
      		<xsl:when test="$myparam='WH'"><xsl:value-of select="$myparam"/> (Warehousing)</xsl:when>
      		<xsl:when test="$myparam='XAA'"><xsl:value-of select="$myparam"/> (Combine all same day shipment)</xsl:when>
      		<xsl:when test="$myparam='YY'"><xsl:value-of select="$myparam"/> (Split pick-up)</xsl:when>
      		<xsl:when test="$myparam='ZZZ'"><xsl:value-of select="$myparam"/> (Mutually defined)</xsl:when>
   			<xsl:otherwise><xsl:value-of select="$myparam"/></xsl:otherwise>
		</xsl:choose>
	</xsl:template>

</xsl:stylesheet>