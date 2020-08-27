<?xml version="1.0"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template name="code.UNTDID.1153">
		<xsl:param name="myparam"/>
		<xsl:choose>
      		<xsl:when test="$myparam='AAA'"><xsl:value-of select="$myparam"/> (Order acknowledgement document identifier)</xsl:when>
      		<xsl:when test="$myparam='AAB'"><xsl:value-of select="$myparam"/> (Proforma invoice document identifier)</xsl:when>
      		<xsl:when test="$myparam='AAC'"><xsl:value-of select="$myparam"/> (Documentary credit identifier)</xsl:when>
      		<xsl:when test="$myparam='AAD'"><xsl:value-of select="$myparam"/> (Contract document addendum identifier)</xsl:when>
      		<xsl:when test="$myparam='AAE'"><xsl:value-of select="$myparam"/> (Goods declaration number)</xsl:when>
      		<xsl:when test="$myparam='AAF'"><xsl:value-of select="$myparam"/> (Debit card number)</xsl:when>
      		<xsl:when test="$myparam='AAG'"><xsl:value-of select="$myparam"/> (Offer number)</xsl:when>
      		<xsl:when test="$myparam='AAH'"><xsl:value-of select="$myparam"/> (Bank's batch interbank transaction reference number)</xsl:when>
      		<xsl:when test="$myparam='AAI'"><xsl:value-of select="$myparam"/> (Bank's individual interbank transaction reference number)</xsl:when>
      		<xsl:when test="$myparam='AAJ'"><xsl:value-of select="$myparam"/> (Delivery order number)</xsl:when>
      		<xsl:when test="$myparam='AAK'"><xsl:value-of select="$myparam"/> (Despatch advice number)</xsl:when>
      		<xsl:when test="$myparam='AAL'"><xsl:value-of select="$myparam"/> (Drawing number)</xsl:when>
      		<xsl:when test="$myparam='AAM'"><xsl:value-of select="$myparam"/> (Waybill number)</xsl:when>
      		<xsl:when test="$myparam='AAN'"><xsl:value-of select="$myparam"/> (Delivery schedule number)</xsl:when>
      		<xsl:when test="$myparam='AAO'"><xsl:value-of select="$myparam"/> (Consignment identifier, consignee assigned)</xsl:when>
      		<xsl:when test="$myparam='AAP'"><xsl:value-of select="$myparam"/> (Partial shipment identifier)</xsl:when>
      		<xsl:when test="$myparam='AAQ'"><xsl:value-of select="$myparam"/> (Transport equipment identifier)</xsl:when>
      		<xsl:when test="$myparam='AAR'"><xsl:value-of select="$myparam"/> (Municipality assigned business registry number)</xsl:when>
      		<xsl:when test="$myparam='AAS'"><xsl:value-of select="$myparam"/> (Transport contract document identifier)</xsl:when>
      		<xsl:when test="$myparam='AAT'"><xsl:value-of select="$myparam"/> (Master label number)</xsl:when>
      		<xsl:when test="$myparam='AAU'"><xsl:value-of select="$myparam"/> (Despatch note document identifier)</xsl:when>
      		<xsl:when test="$myparam='AAV'"><xsl:value-of select="$myparam"/> (Enquiry number)</xsl:when>
      		<xsl:when test="$myparam='AAW'"><xsl:value-of select="$myparam"/> (Docket number)</xsl:when>
      		<xsl:when test="$myparam='AAX'"><xsl:value-of select="$myparam"/> (Civil action number)</xsl:when>
      		<xsl:when test="$myparam='AAY'"><xsl:value-of select="$myparam"/> (Carrier's agent reference number)</xsl:when>
      		<xsl:when test="$myparam='AAZ'"><xsl:value-of select="$myparam"/> (Standard Carrier Alpha Code (SCAC) number)</xsl:when>
      		<xsl:when test="$myparam='ABA'"><xsl:value-of select="$myparam"/> (Customs valuation decision number)</xsl:when>
      		<xsl:when test="$myparam='ABB'"><xsl:value-of select="$myparam"/> (End use authorization number)</xsl:when>
      		<xsl:when test="$myparam='ABC'"><xsl:value-of select="$myparam"/> (Anti-dumping case number)</xsl:when>
      		<xsl:when test="$myparam='ABD'"><xsl:value-of select="$myparam"/> (Customs tariff number)</xsl:when>
      		<xsl:when test="$myparam='ABE'"><xsl:value-of select="$myparam"/> (Declarant's reference number)</xsl:when>
      		<xsl:when test="$myparam='ABF'"><xsl:value-of select="$myparam"/> (Repair estimate number)</xsl:when>
      		<xsl:when test="$myparam='ABG'"><xsl:value-of select="$myparam"/> (Customs decision request number)</xsl:when>
      		<xsl:when test="$myparam='ABH'"><xsl:value-of select="$myparam"/> (Sub-house bill of lading number)</xsl:when>
      		<xsl:when test="$myparam='ABI'"><xsl:value-of select="$myparam"/> (Tax payment identifier)</xsl:when>
      		<xsl:when test="$myparam='ABJ'"><xsl:value-of select="$myparam"/> (Quota number)</xsl:when>
      		<xsl:when test="$myparam='ABK'"><xsl:value-of select="$myparam"/> (Transit (onward carriage) guarantee (bond) number)</xsl:when>
      		<xsl:when test="$myparam='ABL'"><xsl:value-of select="$myparam"/> (Customs guarantee number)</xsl:when>
      		<xsl:when test="$myparam='ABM'"><xsl:value-of select="$myparam"/> (Replacing part number)</xsl:when>
      		<xsl:when test="$myparam='ABN'"><xsl:value-of select="$myparam"/> (Seller's catalogue number)</xsl:when>
      		<xsl:when test="$myparam='ABO'"><xsl:value-of select="$myparam"/> (Originator's reference)</xsl:when>
      		<xsl:when test="$myparam='ABP'"><xsl:value-of select="$myparam"/> (Declarant's Customs identity number)</xsl:when>
      		<xsl:when test="$myparam='ABQ'"><xsl:value-of select="$myparam"/> (Importer reference number)</xsl:when>
      		<xsl:when test="$myparam='ABR'"><xsl:value-of select="$myparam"/> (Export clearance instruction reference number)</xsl:when>
      		<xsl:when test="$myparam='ABS'"><xsl:value-of select="$myparam"/> (Import clearance instruction reference number)</xsl:when>
      		<xsl:when test="$myparam='ABT'"><xsl:value-of select="$myparam"/> (Goods declaration document identifier, Customs)</xsl:when>
      		<xsl:when test="$myparam='ABU'"><xsl:value-of select="$myparam"/> (Article number)</xsl:when>
      		<xsl:when test="$myparam='ABV'"><xsl:value-of select="$myparam"/> (Intra-plant routing)</xsl:when>
      		<xsl:when test="$myparam='ABW'"><xsl:value-of select="$myparam"/> (Stock keeping unit number)</xsl:when>
      		<xsl:when test="$myparam='ABX'"><xsl:value-of select="$myparam"/> (Text Element Identifier deletion reference)</xsl:when>
      		<xsl:when test="$myparam='ABY'"><xsl:value-of select="$myparam"/> (Allotment identification (Air))</xsl:when>
      		<xsl:when test="$myparam='ABZ'"><xsl:value-of select="$myparam"/> (Vehicle licence number)</xsl:when>
      		<xsl:when test="$myparam='AC'"><xsl:value-of select="$myparam"/> (Air cargo transfer manifest)</xsl:when>
      		<xsl:when test="$myparam='ACA'"><xsl:value-of select="$myparam"/> (Cargo acceptance order reference number)</xsl:when>
      		<xsl:when test="$myparam='ACB'"><xsl:value-of select="$myparam"/> (US government agency number)</xsl:when>
      		<xsl:when test="$myparam='ACC'"><xsl:value-of select="$myparam"/> (Shipping unit identification)</xsl:when>
      		<xsl:when test="$myparam='ACD'"><xsl:value-of select="$myparam"/> (Additional reference number)</xsl:when>
      		<xsl:when test="$myparam='ACE'"><xsl:value-of select="$myparam"/> (Related document number)</xsl:when>
      		<xsl:when test="$myparam='ACF'"><xsl:value-of select="$myparam"/> (Addressee reference)</xsl:when>
      		<xsl:when test="$myparam='ACG'"><xsl:value-of select="$myparam"/> (ATA carnet number)</xsl:when>
      		<xsl:when test="$myparam='ACH'"><xsl:value-of select="$myparam"/> (Packaging unit identification)</xsl:when>
      		<xsl:when test="$myparam='ACI'"><xsl:value-of select="$myparam"/> (Outerpackaging unit identification)</xsl:when>
      		<xsl:when test="$myparam='ACJ'"><xsl:value-of select="$myparam"/> (Customer material specification number)</xsl:when>
      		<xsl:when test="$myparam='ACK'"><xsl:value-of select="$myparam"/> (Bank reference)</xsl:when>
      		<xsl:when test="$myparam='ACL'"><xsl:value-of select="$myparam"/> (Principal reference number)</xsl:when>
      		<xsl:when test="$myparam='ACN'"><xsl:value-of select="$myparam"/> (Collection advice document identifier)</xsl:when>
      		<xsl:when test="$myparam='ACO'"><xsl:value-of select="$myparam"/> (Iron charge number)</xsl:when>
      		<xsl:when test="$myparam='ACP'"><xsl:value-of select="$myparam"/> (Hot roll number)</xsl:when>
      		<xsl:when test="$myparam='ACQ'"><xsl:value-of select="$myparam"/> (Cold roll number)</xsl:when>
      		<xsl:when test="$myparam='ACR'"><xsl:value-of select="$myparam"/> (Railway wagon number)</xsl:when>
      		<xsl:when test="$myparam='ACT'"><xsl:value-of select="$myparam"/> (Unique claims reference number of the sender)</xsl:when>
      		<xsl:when test="$myparam='ACU'"><xsl:value-of select="$myparam"/> (Loss/event number)</xsl:when>
      		<xsl:when test="$myparam='ACV'"><xsl:value-of select="$myparam"/> (Estimate order reference number)</xsl:when>
      		<xsl:when test="$myparam='ACW'"><xsl:value-of select="$myparam"/> (Reference number to previous message)</xsl:when>
      		<xsl:when test="$myparam='ACX'"><xsl:value-of select="$myparam"/> (Banker's acceptance)</xsl:when>
      		<xsl:when test="$myparam='ACY'"><xsl:value-of select="$myparam"/> (Duty memo number)</xsl:when>
      		<xsl:when test="$myparam='ACZ'"><xsl:value-of select="$myparam"/> (Equipment transport charge number)</xsl:when>
      		<xsl:when test="$myparam='ADA'"><xsl:value-of select="$myparam"/> (Buyer's item number)</xsl:when>
      		<xsl:when test="$myparam='ADB'"><xsl:value-of select="$myparam"/> (Matured certificate of deposit)</xsl:when>
      		<xsl:when test="$myparam='ADC'"><xsl:value-of select="$myparam"/> (Loan)</xsl:when>
      		<xsl:when test="$myparam='ADD'"><xsl:value-of select="$myparam"/> (Analysis number/test number)</xsl:when>
      		<xsl:when test="$myparam='ADE'"><xsl:value-of select="$myparam"/> (Account number)</xsl:when>
      		<xsl:when test="$myparam='ADF'"><xsl:value-of select="$myparam"/> (Treaty number)</xsl:when>
      		<xsl:when test="$myparam='ADG'"><xsl:value-of select="$myparam"/> (Catastrophe number)</xsl:when>
      		<xsl:when test="$myparam='ADI'"><xsl:value-of select="$myparam"/> (Bureau signing (statement reference))</xsl:when>
      		<xsl:when test="$myparam='ADJ'"><xsl:value-of select="$myparam"/> (Company / syndicate reference 1)</xsl:when>
      		<xsl:when test="$myparam='ADK'"><xsl:value-of select="$myparam"/> (Company / syndicate reference 2)</xsl:when>
      		<xsl:when test="$myparam='ADL'"><xsl:value-of select="$myparam"/> (Ordering customer consignment reference number)</xsl:when>
      		<xsl:when test="$myparam='ADM'"><xsl:value-of select="$myparam"/> (Shipowner's authorization number)</xsl:when>
      		<xsl:when test="$myparam='ADN'"><xsl:value-of select="$myparam"/> (Inland transport order number)</xsl:when>
      		<xsl:when test="$myparam='ADO'"><xsl:value-of select="$myparam"/> (Container work order reference number)</xsl:when>
      		<xsl:when test="$myparam='ADP'"><xsl:value-of select="$myparam"/> (Statement number)</xsl:when>
      		<xsl:when test="$myparam='ADQ'"><xsl:value-of select="$myparam"/> (Unique market reference)</xsl:when>
      		<xsl:when test="$myparam='ADT'"><xsl:value-of select="$myparam"/> (Group accounting)</xsl:when>
      		<xsl:when test="$myparam='ADU'"><xsl:value-of select="$myparam"/> (Broker reference 1)</xsl:when>
      		<xsl:when test="$myparam='ADV'"><xsl:value-of select="$myparam"/> (Broker reference 2)</xsl:when>
      		<xsl:when test="$myparam='ADW'"><xsl:value-of select="$myparam"/> (Lloyd's claims office reference)</xsl:when>
      		<xsl:when test="$myparam='ADX'"><xsl:value-of select="$myparam"/> (Secure delivery terms and conditions agreement reference)</xsl:when>
      		<xsl:when test="$myparam='ADY'"><xsl:value-of select="$myparam"/> (Report number)</xsl:when>
      		<xsl:when test="$myparam='ADZ'"><xsl:value-of select="$myparam"/> (Trader account number)</xsl:when>
      		<xsl:when test="$myparam='AE'"><xsl:value-of select="$myparam"/> (Authorization for expense (AFE) number)</xsl:when>
      		<xsl:when test="$myparam='AEA'"><xsl:value-of select="$myparam"/> (Government agency reference number)</xsl:when>
      		<xsl:when test="$myparam='AEB'"><xsl:value-of select="$myparam"/> (Assembly number)</xsl:when>
      		<xsl:when test="$myparam='AEC'"><xsl:value-of select="$myparam"/> (Symbol number)</xsl:when>
      		<xsl:when test="$myparam='AED'"><xsl:value-of select="$myparam"/> (Commodity number)</xsl:when>
      		<xsl:when test="$myparam='AEE'"><xsl:value-of select="$myparam"/> (Eur 1 certificate number)</xsl:when>
      		<xsl:when test="$myparam='AEF'"><xsl:value-of select="$myparam"/> (Customer process specification number)</xsl:when>
      		<xsl:when test="$myparam='AEG'"><xsl:value-of select="$myparam"/> (Customer specification number)</xsl:when>
      		<xsl:when test="$myparam='AEH'"><xsl:value-of select="$myparam"/> (Applicable instructions or standards)</xsl:when>
      		<xsl:when test="$myparam='AEI'"><xsl:value-of select="$myparam"/> (Registration number of previous Customs declaration)</xsl:when>
      		<xsl:when test="$myparam='AEJ'"><xsl:value-of select="$myparam"/> (Post-entry reference)</xsl:when>
      		<xsl:when test="$myparam='AEK'"><xsl:value-of select="$myparam"/> (Payment order number)</xsl:when>
      		<xsl:when test="$myparam='AEL'"><xsl:value-of select="$myparam"/> (Delivery number (transport))</xsl:when>
      		<xsl:when test="$myparam='AEM'"><xsl:value-of select="$myparam"/> (Transport route)</xsl:when>
      		<xsl:when test="$myparam='AEN'"><xsl:value-of select="$myparam"/> (Customer's unit inventory number)</xsl:when>
      		<xsl:when test="$myparam='AEO'"><xsl:value-of select="$myparam"/> (Product reservation number)</xsl:when>
      		<xsl:when test="$myparam='AEP'"><xsl:value-of select="$myparam"/> (Project number)</xsl:when>
      		<xsl:when test="$myparam='AEQ'"><xsl:value-of select="$myparam"/> (Drawing list number)</xsl:when>
      		<xsl:when test="$myparam='AER'"><xsl:value-of select="$myparam"/> (Project specification number)</xsl:when>
      		<xsl:when test="$myparam='AES'"><xsl:value-of select="$myparam"/> (Primary reference)</xsl:when>
      		<xsl:when test="$myparam='AET'"><xsl:value-of select="$myparam"/> (Request for cancellation number)</xsl:when>
      		<xsl:when test="$myparam='AEU'"><xsl:value-of select="$myparam"/> (Supplier's control number)</xsl:when>
      		<xsl:when test="$myparam='AEV'"><xsl:value-of select="$myparam"/> (Shipping note number)</xsl:when>
      		<xsl:when test="$myparam='AEW'"><xsl:value-of select="$myparam"/> (Empty container bill number)</xsl:when>
      		<xsl:when test="$myparam='AEX'"><xsl:value-of select="$myparam"/> (Non-negotiable maritime transport document number)</xsl:when>
      		<xsl:when test="$myparam='AEY'"><xsl:value-of select="$myparam"/> (Substitute air waybill number)</xsl:when>
      		<xsl:when test="$myparam='AEZ'"><xsl:value-of select="$myparam"/> (Despatch note (post parcels) number)</xsl:when>
      		<xsl:when test="$myparam='AF'"><xsl:value-of select="$myparam"/> (Airlines flight identification number)</xsl:when>
      		<xsl:when test="$myparam='AFA'"><xsl:value-of select="$myparam"/> (Through bill of lading number)</xsl:when>
      		<xsl:when test="$myparam='AFB'"><xsl:value-of select="$myparam"/> (Cargo manifest number)</xsl:when>
      		<xsl:when test="$myparam='AFC'"><xsl:value-of select="$myparam"/> (Bordereau number)</xsl:when>
      		<xsl:when test="$myparam='AFD'"><xsl:value-of select="$myparam"/> (Customs item number)</xsl:when>
      		<xsl:when test="$myparam='AFE'"><xsl:value-of select="$myparam"/> (Export Control Commodity number (ECCN))</xsl:when>
      		<xsl:when test="$myparam='AFF'"><xsl:value-of select="$myparam"/> (Marking/label reference)</xsl:when>
      		<xsl:when test="$myparam='AFG'"><xsl:value-of select="$myparam"/> (Tariff number)</xsl:when>
      		<xsl:when test="$myparam='AFH'"><xsl:value-of select="$myparam"/> (Replenishment purchase order number)</xsl:when>
      		<xsl:when test="$myparam='AFI'"><xsl:value-of select="$myparam"/> (Immediate transportation no. for in bond movement)</xsl:when>
      		<xsl:when test="$myparam='AFJ'"><xsl:value-of select="$myparam"/> (Transportation exportation no. for in bond movement)</xsl:when>
      		<xsl:when test="$myparam='AFK'"><xsl:value-of select="$myparam"/> (Immediate exportation no. for in bond movement)</xsl:when>
      		<xsl:when test="$myparam='AFL'"><xsl:value-of select="$myparam"/> (Associated invoices)</xsl:when>
      		<xsl:when test="$myparam='AFM'"><xsl:value-of select="$myparam"/> (Secondary Customs reference)</xsl:when>
      		<xsl:when test="$myparam='AFN'"><xsl:value-of select="$myparam"/> (Account party's reference)</xsl:when>
      		<xsl:when test="$myparam='AFO'"><xsl:value-of select="$myparam"/> (Beneficiary's reference)</xsl:when>
      		<xsl:when test="$myparam='AFP'"><xsl:value-of select="$myparam"/> (Second beneficiary's reference)</xsl:when>
      		<xsl:when test="$myparam='AFQ'"><xsl:value-of select="$myparam"/> (Applicant's bank reference)</xsl:when>
      		<xsl:when test="$myparam='AFR'"><xsl:value-of select="$myparam"/> (Issuing bank's reference)</xsl:when>
      		<xsl:when test="$myparam='AFS'"><xsl:value-of select="$myparam"/> (Beneficiary's bank reference)</xsl:when>
      		<xsl:when test="$myparam='AFT'"><xsl:value-of select="$myparam"/> (Direct payment valuation number)</xsl:when>
      		<xsl:when test="$myparam='AFU'"><xsl:value-of select="$myparam"/> (Direct payment valuation request number)</xsl:when>
      		<xsl:when test="$myparam='AFV'"><xsl:value-of select="$myparam"/> (Quantity valuation number)</xsl:when>
      		<xsl:when test="$myparam='AFW'"><xsl:value-of select="$myparam"/> (Quantity valuation request number)</xsl:when>
      		<xsl:when test="$myparam='AFX'"><xsl:value-of select="$myparam"/> (Bill of quantities number)</xsl:when>
      		<xsl:when test="$myparam='AFY'"><xsl:value-of select="$myparam"/> (Payment valuation number)</xsl:when>
      		<xsl:when test="$myparam='AFZ'"><xsl:value-of select="$myparam"/> (Situation number)</xsl:when>
      		<xsl:when test="$myparam='AGA'"><xsl:value-of select="$myparam"/> (Agreement to pay number)</xsl:when>
      		<xsl:when test="$myparam='AGB'"><xsl:value-of select="$myparam"/> (Contract party reference number)</xsl:when>
      		<xsl:when test="$myparam='AGC'"><xsl:value-of select="$myparam"/> (Account party's bank reference)</xsl:when>
      		<xsl:when test="$myparam='AGD'"><xsl:value-of select="$myparam"/> (Agent's bank reference)</xsl:when>
      		<xsl:when test="$myparam='AGE'"><xsl:value-of select="$myparam"/> (Agent's reference)</xsl:when>
      		<xsl:when test="$myparam='AGF'"><xsl:value-of select="$myparam"/> (Applicant's reference)</xsl:when>
      		<xsl:when test="$myparam='AGG'"><xsl:value-of select="$myparam"/> (Dispute number)</xsl:when>
      		<xsl:when test="$myparam='AGH'"><xsl:value-of select="$myparam"/> (Credit rating agency's reference number)</xsl:when>
      		<xsl:when test="$myparam='AGI'"><xsl:value-of select="$myparam"/> (Request number)</xsl:when>
      		<xsl:when test="$myparam='AGJ'"><xsl:value-of select="$myparam"/> (Single transaction sequence number)</xsl:when>
      		<xsl:when test="$myparam='AGK'"><xsl:value-of select="$myparam"/> (Application reference number)</xsl:when>
      		<xsl:when test="$myparam='AGL'"><xsl:value-of select="$myparam"/> (Delivery verification certificate)</xsl:when>
      		<xsl:when test="$myparam='AGM'"><xsl:value-of select="$myparam"/> (Number of temporary importation document)</xsl:when>
      		<xsl:when test="$myparam='AGN'"><xsl:value-of select="$myparam"/> (Reference number quoted on statement)</xsl:when>
      		<xsl:when test="$myparam='AGO'"><xsl:value-of select="$myparam"/> (Sender's reference to the original message)</xsl:when>
      		<xsl:when test="$myparam='AGP'"><xsl:value-of select="$myparam"/> (Company issued equipment ID)</xsl:when>
      		<xsl:when test="$myparam='AGQ'"><xsl:value-of select="$myparam"/> (Domestic flight number)</xsl:when>
      		<xsl:when test="$myparam='AGR'"><xsl:value-of select="$myparam"/> (International flight number)</xsl:when>
      		<xsl:when test="$myparam='AGS'"><xsl:value-of select="$myparam"/> (Employer identification number of service bureau)</xsl:when>
      		<xsl:when test="$myparam='AGT'"><xsl:value-of select="$myparam"/> (Service group identification number)</xsl:when>
      		<xsl:when test="$myparam='AGU'"><xsl:value-of select="$myparam"/> (Member number)</xsl:when>
      		<xsl:when test="$myparam='AGV'"><xsl:value-of select="$myparam"/> (Previous member number)</xsl:when>
      		<xsl:when test="$myparam='AGW'"><xsl:value-of select="$myparam"/> (Scheme/plan number)</xsl:when>
      		<xsl:when test="$myparam='AGX'"><xsl:value-of select="$myparam"/> (Previous scheme/plan number)</xsl:when>
      		<xsl:when test="$myparam='AGY'"><xsl:value-of select="$myparam"/> (Receiving party's member identification)</xsl:when>
      		<xsl:when test="$myparam='AGZ'"><xsl:value-of select="$myparam"/> (Payroll number)</xsl:when>
      		<xsl:when test="$myparam='AHA'"><xsl:value-of select="$myparam"/> (Packaging specification number)</xsl:when>
      		<xsl:when test="$myparam='AHB'"><xsl:value-of select="$myparam"/> (Authority issued equipment identification)</xsl:when>
      		<xsl:when test="$myparam='AHC'"><xsl:value-of select="$myparam"/> (Training flight number)</xsl:when>
      		<xsl:when test="$myparam='AHD'"><xsl:value-of select="$myparam"/> (Fund code number)</xsl:when>
      		<xsl:when test="$myparam='AHE'"><xsl:value-of select="$myparam"/> (Signal code number)</xsl:when>
      		<xsl:when test="$myparam='AHF'"><xsl:value-of select="$myparam"/> (Major force program number)</xsl:when>
      		<xsl:when test="$myparam='AHG'"><xsl:value-of select="$myparam"/> (Nomination number)</xsl:when>
      		<xsl:when test="$myparam='AHH'"><xsl:value-of select="$myparam"/> (Laboratory registration number)</xsl:when>
      		<xsl:when test="$myparam='AHI'"><xsl:value-of select="$myparam"/> (Transport contract reference number)</xsl:when>
      		<xsl:when test="$myparam='AHJ'"><xsl:value-of select="$myparam"/> (Payee's reference number)</xsl:when>
      		<xsl:when test="$myparam='AHK'"><xsl:value-of select="$myparam"/> (Payer's reference number)</xsl:when>
      		<xsl:when test="$myparam='AHL'"><xsl:value-of select="$myparam"/> (Creditor's reference number)</xsl:when>
      		<xsl:when test="$myparam='AHM'"><xsl:value-of select="$myparam"/> (Debtor's reference number)</xsl:when>
      		<xsl:when test="$myparam='AHN'"><xsl:value-of select="$myparam"/> (Joint venture reference number)</xsl:when>
      		<xsl:when test="$myparam='AHO'"><xsl:value-of select="$myparam"/> (Chamber of Commerce registration number)</xsl:when>
      		<xsl:when test="$myparam='AHP'"><xsl:value-of select="$myparam"/> (Tax registration number)</xsl:when>
      		<xsl:when test="$myparam='AHQ'"><xsl:value-of select="$myparam"/> (Wool identification number)</xsl:when>
      		<xsl:when test="$myparam='AHR'"><xsl:value-of select="$myparam"/> (Wool tax reference number)</xsl:when>
      		<xsl:when test="$myparam='AHS'"><xsl:value-of select="$myparam"/> (Meat processing establishment registration number)</xsl:when>
      		<xsl:when test="$myparam='AHT'"><xsl:value-of select="$myparam"/> (Quarantine/treatment status reference number)</xsl:when>
      		<xsl:when test="$myparam='AHU'"><xsl:value-of select="$myparam"/> (Request for quote number)</xsl:when>
      		<xsl:when test="$myparam='AHV'"><xsl:value-of select="$myparam"/> (Manual processing authority number)</xsl:when>
      		<xsl:when test="$myparam='AHX'"><xsl:value-of select="$myparam"/> (Rate note number)</xsl:when>
      		<xsl:when test="$myparam='AHY'"><xsl:value-of select="$myparam"/> (Freight Forwarder number)</xsl:when>
      		<xsl:when test="$myparam='AHZ'"><xsl:value-of select="$myparam"/> (Customs release code)</xsl:when>
      		<xsl:when test="$myparam='AIA'"><xsl:value-of select="$myparam"/> (Compliance code number)</xsl:when>
      		<xsl:when test="$myparam='AIB'"><xsl:value-of select="$myparam"/> (Department of transportation bond number)</xsl:when>
      		<xsl:when test="$myparam='AIC'"><xsl:value-of select="$myparam"/> (Export establishment number)</xsl:when>
      		<xsl:when test="$myparam='AID'"><xsl:value-of select="$myparam"/> (Certificate of conformity)</xsl:when>
      		<xsl:when test="$myparam='AIE'"><xsl:value-of select="$myparam"/> (Ministerial certificate of homologation)</xsl:when>
      		<xsl:when test="$myparam='AIF'"><xsl:value-of select="$myparam"/> (Previous delivery instruction number)</xsl:when>
      		<xsl:when test="$myparam='AIG'"><xsl:value-of select="$myparam"/> (Passport number)</xsl:when>
      		<xsl:when test="$myparam='AIH'"><xsl:value-of select="$myparam"/> (Common transaction reference number)</xsl:when>
      		<xsl:when test="$myparam='AII'"><xsl:value-of select="$myparam"/> (Bank's common transaction reference number)</xsl:when>
      		<xsl:when test="$myparam='AIJ'"><xsl:value-of select="$myparam"/> (Customer's individual transaction reference number)</xsl:when>
      		<xsl:when test="$myparam='AIK'"><xsl:value-of select="$myparam"/> (Bank's individual transaction reference number)</xsl:when>
      		<xsl:when test="$myparam='AIL'"><xsl:value-of select="$myparam"/> (Customer's common transaction reference number)</xsl:when>
      		<xsl:when test="$myparam='AIM'"><xsl:value-of select="$myparam"/> (Individual transaction reference number)</xsl:when>
      		<xsl:when test="$myparam='AIN'"><xsl:value-of select="$myparam"/> (Product sourcing agreement number)</xsl:when>
      		<xsl:when test="$myparam='AIO'"><xsl:value-of select="$myparam"/> (Customs transhipment number)</xsl:when>
      		<xsl:when test="$myparam='AIP'"><xsl:value-of select="$myparam"/> (Customs preference inquiry number)</xsl:when>
      		<xsl:when test="$myparam='AIQ'"><xsl:value-of select="$myparam"/> (Packing plant number)</xsl:when>
      		<xsl:when test="$myparam='AIR'"><xsl:value-of select="$myparam"/> (Original certificate number)</xsl:when>
      		<xsl:when test="$myparam='AIS'"><xsl:value-of select="$myparam"/> (Processing plant number)</xsl:when>
      		<xsl:when test="$myparam='AIT'"><xsl:value-of select="$myparam"/> (Slaughter plant number)</xsl:when>
      		<xsl:when test="$myparam='AIU'"><xsl:value-of select="$myparam"/> (Charge card account number)</xsl:when>
      		<xsl:when test="$myparam='AIV'"><xsl:value-of select="$myparam"/> (Event reference number)</xsl:when>
      		<xsl:when test="$myparam='AIW'"><xsl:value-of select="$myparam"/> (Transport section reference number)</xsl:when>
      		<xsl:when test="$myparam='AIX'"><xsl:value-of select="$myparam"/> (Referred product for mechanical analysis)</xsl:when>
      		<xsl:when test="$myparam='AIY'"><xsl:value-of select="$myparam"/> (Referred product for chemical analysis)</xsl:when>
      		<xsl:when test="$myparam='AIZ'"><xsl:value-of select="$myparam"/> (Consolidated invoice number)</xsl:when>
      		<xsl:when test="$myparam='AJA'"><xsl:value-of select="$myparam"/> (Part reference indicator in a drawing)</xsl:when>
      		<xsl:when test="$myparam='AJB'"><xsl:value-of select="$myparam"/> (U.S. Code of Federal Regulations (CFR))</xsl:when>
      		<xsl:when test="$myparam='AJC'"><xsl:value-of select="$myparam"/> (Purchasing activity clause number)</xsl:when>
      		<xsl:when test="$myparam='AJD'"><xsl:value-of select="$myparam"/> (U.S. Defense Federal Acquisition Regulation Supplement)</xsl:when>
      		<xsl:when test="$myparam='AJE'"><xsl:value-of select="$myparam"/> (Agency clause number)</xsl:when>
      		<xsl:when test="$myparam='AJF'"><xsl:value-of select="$myparam"/> (Circular publication number)</xsl:when>
      		<xsl:when test="$myparam='AJG'"><xsl:value-of select="$myparam"/> (U.S. Federal Acquisition Regulation)</xsl:when>
      		<xsl:when test="$myparam='AJH'"><xsl:value-of select="$myparam"/> (U.S. General Services Administration Regulation)</xsl:when>
      		<xsl:when test="$myparam='AJI'"><xsl:value-of select="$myparam"/> (U.S. Federal Information Resources Management Regulation)</xsl:when>
      		<xsl:when test="$myparam='AJJ'"><xsl:value-of select="$myparam"/> (Paragraph)</xsl:when>
      		<xsl:when test="$myparam='AJK'"><xsl:value-of select="$myparam"/> (Special instructions number)</xsl:when>
      		<xsl:when test="$myparam='AJL'"><xsl:value-of select="$myparam"/> (Site specific procedures, terms, and conditions number)</xsl:when>
      		<xsl:when test="$myparam='AJM'"><xsl:value-of select="$myparam"/> (Master solicitation procedures, terms, and conditions number)</xsl:when>
      		<xsl:when test="$myparam='AJN'"><xsl:value-of select="$myparam"/> (U.S. Department of Veterans Affairs Acquisition Regulation)</xsl:when>
      		<xsl:when test="$myparam='AJO'"><xsl:value-of select="$myparam"/> (Military Interdepartmental Purchase Request (MIPR) number)</xsl:when>
      		<xsl:when test="$myparam='AJP'"><xsl:value-of select="$myparam"/> (Foreign military sales number)</xsl:when>
      		<xsl:when test="$myparam='AJQ'"><xsl:value-of select="$myparam"/> (Defense priorities allocation system priority rating)</xsl:when>
      		<xsl:when test="$myparam='AJR'"><xsl:value-of select="$myparam"/> (Wage determination number)</xsl:when>
      		<xsl:when test="$myparam='AJS'"><xsl:value-of select="$myparam"/> (Agreement number)</xsl:when>
      		<xsl:when test="$myparam='AJT'"><xsl:value-of select="$myparam"/> (Standard Industry Classification (SIC) number)</xsl:when>
      		<xsl:when test="$myparam='AJU'"><xsl:value-of select="$myparam"/> (End item number)</xsl:when>
      		<xsl:when test="$myparam='AJV'"><xsl:value-of select="$myparam"/> (Federal supply schedule item number)</xsl:when>
      		<xsl:when test="$myparam='AJW'"><xsl:value-of select="$myparam"/> (Technical document number)</xsl:when>
      		<xsl:when test="$myparam='AJX'"><xsl:value-of select="$myparam"/> (Technical order number)</xsl:when>
      		<xsl:when test="$myparam='AJY'"><xsl:value-of select="$myparam"/> (Suffix)</xsl:when>
      		<xsl:when test="$myparam='AJZ'"><xsl:value-of select="$myparam"/> (Transportation account number)</xsl:when>
      		<xsl:when test="$myparam='AKA'"><xsl:value-of select="$myparam"/> (Container disposition order reference number)</xsl:when>
      		<xsl:when test="$myparam='AKB'"><xsl:value-of select="$myparam"/> (Container prefix)</xsl:when>
      		<xsl:when test="$myparam='AKC'"><xsl:value-of select="$myparam"/> (Transport equipment return reference)</xsl:when>
      		<xsl:when test="$myparam='AKD'"><xsl:value-of select="$myparam"/> (Transport equipment survey reference)</xsl:when>
      		<xsl:when test="$myparam='AKE'"><xsl:value-of select="$myparam"/> (Transport equipment survey report number)</xsl:when>
      		<xsl:when test="$myparam='AKF'"><xsl:value-of select="$myparam"/> (Transport equipment stuffing order)</xsl:when>
      		<xsl:when test="$myparam='AKG'"><xsl:value-of select="$myparam"/> (Vehicle Identification Number (VIN))</xsl:when>
      		<xsl:when test="$myparam='AKH'"><xsl:value-of select="$myparam"/> (Government bill of lading)</xsl:when>
      		<xsl:when test="$myparam='AKI'"><xsl:value-of select="$myparam"/> (Ordering customer's second reference number)</xsl:when>
      		<xsl:when test="$myparam='AKJ'"><xsl:value-of select="$myparam"/> (Direct debit reference)</xsl:when>
      		<xsl:when test="$myparam='AKK'"><xsl:value-of select="$myparam"/> (Meter reading at the beginning of the delivery)</xsl:when>
      		<xsl:when test="$myparam='AKL'"><xsl:value-of select="$myparam"/> (Meter reading at the end of delivery)</xsl:when>
      		<xsl:when test="$myparam='AKM'"><xsl:value-of select="$myparam"/> (Replenishment purchase order range start number)</xsl:when>
      		<xsl:when test="$myparam='AKN'"><xsl:value-of select="$myparam"/> (Third bank's reference)</xsl:when>
      		<xsl:when test="$myparam='AKO'"><xsl:value-of select="$myparam"/> (Action authorization number)</xsl:when>
      		<xsl:when test="$myparam='AKP'"><xsl:value-of select="$myparam"/> (Appropriation number)</xsl:when>
      		<xsl:when test="$myparam='AKQ'"><xsl:value-of select="$myparam"/> (Product change authority number)</xsl:when>
      		<xsl:when test="$myparam='AKR'"><xsl:value-of select="$myparam"/> (General cargo consignment reference number)</xsl:when>
      		<xsl:when test="$myparam='AKS'"><xsl:value-of select="$myparam"/> (Catalogue sequence number)</xsl:when>
      		<xsl:when test="$myparam='AKT'"><xsl:value-of select="$myparam"/> (Forwarding order number)</xsl:when>
      		<xsl:when test="$myparam='AKU'"><xsl:value-of select="$myparam"/> (Transport equipment survey reference number)</xsl:when>
      		<xsl:when test="$myparam='AKV'"><xsl:value-of select="$myparam"/> (Lease contract reference)</xsl:when>
      		<xsl:when test="$myparam='AKW'"><xsl:value-of select="$myparam"/> (Transport costs reference number)</xsl:when>
      		<xsl:when test="$myparam='AKX'"><xsl:value-of select="$myparam"/> (Transport equipment stripping order)</xsl:when>
      		<xsl:when test="$myparam='AKY'"><xsl:value-of select="$myparam"/> (Prior policy number)</xsl:when>
      		<xsl:when test="$myparam='AKZ'"><xsl:value-of select="$myparam"/> (Policy number)</xsl:when>
      		<xsl:when test="$myparam='ALA'"><xsl:value-of select="$myparam"/> (Procurement budget number)</xsl:when>
      		<xsl:when test="$myparam='ALB'"><xsl:value-of select="$myparam"/> (Domestic inventory management code)</xsl:when>
      		<xsl:when test="$myparam='ALC'"><xsl:value-of select="$myparam"/> (Customer reference number assigned to previous balance of payment information)</xsl:when>
      		<xsl:when test="$myparam='ALD'"><xsl:value-of select="$myparam"/> (Previous credit advice reference number)</xsl:when>
      		<xsl:when test="$myparam='ALE'"><xsl:value-of select="$myparam"/> (Reporting form number)</xsl:when>
      		<xsl:when test="$myparam='ALF'"><xsl:value-of select="$myparam"/> (Authorization number for exception to dangerous goods regulations)</xsl:when>
      		<xsl:when test="$myparam='ALG'"><xsl:value-of select="$myparam"/> (Dangerous goods security number)</xsl:when>
      		<xsl:when test="$myparam='ALH'"><xsl:value-of select="$myparam"/> (Dangerous goods transport licence number)</xsl:when>
      		<xsl:when test="$myparam='ALI'"><xsl:value-of select="$myparam"/> (Previous rental agreement number)</xsl:when>
      		<xsl:when test="$myparam='ALJ'"><xsl:value-of select="$myparam"/> (Next rental agreement reason number)</xsl:when>
      		<xsl:when test="$myparam='ALK'"><xsl:value-of select="$myparam"/> (Consignee's invoice number)</xsl:when>
      		<xsl:when test="$myparam='ALL'"><xsl:value-of select="$myparam"/> (Message batch number)</xsl:when>
      		<xsl:when test="$myparam='ALM'"><xsl:value-of select="$myparam"/> (Previous delivery schedule number)</xsl:when>
      		<xsl:when test="$myparam='ALN'"><xsl:value-of select="$myparam"/> (Physical inventory recount reference number)</xsl:when>
      		<xsl:when test="$myparam='ALO'"><xsl:value-of select="$myparam"/> (Receiving advice number)</xsl:when>
      		<xsl:when test="$myparam='ALP'"><xsl:value-of select="$myparam"/> (Returnable container reference number)</xsl:when>
      		<xsl:when test="$myparam='ALQ'"><xsl:value-of select="$myparam"/> (Returns notice number)</xsl:when>
      		<xsl:when test="$myparam='ALR'"><xsl:value-of select="$myparam"/> (Sales forecast number)</xsl:when>
      		<xsl:when test="$myparam='ALS'"><xsl:value-of select="$myparam"/> (Sales report number)</xsl:when>
      		<xsl:when test="$myparam='ALT'"><xsl:value-of select="$myparam"/> (Previous tax control number)</xsl:when>
      		<xsl:when test="$myparam='ALU'"><xsl:value-of select="$myparam"/> (AGERD (Aerospace Ground Equipment Requirement Data) number)</xsl:when>
      		<xsl:when test="$myparam='ALV'"><xsl:value-of select="$myparam"/> (Registered capital reference)</xsl:when>
      		<xsl:when test="$myparam='ALW'"><xsl:value-of select="$myparam"/> (Standard number of inspection document)</xsl:when>
      		<xsl:when test="$myparam='ALX'"><xsl:value-of select="$myparam"/> (Model)</xsl:when>
      		<xsl:when test="$myparam='ALY'"><xsl:value-of select="$myparam"/> (Financial management reference)</xsl:when>
      		<xsl:when test="$myparam='ALZ'"><xsl:value-of select="$myparam"/> (NOTIfication for COLlection number (NOTICOL))</xsl:when>
      		<xsl:when test="$myparam='AMA'"><xsl:value-of select="$myparam"/> (Previous request for metered reading reference number)</xsl:when>
      		<xsl:when test="$myparam='AMB'"><xsl:value-of select="$myparam"/> (Next rental agreement number)</xsl:when>
      		<xsl:when test="$myparam='AMC'"><xsl:value-of select="$myparam"/> (Reference number of a request for metered reading)</xsl:when>
      		<xsl:when test="$myparam='AMD'"><xsl:value-of select="$myparam"/> (Hastening number)</xsl:when>
      		<xsl:when test="$myparam='AME'"><xsl:value-of select="$myparam"/> (Repair data request number)</xsl:when>
      		<xsl:when test="$myparam='AMF'"><xsl:value-of select="$myparam"/> (Consumption data request number)</xsl:when>
      		<xsl:when test="$myparam='AMG'"><xsl:value-of select="$myparam"/> (Profile number)</xsl:when>
      		<xsl:when test="$myparam='AMH'"><xsl:value-of select="$myparam"/> (Case number)</xsl:when>
      		<xsl:when test="$myparam='AMI'"><xsl:value-of select="$myparam"/> (Government quality assurance and control level Number)</xsl:when>
      		<xsl:when test="$myparam='AMJ'"><xsl:value-of select="$myparam"/> (Payment plan reference)</xsl:when>
      		<xsl:when test="$myparam='AMK'"><xsl:value-of select="$myparam"/> (Replaced meter unit number)</xsl:when>
      		<xsl:when test="$myparam='AML'"><xsl:value-of select="$myparam"/> (Replenishment purchase order range end number)</xsl:when>
      		<xsl:when test="$myparam='AMM'"><xsl:value-of select="$myparam"/> (Insurer assigned reference number)</xsl:when>
      		<xsl:when test="$myparam='AMN'"><xsl:value-of select="$myparam"/> (Canadian excise entry number)</xsl:when>
      		<xsl:when test="$myparam='AMO'"><xsl:value-of select="$myparam"/> (Premium rate table)</xsl:when>
      		<xsl:when test="$myparam='AMP'"><xsl:value-of select="$myparam"/> (Advise through bank's reference)</xsl:when>
      		<xsl:when test="$myparam='AMQ'"><xsl:value-of select="$myparam"/> (US, Department of Transportation bond surety code)</xsl:when>
      		<xsl:when test="$myparam='AMR'"><xsl:value-of select="$myparam"/> (US, Food and Drug Administration establishment indicator)</xsl:when>
      		<xsl:when test="$myparam='AMS'"><xsl:value-of select="$myparam"/> (US, Federal Communications Commission (FCC) import condition number)</xsl:when>
      		<xsl:when test="$myparam='AMT'"><xsl:value-of select="$myparam"/> (Goods and Services Tax identification number)</xsl:when>
      		<xsl:when test="$myparam='AMU'"><xsl:value-of select="$myparam"/> (Integrated logistic support cross reference number)</xsl:when>
      		<xsl:when test="$myparam='AMV'"><xsl:value-of select="$myparam"/> (Department number)</xsl:when>
      		<xsl:when test="$myparam='AMW'"><xsl:value-of select="$myparam"/> (Buyer's catalogue number)</xsl:when>
      		<xsl:when test="$myparam='AMX'"><xsl:value-of select="$myparam"/> (Financial settlement party's reference number)</xsl:when>
      		<xsl:when test="$myparam='AMY'"><xsl:value-of select="$myparam"/> (Standard's version number)</xsl:when>
      		<xsl:when test="$myparam='AMZ'"><xsl:value-of select="$myparam"/> (Pipeline number)</xsl:when>
      		<xsl:when test="$myparam='ANA'"><xsl:value-of select="$myparam"/> (Account servicing bank's reference number)</xsl:when>
      		<xsl:when test="$myparam='ANB'"><xsl:value-of select="$myparam"/> (Completed units payment request reference)</xsl:when>
      		<xsl:when test="$myparam='ANC'"><xsl:value-of select="$myparam"/> (Payment in advance request reference)</xsl:when>
      		<xsl:when test="$myparam='AND'"><xsl:value-of select="$myparam"/> (Parent file)</xsl:when>
      		<xsl:when test="$myparam='ANE'"><xsl:value-of select="$myparam"/> (Sub file)</xsl:when>
      		<xsl:when test="$myparam='ANF'"><xsl:value-of select="$myparam"/> (CAD file layer convention)</xsl:when>
      		<xsl:when test="$myparam='ANG'"><xsl:value-of select="$myparam"/> (Technical regulation)</xsl:when>
      		<xsl:when test="$myparam='ANH'"><xsl:value-of select="$myparam"/> (Plot file)</xsl:when>
      		<xsl:when test="$myparam='ANI'"><xsl:value-of select="$myparam"/> (File conversion journal)</xsl:when>
      		<xsl:when test="$myparam='ANJ'"><xsl:value-of select="$myparam"/> (Authorization number)</xsl:when>
      		<xsl:when test="$myparam='ANK'"><xsl:value-of select="$myparam"/> (Reference number assigned by third party)</xsl:when>
      		<xsl:when test="$myparam='ANL'"><xsl:value-of select="$myparam"/> (Deposit reference number)</xsl:when>
      		<xsl:when test="$myparam='ANM'"><xsl:value-of select="$myparam"/> (Named bank's reference)</xsl:when>
      		<xsl:when test="$myparam='ANN'"><xsl:value-of select="$myparam"/> (Drawee's reference)</xsl:when>
      		<xsl:when test="$myparam='ANO'"><xsl:value-of select="$myparam"/> (Case of need party's reference)</xsl:when>
      		<xsl:when test="$myparam='ANP'"><xsl:value-of select="$myparam"/> (Collecting bank's reference)</xsl:when>
      		<xsl:when test="$myparam='ANQ'"><xsl:value-of select="$myparam"/> (Remitting bank's reference)</xsl:when>
      		<xsl:when test="$myparam='ANR'"><xsl:value-of select="$myparam"/> (Principal's bank reference)</xsl:when>
      		<xsl:when test="$myparam='ANS'"><xsl:value-of select="$myparam"/> (Presenting bank's reference)</xsl:when>
      		<xsl:when test="$myparam='ANT'"><xsl:value-of select="$myparam"/> (Consignee's reference)</xsl:when>
      		<xsl:when test="$myparam='ANU'"><xsl:value-of select="$myparam"/> (Financial transaction reference number)</xsl:when>
      		<xsl:when test="$myparam='ANV'"><xsl:value-of select="$myparam"/> (Credit reference number)</xsl:when>
      		<xsl:when test="$myparam='ANW'"><xsl:value-of select="$myparam"/> (Receiving bank's authorization number)</xsl:when>
      		<xsl:when test="$myparam='ANX'"><xsl:value-of select="$myparam"/> (Clearing reference)</xsl:when>
      		<xsl:when test="$myparam='ANY'"><xsl:value-of select="$myparam"/> (Sending bank's reference number)</xsl:when>
      		<xsl:when test="$myparam='AOA'"><xsl:value-of select="$myparam"/> (Documentary payment reference)</xsl:when>
      		<xsl:when test="$myparam='AOD'"><xsl:value-of select="$myparam"/> (Accounting file reference)</xsl:when>
      		<xsl:when test="$myparam='AOE'"><xsl:value-of select="$myparam"/> (Sender's file reference number)</xsl:when>
      		<xsl:when test="$myparam='AOF'"><xsl:value-of select="$myparam"/> (Receiver's file reference number)</xsl:when>
      		<xsl:when test="$myparam='AOG'"><xsl:value-of select="$myparam"/> (Source document internal reference)</xsl:when>
      		<xsl:when test="$myparam='AOH'"><xsl:value-of select="$myparam"/> (Principal's reference)</xsl:when>
      		<xsl:when test="$myparam='AOI'"><xsl:value-of select="$myparam"/> (Debit reference number)</xsl:when>
      		<xsl:when test="$myparam='AOJ'"><xsl:value-of select="$myparam"/> (Calendar)</xsl:when>
      		<xsl:when test="$myparam='AOK'"><xsl:value-of select="$myparam"/> (Work shift)</xsl:when>
      		<xsl:when test="$myparam='AOL'"><xsl:value-of select="$myparam"/> (Work breakdown structure)</xsl:when>
      		<xsl:when test="$myparam='AOM'"><xsl:value-of select="$myparam"/> (Organisation breakdown structure)</xsl:when>
      		<xsl:when test="$myparam='AON'"><xsl:value-of select="$myparam"/> (Work task charge number)</xsl:when>
      		<xsl:when test="$myparam='AOO'"><xsl:value-of select="$myparam"/> (Functional work group)</xsl:when>
      		<xsl:when test="$myparam='AOP'"><xsl:value-of select="$myparam"/> (Work team)</xsl:when>
      		<xsl:when test="$myparam='AOQ'"><xsl:value-of select="$myparam"/> (Department)</xsl:when>
      		<xsl:when test="$myparam='AOR'"><xsl:value-of select="$myparam"/> (Statement of work)</xsl:when>
      		<xsl:when test="$myparam='AOS'"><xsl:value-of select="$myparam"/> (Work package)</xsl:when>
      		<xsl:when test="$myparam='AOT'"><xsl:value-of select="$myparam"/> (Planning package)</xsl:when>
      		<xsl:when test="$myparam='AOU'"><xsl:value-of select="$myparam"/> (Cost account)</xsl:when>
      		<xsl:when test="$myparam='AOV'"><xsl:value-of select="$myparam"/> (Work order)</xsl:when>
      		<xsl:when test="$myparam='AOW'"><xsl:value-of select="$myparam"/> (Transportation Control Number (TCN))</xsl:when>
      		<xsl:when test="$myparam='AOX'"><xsl:value-of select="$myparam"/> (Constraint notation)</xsl:when>
      		<xsl:when test="$myparam='AOY'"><xsl:value-of select="$myparam"/> (ETERMS reference)</xsl:when>
      		<xsl:when test="$myparam='AOZ'"><xsl:value-of select="$myparam"/> (Implementation version number)</xsl:when>
      		<xsl:when test="$myparam='AP'"><xsl:value-of select="$myparam"/> (Accounts receivable number)</xsl:when>
      		<xsl:when test="$myparam='APA'"><xsl:value-of select="$myparam"/> (Incorporated legal reference)</xsl:when>
      		<xsl:when test="$myparam='APB'"><xsl:value-of select="$myparam"/> (Payment instalment reference number)</xsl:when>
      		<xsl:when test="$myparam='APC'"><xsl:value-of select="$myparam"/> (Equipment owner reference number)</xsl:when>
      		<xsl:when test="$myparam='APD'"><xsl:value-of select="$myparam"/> (Cedent's claim number)</xsl:when>
      		<xsl:when test="$myparam='APE'"><xsl:value-of select="$myparam"/> (Reinsurer's claim number)</xsl:when>
      		<xsl:when test="$myparam='APF'"><xsl:value-of select="$myparam"/> (Price/sales catalogue response reference number)</xsl:when>
      		<xsl:when test="$myparam='APG'"><xsl:value-of select="$myparam"/> (General purpose message reference number)</xsl:when>
      		<xsl:when test="$myparam='APH'"><xsl:value-of select="$myparam"/> (Invoicing data sheet reference number)</xsl:when>
      		<xsl:when test="$myparam='API'"><xsl:value-of select="$myparam"/> (Inventory report reference number)</xsl:when>
      		<xsl:when test="$myparam='APJ'"><xsl:value-of select="$myparam"/> (Ceiling formula reference number)</xsl:when>
      		<xsl:when test="$myparam='APK'"><xsl:value-of select="$myparam"/> (Price variation formula reference number)</xsl:when>
      		<xsl:when test="$myparam='APL'"><xsl:value-of select="$myparam"/> (Reference to account servicing bank's message)</xsl:when>
      		<xsl:when test="$myparam='APM'"><xsl:value-of select="$myparam"/> (Party sequence number)</xsl:when>
      		<xsl:when test="$myparam='APN'"><xsl:value-of select="$myparam"/> (Purchaser's request reference)</xsl:when>
      		<xsl:when test="$myparam='APO'"><xsl:value-of select="$myparam"/> (Contractor request reference)</xsl:when>
      		<xsl:when test="$myparam='APP'"><xsl:value-of select="$myparam"/> (Accident reference number)</xsl:when>
      		<xsl:when test="$myparam='APQ'"><xsl:value-of select="$myparam"/> (Commercial account summary reference number)</xsl:when>
      		<xsl:when test="$myparam='APR'"><xsl:value-of select="$myparam"/> (Contract breakdown reference)</xsl:when>
      		<xsl:when test="$myparam='APS'"><xsl:value-of select="$myparam"/> (Contractor registration number)</xsl:when>
      		<xsl:when test="$myparam='APT'"><xsl:value-of select="$myparam"/> (Applicable coefficient identification number)</xsl:when>
      		<xsl:when test="$myparam='APU'"><xsl:value-of select="$myparam"/> (Special budget account number)</xsl:when>
      		<xsl:when test="$myparam='APV'"><xsl:value-of select="$myparam"/> (Authorisation for repair reference)</xsl:when>
      		<xsl:when test="$myparam='APW'"><xsl:value-of select="$myparam"/> (Manufacturer defined repair rates reference)</xsl:when>
      		<xsl:when test="$myparam='APX'"><xsl:value-of select="$myparam"/> (Original submitter log number)</xsl:when>
      		<xsl:when test="$myparam='APY'"><xsl:value-of select="$myparam"/> (Original submitter, parent Data Maintenance Request (DMR) log number)</xsl:when>
      		<xsl:when test="$myparam='APZ'"><xsl:value-of select="$myparam"/> (Original submitter, child Data Maintenance Request (DMR) log number)</xsl:when>
      		<xsl:when test="$myparam='AQA'"><xsl:value-of select="$myparam"/> (Entry point assessment log number)</xsl:when>
      		<xsl:when test="$myparam='AQB'"><xsl:value-of select="$myparam"/> (Entry point assessment log number, parent DMR)</xsl:when>
      		<xsl:when test="$myparam='AQC'"><xsl:value-of select="$myparam"/> (Entry point assessment log number, child DMR)</xsl:when>
      		<xsl:when test="$myparam='AQD'"><xsl:value-of select="$myparam"/> (Data structure tag)</xsl:when>
      		<xsl:when test="$myparam='AQE'"><xsl:value-of select="$myparam"/> (Central secretariat log number)</xsl:when>
      		<xsl:when test="$myparam='AQF'"><xsl:value-of select="$myparam"/> (Central secretariat log number, parent Data Maintenance Request (DMR))</xsl:when>
      		<xsl:when test="$myparam='AQG'"><xsl:value-of select="$myparam"/> (Central secretariat log number, child Data Maintenance Request (DMR))</xsl:when>
      		<xsl:when test="$myparam='AQH'"><xsl:value-of select="$myparam"/> (International assessment log number)</xsl:when>
      		<xsl:when test="$myparam='AQI'"><xsl:value-of select="$myparam"/> (International assessment log number, parent Data Maintenance Request (DMR))</xsl:when>
      		<xsl:when test="$myparam='AQJ'"><xsl:value-of select="$myparam"/> (International assessment log number, child Data Maintenance Request (DMR))</xsl:when>
      		<xsl:when test="$myparam='AQK'"><xsl:value-of select="$myparam"/> (Status report number)</xsl:when>
      		<xsl:when test="$myparam='AQL'"><xsl:value-of select="$myparam"/> (Message design group number)</xsl:when>
      		<xsl:when test="$myparam='AQM'"><xsl:value-of select="$myparam"/> (US Customs Service (USCS) entry code)</xsl:when>
      		<xsl:when test="$myparam='AQN'"><xsl:value-of select="$myparam"/> (Beginning job sequence number)</xsl:when>
      		<xsl:when test="$myparam='AQO'"><xsl:value-of select="$myparam"/> (Sender's clause number)</xsl:when>
      		<xsl:when test="$myparam='AQP'"><xsl:value-of select="$myparam"/> (Dun and Bradstreet Canada's 8 digit Standard Industrial Classification (SIC) code)</xsl:when>
      		<xsl:when test="$myparam='AQQ'"><xsl:value-of select="$myparam"/> (Activite Principale Exercee (APE) identifier)</xsl:when>
      		<xsl:when test="$myparam='AQR'"><xsl:value-of select="$myparam"/> (Dun and Bradstreet US 8 digit Standard Industrial Classification (SIC) code)</xsl:when>
      		<xsl:when test="$myparam='AQS'"><xsl:value-of select="$myparam"/> (Nomenclature Activity Classification Economy (NACE) identifier)</xsl:when>
      		<xsl:when test="$myparam='AQT'"><xsl:value-of select="$myparam"/> (Norme Activite Francaise (NAF) identifier)</xsl:when>
      		<xsl:when test="$myparam='AQU'"><xsl:value-of select="$myparam"/> (Registered contractor activity type)</xsl:when>
      		<xsl:when test="$myparam='AQV'"><xsl:value-of select="$myparam"/> (Statistic Bundes Amt (SBA) identifier)</xsl:when>
      		<xsl:when test="$myparam='AQW'"><xsl:value-of select="$myparam"/> (State or province assigned entity identification)</xsl:when>
      		<xsl:when test="$myparam='AQX'"><xsl:value-of select="$myparam"/> (Institute of Security and Future Market Development (ISFMD) serial number)</xsl:when>
      		<xsl:when test="$myparam='AQY'"><xsl:value-of select="$myparam"/> (File identification number)</xsl:when>
      		<xsl:when test="$myparam='AQZ'"><xsl:value-of select="$myparam"/> (Bankruptcy procedure number)</xsl:when>
      		<xsl:when test="$myparam='ARA'"><xsl:value-of select="$myparam"/> (National government business identification number)</xsl:when>
      		<xsl:when test="$myparam='ARB'"><xsl:value-of select="$myparam"/> (Prior Data Universal Number System (DUNS) number)</xsl:when>
      		<xsl:when test="$myparam='ARC'"><xsl:value-of select="$myparam"/> (Companies Registry Office (CRO) number)</xsl:when>
      		<xsl:when test="$myparam='ARD'"><xsl:value-of select="$myparam"/> (Costa Rican judicial number)</xsl:when>
      		<xsl:when test="$myparam='ARE'"><xsl:value-of select="$myparam"/> (Numero de Identificacion Tributaria (NIT))</xsl:when>
      		<xsl:when test="$myparam='ARF'"><xsl:value-of select="$myparam"/> (Patron number)</xsl:when>
      		<xsl:when test="$myparam='ARG'"><xsl:value-of select="$myparam"/> (Registro Informacion Fiscal (RIF) number)</xsl:when>
      		<xsl:when test="$myparam='ARH'"><xsl:value-of select="$myparam"/> (Registro Unico de Contribuyente (RUC) number)</xsl:when>
      		<xsl:when test="$myparam='ARI'"><xsl:value-of select="$myparam"/> (Tokyo SHOKO Research (TSR) business identifier)</xsl:when>
      		<xsl:when test="$myparam='ARJ'"><xsl:value-of select="$myparam"/> (Personal identity card number)</xsl:when>
      		<xsl:when test="$myparam='ARK'"><xsl:value-of select="$myparam"/> (Systeme Informatique pour le Repertoire des ENtreprises (SIREN) number)</xsl:when>
      		<xsl:when test="$myparam='ARL'"><xsl:value-of select="$myparam"/> (Systeme Informatique pour le Repertoire des ETablissements (SIRET) number)</xsl:when>
      		<xsl:when test="$myparam='ARM'"><xsl:value-of select="$myparam"/> (Publication issue number)</xsl:when>
      		<xsl:when test="$myparam='ARN'"><xsl:value-of select="$myparam"/> (Original filing number)</xsl:when>
      		<xsl:when test="$myparam='ARO'"><xsl:value-of select="$myparam"/> (Document page identifier)</xsl:when>
      		<xsl:when test="$myparam='ARP'"><xsl:value-of select="$myparam"/> (Public filing registration number)</xsl:when>
      		<xsl:when test="$myparam='ARQ'"><xsl:value-of select="$myparam"/> (Regiristo Federal de Contribuyentes)</xsl:when>
      		<xsl:when test="$myparam='ARR'"><xsl:value-of select="$myparam"/> (Social security number)</xsl:when>
      		<xsl:when test="$myparam='ARS'"><xsl:value-of select="$myparam"/> (Document volume number)</xsl:when>
      		<xsl:when test="$myparam='ART'"><xsl:value-of select="$myparam"/> (Book number)</xsl:when>
      		<xsl:when test="$myparam='ARU'"><xsl:value-of select="$myparam"/> (Stock exchange company identifier)</xsl:when>
      		<xsl:when test="$myparam='ARV'"><xsl:value-of select="$myparam"/> (Imputation account)</xsl:when>
      		<xsl:when test="$myparam='ARW'"><xsl:value-of select="$myparam"/> (Financial phase reference)</xsl:when>
      		<xsl:when test="$myparam='ARX'"><xsl:value-of select="$myparam"/> (Technical phase reference)</xsl:when>
      		<xsl:when test="$myparam='ARY'"><xsl:value-of select="$myparam"/> (Prior contractor registration number)</xsl:when>
      		<xsl:when test="$myparam='ARZ'"><xsl:value-of select="$myparam"/> (Stock adjustment number)</xsl:when>
      		<xsl:when test="$myparam='ASA'"><xsl:value-of select="$myparam"/> (Dispensation reference)</xsl:when>
      		<xsl:when test="$myparam='ASB'"><xsl:value-of select="$myparam"/> (Investment reference number)</xsl:when>
      		<xsl:when test="$myparam='ASC'"><xsl:value-of select="$myparam"/> (Assuming company)</xsl:when>
      		<xsl:when test="$myparam='ASD'"><xsl:value-of select="$myparam"/> (Budget chapter)</xsl:when>
      		<xsl:when test="$myparam='ASE'"><xsl:value-of select="$myparam"/> (Duty free products security number)</xsl:when>
      		<xsl:when test="$myparam='ASF'"><xsl:value-of select="$myparam"/> (Duty free products receipt authorisation number)</xsl:when>
      		<xsl:when test="$myparam='ASG'"><xsl:value-of select="$myparam"/> (Party information message reference)</xsl:when>
      		<xsl:when test="$myparam='ASH'"><xsl:value-of select="$myparam"/> (Formal statement reference)</xsl:when>
      		<xsl:when test="$myparam='ASI'"><xsl:value-of select="$myparam"/> (Proof of delivery reference number)</xsl:when>
      		<xsl:when test="$myparam='ASJ'"><xsl:value-of select="$myparam"/> (Supplier's credit claim reference number)</xsl:when>
      		<xsl:when test="$myparam='ASK'"><xsl:value-of select="$myparam"/> (Picture of actual product)</xsl:when>
      		<xsl:when test="$myparam='ASL'"><xsl:value-of select="$myparam"/> (Picture of a generic product)</xsl:when>
      		<xsl:when test="$myparam='ASM'"><xsl:value-of select="$myparam"/> (Trading partner identification number)</xsl:when>
      		<xsl:when test="$myparam='ASN'"><xsl:value-of select="$myparam"/> (Prior trading partner identification number)</xsl:when>
      		<xsl:when test="$myparam='ASO'"><xsl:value-of select="$myparam"/> (Password)</xsl:when>
      		<xsl:when test="$myparam='ASP'"><xsl:value-of select="$myparam"/> (Formal report number)</xsl:when>
      		<xsl:when test="$myparam='ASQ'"><xsl:value-of select="$myparam"/> (Fund account number)</xsl:when>
      		<xsl:when test="$myparam='ASR'"><xsl:value-of select="$myparam"/> (Safe custody number)</xsl:when>
      		<xsl:when test="$myparam='ASS'"><xsl:value-of select="$myparam"/> (Master account number)</xsl:when>
      		<xsl:when test="$myparam='AST'"><xsl:value-of select="$myparam"/> (Group reference number)</xsl:when>
      		<xsl:when test="$myparam='ASU'"><xsl:value-of select="$myparam"/> (Accounting transmission number)</xsl:when>
      		<xsl:when test="$myparam='ASV'"><xsl:value-of select="$myparam"/> (Product data file number)</xsl:when>
      		<xsl:when test="$myparam='ASW'"><xsl:value-of select="$myparam"/> (Cadastro Geral do Contribuinte (CGC))</xsl:when>
      		<xsl:when test="$myparam='ASX'"><xsl:value-of select="$myparam"/> (Foreign resident identification number)</xsl:when>
      		<xsl:when test="$myparam='ASY'"><xsl:value-of select="$myparam"/> (CD-ROM)</xsl:when>
      		<xsl:when test="$myparam='ASZ'"><xsl:value-of select="$myparam"/> (Physical medium)</xsl:when>
      		<xsl:when test="$myparam='ATA'"><xsl:value-of select="$myparam"/> (Financial cancellation reference number)</xsl:when>
      		<xsl:when test="$myparam='ATB'"><xsl:value-of select="$myparam"/> (Purchase for export Customs agreement number)</xsl:when>
      		<xsl:when test="$myparam='ATC'"><xsl:value-of select="$myparam"/> (Judgment number)</xsl:when>
      		<xsl:when test="$myparam='ATD'"><xsl:value-of select="$myparam"/> (Secretariat number)</xsl:when>
      		<xsl:when test="$myparam='ATE'"><xsl:value-of select="$myparam"/> (Previous banking status message reference)</xsl:when>
      		<xsl:when test="$myparam='ATF'"><xsl:value-of select="$myparam"/> (Last received banking status message reference)</xsl:when>
      		<xsl:when test="$myparam='ATG'"><xsl:value-of select="$myparam"/> (Bank's documentary procedure reference)</xsl:when>
      		<xsl:when test="$myparam='ATH'"><xsl:value-of select="$myparam"/> (Customer's documentary procedure reference)</xsl:when>
      		<xsl:when test="$myparam='ATI'"><xsl:value-of select="$myparam"/> (Safe deposit box number)</xsl:when>
      		<xsl:when test="$myparam='ATJ'"><xsl:value-of select="$myparam"/> (Receiving Bankgiro number)</xsl:when>
      		<xsl:when test="$myparam='ATK'"><xsl:value-of select="$myparam"/> (Sending Bankgiro number)</xsl:when>
      		<xsl:when test="$myparam='ATL'"><xsl:value-of select="$myparam"/> (Bankgiro reference)</xsl:when>
      		<xsl:when test="$myparam='ATM'"><xsl:value-of select="$myparam"/> (Guarantee number)</xsl:when>
      		<xsl:when test="$myparam='ATN'"><xsl:value-of select="$myparam"/> (Collection instrument number)</xsl:when>
      		<xsl:when test="$myparam='ATO'"><xsl:value-of select="$myparam"/> (Converted Postgiro number)</xsl:when>
      		<xsl:when test="$myparam='ATP'"><xsl:value-of select="$myparam"/> (Cost centre alignment number)</xsl:when>
      		<xsl:when test="$myparam='ATQ'"><xsl:value-of select="$myparam"/> (Kamer Van Koophandel (KVK) number)</xsl:when>
      		<xsl:when test="$myparam='ATR'"><xsl:value-of select="$myparam"/> (Institut Belgo-Luxembourgeois de Codification (IBLC) number)</xsl:when>
      		<xsl:when test="$myparam='ATS'"><xsl:value-of select="$myparam"/> (External object reference)</xsl:when>
      		<xsl:when test="$myparam='ATT'"><xsl:value-of select="$myparam"/> (Exceptional transport authorisation number)</xsl:when>
      		<xsl:when test="$myparam='ATU'"><xsl:value-of select="$myparam"/> (Clave Unica de Identificacion Tributaria (CUIT))</xsl:when>
      		<xsl:when test="$myparam='ATV'"><xsl:value-of select="$myparam"/> (Registro Unico Tributario (RUT))</xsl:when>
      		<xsl:when test="$myparam='ATW'"><xsl:value-of select="$myparam"/> (Flat rack container bundle identification number)</xsl:when>
      		<xsl:when test="$myparam='ATX'"><xsl:value-of select="$myparam"/> (Transport equipment acceptance order reference)</xsl:when>
      		<xsl:when test="$myparam='ATY'"><xsl:value-of select="$myparam"/> (Transport equipment release order reference)</xsl:when>
      		<xsl:when test="$myparam='ATZ'"><xsl:value-of select="$myparam"/> (Ship's stay reference number)</xsl:when>
      		<xsl:when test="$myparam='AU'"><xsl:value-of select="$myparam"/> (Authorization to meet competition number)</xsl:when>
      		<xsl:when test="$myparam='AUA'"><xsl:value-of select="$myparam"/> (Place of positioning reference)</xsl:when>
      		<xsl:when test="$myparam='AUB'"><xsl:value-of select="$myparam"/> (Party reference)</xsl:when>
      		<xsl:when test="$myparam='AUC'"><xsl:value-of select="$myparam"/> (Issued prescription identification)</xsl:when>
      		<xsl:when test="$myparam='AUD'"><xsl:value-of select="$myparam"/> (Collection reference)</xsl:when>
      		<xsl:when test="$myparam='AUE'"><xsl:value-of select="$myparam"/> (Travel service)</xsl:when>
      		<xsl:when test="$myparam='AUF'"><xsl:value-of select="$myparam"/> (Consignment stock contract)</xsl:when>
      		<xsl:when test="$myparam='AUG'"><xsl:value-of select="$myparam"/> (Importer's letter of credit reference)</xsl:when>
      		<xsl:when test="$myparam='AUH'"><xsl:value-of select="$myparam"/> (Performed prescription identification)</xsl:when>
      		<xsl:when test="$myparam='AUI'"><xsl:value-of select="$myparam"/> (Image reference)</xsl:when>
      		<xsl:when test="$myparam='AUJ'"><xsl:value-of select="$myparam"/> (Proposed purchase order reference number)</xsl:when>
      		<xsl:when test="$myparam='AUK'"><xsl:value-of select="$myparam"/> (Application for financial support reference number)</xsl:when>
      		<xsl:when test="$myparam='AUL'"><xsl:value-of select="$myparam"/> (Manufacturing quality agreement number)</xsl:when>
      		<xsl:when test="$myparam='AUM'"><xsl:value-of select="$myparam"/> (Software editor reference)</xsl:when>
      		<xsl:when test="$myparam='AUN'"><xsl:value-of select="$myparam"/> (Software reference)</xsl:when>
      		<xsl:when test="$myparam='AUO'"><xsl:value-of select="$myparam"/> (Software quality reference)</xsl:when>
      		<xsl:when test="$myparam='AUP'"><xsl:value-of select="$myparam"/> (Consolidated orders' reference)</xsl:when>
      		<xsl:when test="$myparam='AUQ'"><xsl:value-of select="$myparam"/> (Customs binding ruling number)</xsl:when>
      		<xsl:when test="$myparam='AUR'"><xsl:value-of select="$myparam"/> (Customs non-binding ruling number)</xsl:when>
      		<xsl:when test="$myparam='AUS'"><xsl:value-of select="$myparam"/> (Delivery route reference)</xsl:when>
      		<xsl:when test="$myparam='AUT'"><xsl:value-of select="$myparam"/> (Net area supplier reference)</xsl:when>
      		<xsl:when test="$myparam='AUU'"><xsl:value-of select="$myparam"/> (Time series reference)</xsl:when>
      		<xsl:when test="$myparam='AUV'"><xsl:value-of select="$myparam"/> (Connecting point to central grid)</xsl:when>
      		<xsl:when test="$myparam='AUW'"><xsl:value-of select="$myparam"/> (Marketing plan identification number (MPIN))</xsl:when>
      		<xsl:when test="$myparam='AUX'"><xsl:value-of select="$myparam"/> (Entity reference number, previous)</xsl:when>
      		<xsl:when test="$myparam='AUY'"><xsl:value-of select="$myparam"/> (International Standard Industrial Classification (ISIC) code)</xsl:when>
      		<xsl:when test="$myparam='AUZ'"><xsl:value-of select="$myparam"/> (Customs pre-approval ruling number)</xsl:when>
      		<xsl:when test="$myparam='AV'"><xsl:value-of select="$myparam"/> (Account payable number)</xsl:when>
      		<xsl:when test="$myparam='AVA'"><xsl:value-of select="$myparam"/> (First financial institution's transaction reference)</xsl:when>
      		<xsl:when test="$myparam='AVB'"><xsl:value-of select="$myparam"/> (Product characteristics directory)</xsl:when>
      		<xsl:when test="$myparam='AVC'"><xsl:value-of select="$myparam"/> (Supplier's customer reference number)</xsl:when>
      		<xsl:when test="$myparam='AVD'"><xsl:value-of select="$myparam"/> (Inventory report request number)</xsl:when>
      		<xsl:when test="$myparam='AVE'"><xsl:value-of select="$myparam"/> (Metering point)</xsl:when>
      		<xsl:when test="$myparam='AVF'"><xsl:value-of select="$myparam"/> (Passenger reservation number)</xsl:when>
      		<xsl:when test="$myparam='AVG'"><xsl:value-of select="$myparam"/> (Slaughterhouse approval number)</xsl:when>
      		<xsl:when test="$myparam='AVH'"><xsl:value-of select="$myparam"/> (Meat cutting plant approval number)</xsl:when>
      		<xsl:when test="$myparam='AVI'"><xsl:value-of select="$myparam"/> (Customer travel service identifier)</xsl:when>
      		<xsl:when test="$myparam='AVJ'"><xsl:value-of select="$myparam"/> (Export control classification number)</xsl:when>
      		<xsl:when test="$myparam='AVK'"><xsl:value-of select="$myparam"/> (Broker reference 3)</xsl:when>
      		<xsl:when test="$myparam='AVL'"><xsl:value-of select="$myparam"/> (Consignment information)</xsl:when>
      		<xsl:when test="$myparam='AVM'"><xsl:value-of select="$myparam"/> (Goods item information)</xsl:when>
      		<xsl:when test="$myparam='AVN'"><xsl:value-of select="$myparam"/> (Dangerous Goods information)</xsl:when>
      		<xsl:when test="$myparam='AVO'"><xsl:value-of select="$myparam"/> (Pilotage services exemption number)</xsl:when>
      		<xsl:when test="$myparam='AVP'"><xsl:value-of select="$myparam"/> (Person registration number)</xsl:when>
      		<xsl:when test="$myparam='AVQ'"><xsl:value-of select="$myparam"/> (Place of packing approval number)</xsl:when>
      		<xsl:when test="$myparam='AVR'"><xsl:value-of select="$myparam"/> (Original Mandate Reference)</xsl:when>
      		<xsl:when test="$myparam='AVS'"><xsl:value-of select="$myparam"/> (Mandate Reference)</xsl:when>
      		<xsl:when test="$myparam='AVT'"><xsl:value-of select="$myparam"/> (Reservation station indentifier)</xsl:when>
      		<xsl:when test="$myparam='AVU'"><xsl:value-of select="$myparam"/> (Unique goods shipment identifier)</xsl:when>
      		<xsl:when test="$myparam='AVV'"><xsl:value-of select="$myparam"/> (Framework Agreement Number)</xsl:when>
      		<xsl:when test="$myparam='AVW'"><xsl:value-of select="$myparam"/> (Hash value)</xsl:when>
      		<xsl:when test="$myparam='AVX'"><xsl:value-of select="$myparam"/> (Movement reference number)</xsl:when>
      		<xsl:when test="$myparam='AVY'"><xsl:value-of select="$myparam"/> (Economic Operators Registration and Identification Number (EORI))</xsl:when>
      		<xsl:when test="$myparam='AVZ'"><xsl:value-of select="$myparam"/> (Local Reference Number)</xsl:when>
      		<xsl:when test="$myparam='AWA'"><xsl:value-of select="$myparam"/> (Rate code number)</xsl:when>
      		<xsl:when test="$myparam='AWB'"><xsl:value-of select="$myparam"/> (Air waybill number)</xsl:when>
      		<xsl:when test="$myparam='AWC'"><xsl:value-of select="$myparam"/> (Documentary credit amendment number)</xsl:when>
      		<xsl:when test="$myparam='AWD'"><xsl:value-of select="$myparam"/> (Advising bank's reference)</xsl:when>
      		<xsl:when test="$myparam='AWE'"><xsl:value-of select="$myparam"/> (Cost centre)</xsl:when>
      		<xsl:when test="$myparam='AWF'"><xsl:value-of select="$myparam"/> (Work item quantity determination)</xsl:when>
      		<xsl:when test="$myparam='AWG'"><xsl:value-of select="$myparam"/> (Internal data process number)</xsl:when>
      		<xsl:when test="$myparam='AWH'"><xsl:value-of select="$myparam"/> (Category of work reference)</xsl:when>
      		<xsl:when test="$myparam='AWI'"><xsl:value-of select="$myparam"/> (Policy form number)</xsl:when>
      		<xsl:when test="$myparam='AWJ'"><xsl:value-of select="$myparam"/> (Net area)</xsl:when>
      		<xsl:when test="$myparam='AWK'"><xsl:value-of select="$myparam"/> (Service provider)</xsl:when>
      		<xsl:when test="$myparam='AWL'"><xsl:value-of select="$myparam"/> (Error position)</xsl:when>
      		<xsl:when test="$myparam='AWM'"><xsl:value-of select="$myparam"/> (Service category reference)</xsl:when>
      		<xsl:when test="$myparam='AWN'"><xsl:value-of select="$myparam"/> (Connected location)</xsl:when>
      		<xsl:when test="$myparam='AWO'"><xsl:value-of select="$myparam"/> (Related party)</xsl:when>
      		<xsl:when test="$myparam='AWP'"><xsl:value-of select="$myparam"/> (Latest accounting entry record reference)</xsl:when>
      		<xsl:when test="$myparam='AWQ'"><xsl:value-of select="$myparam"/> (Accounting entry)</xsl:when>
      		<xsl:when test="$myparam='AWR'"><xsl:value-of select="$myparam"/> (Document reference, original)</xsl:when>
      		<xsl:when test="$myparam='AWS'"><xsl:value-of select="$myparam"/> (Hygienic Certificate number, national)</xsl:when>
      		<xsl:when test="$myparam='AWT'"><xsl:value-of select="$myparam"/> (Administrative Reference Code)</xsl:when>
      		<xsl:when test="$myparam='AWU'"><xsl:value-of select="$myparam"/> (Pick-up sheet number)</xsl:when>
      		<xsl:when test="$myparam='AWV'"><xsl:value-of select="$myparam"/> (Phone number)</xsl:when>
      		<xsl:when test="$myparam='AWW'"><xsl:value-of select="$myparam"/> (Buyer's fund number)</xsl:when>
      		<xsl:when test="$myparam='AWX'"><xsl:value-of select="$myparam"/> (Company trading account number)</xsl:when>
      		<xsl:when test="$myparam='AWY'"><xsl:value-of select="$myparam"/> (Reserved goods identifier)</xsl:when>
      		<xsl:when test="$myparam='AWZ'"><xsl:value-of select="$myparam"/> (Handling and movement reference number)</xsl:when>
      		<xsl:when test="$myparam='AXA'"><xsl:value-of select="$myparam"/> (Instruction to despatch reference number)</xsl:when>
      		<xsl:when test="$myparam='AXB'"><xsl:value-of select="$myparam"/> (Instruction for returns number)</xsl:when>
      		<xsl:when test="$myparam='AXC'"><xsl:value-of select="$myparam"/> (Metered services consumption report number)</xsl:when>
      		<xsl:when test="$myparam='AXD'"><xsl:value-of select="$myparam"/> (Order status enquiry number)</xsl:when>
      		<xsl:when test="$myparam='AXE'"><xsl:value-of select="$myparam"/> (Firm booking reference number)</xsl:when>
      		<xsl:when test="$myparam='AXF'"><xsl:value-of select="$myparam"/> (Product inquiry number)</xsl:when>
      		<xsl:when test="$myparam='AXG'"><xsl:value-of select="$myparam"/> (Split delivery number)</xsl:when>
      		<xsl:when test="$myparam='AXH'"><xsl:value-of select="$myparam"/> (Service relation number)</xsl:when>
      		<xsl:when test="$myparam='AXI'"><xsl:value-of select="$myparam"/> (Serial shipping container code)</xsl:when>
      		<xsl:when test="$myparam='AXJ'"><xsl:value-of select="$myparam"/> (Test specification number)</xsl:when>
      		<xsl:when test="$myparam='AXK'"><xsl:value-of select="$myparam"/> (Transport status report number)</xsl:when>
      		<xsl:when test="$myparam='AXL'"><xsl:value-of select="$myparam"/> (Tooling contract number)</xsl:when>
      		<xsl:when test="$myparam='AXM'"><xsl:value-of select="$myparam"/> (Formula reference number)</xsl:when>
      		<xsl:when test="$myparam='AXN'"><xsl:value-of select="$myparam"/> (Pre-agreement number)</xsl:when>
      		<xsl:when test="$myparam='AXO'"><xsl:value-of select="$myparam"/> (Product certification number)</xsl:when>
      		<xsl:when test="$myparam='AXP'"><xsl:value-of select="$myparam"/> (Consignment contract number)</xsl:when>
      		<xsl:when test="$myparam='AXQ'"><xsl:value-of select="$myparam"/> (Product specification reference number)</xsl:when>
      		<xsl:when test="$myparam='AXR'"><xsl:value-of select="$myparam"/> (Payroll deduction advice reference)</xsl:when>
      		<xsl:when test="$myparam='AXS'"><xsl:value-of select="$myparam"/> (TRACES party identification)</xsl:when>
      		<xsl:when test="$myparam='BA'"><xsl:value-of select="$myparam"/> (Beginning meter reading actual)</xsl:when>
      		<xsl:when test="$myparam='BC'"><xsl:value-of select="$myparam"/> (Buyer's contract number)</xsl:when>
      		<xsl:when test="$myparam='BD'"><xsl:value-of select="$myparam"/> (Bid number)</xsl:when>
      		<xsl:when test="$myparam='BE'"><xsl:value-of select="$myparam"/> (Beginning meter reading estimated)</xsl:when>
      		<xsl:when test="$myparam='BH'"><xsl:value-of select="$myparam"/> (House bill of lading number)</xsl:when>
      		<xsl:when test="$myparam='BM'"><xsl:value-of select="$myparam"/> (Bill of lading number)</xsl:when>
      		<xsl:when test="$myparam='BN'"><xsl:value-of select="$myparam"/> (Consignment identifier, carrier assigned)</xsl:when>
      		<xsl:when test="$myparam='BO'"><xsl:value-of select="$myparam"/> (Blanket order number)</xsl:when>
      		<xsl:when test="$myparam='BR'"><xsl:value-of select="$myparam"/> (Broker or sales office number)</xsl:when>
      		<xsl:when test="$myparam='BT'"><xsl:value-of select="$myparam"/> (Batch number/lot number)</xsl:when>
      		<xsl:when test="$myparam='BTP'"><xsl:value-of select="$myparam"/> (Battery and accumulator producer registration number)</xsl:when>
      		<xsl:when test="$myparam='BW'"><xsl:value-of select="$myparam"/> (Blended with number)</xsl:when>
      		<xsl:when test="$myparam='CAS'"><xsl:value-of select="$myparam"/> (IATA Cargo Agent CASS Address number)</xsl:when>
      		<xsl:when test="$myparam='CAT'"><xsl:value-of select="$myparam"/> (Matching of entries, balanced)</xsl:when>
      		<xsl:when test="$myparam='CAU'"><xsl:value-of select="$myparam"/> (Entry flagging)</xsl:when>
      		<xsl:when test="$myparam='CAV'"><xsl:value-of select="$myparam"/> (Matching of entries, unbalanced)</xsl:when>
      		<xsl:when test="$myparam='CAW'"><xsl:value-of select="$myparam"/> (Document reference, internal)</xsl:when>
      		<xsl:when test="$myparam='CAX'"><xsl:value-of select="$myparam"/> (European Value Added Tax identification)</xsl:when>
      		<xsl:when test="$myparam='CAY'"><xsl:value-of select="$myparam"/> (Cost accounting document)</xsl:when>
      		<xsl:when test="$myparam='CAZ'"><xsl:value-of select="$myparam"/> (Grid operator's customer reference number)</xsl:when>
      		<xsl:when test="$myparam='CBA'"><xsl:value-of select="$myparam"/> (Ticket control number)</xsl:when>
      		<xsl:when test="$myparam='CBB'"><xsl:value-of select="$myparam"/> (Order shipment grouping reference)</xsl:when>
      		<xsl:when test="$myparam='CD'"><xsl:value-of select="$myparam"/> (Credit note number)</xsl:when>
      		<xsl:when test="$myparam='CEC'"><xsl:value-of select="$myparam"/> (Ceding company)</xsl:when>
      		<xsl:when test="$myparam='CED'"><xsl:value-of select="$myparam"/> (Debit letter number)</xsl:when>
      		<xsl:when test="$myparam='CFE'"><xsl:value-of select="$myparam"/> (Consignee's further order)</xsl:when>
      		<xsl:when test="$myparam='CFF'"><xsl:value-of select="$myparam"/> (Animal farm licence number)</xsl:when>
      		<xsl:when test="$myparam='CFO'"><xsl:value-of select="$myparam"/> (Consignor's further order)</xsl:when>
      		<xsl:when test="$myparam='CG'"><xsl:value-of select="$myparam"/> (Consignee's order number)</xsl:when>
      		<xsl:when test="$myparam='CH'"><xsl:value-of select="$myparam"/> (Customer catalogue number)</xsl:when>
      		<xsl:when test="$myparam='CK'"><xsl:value-of select="$myparam"/> (Cheque number)</xsl:when>
      		<xsl:when test="$myparam='CKN'"><xsl:value-of select="$myparam"/> (Checking number)</xsl:when>
      		<xsl:when test="$myparam='CM'"><xsl:value-of select="$myparam"/> (Credit memo number)</xsl:when>
      		<xsl:when test="$myparam='CMR'"><xsl:value-of select="$myparam"/> (Road consignment note number)</xsl:when>
      		<xsl:when test="$myparam='CN'"><xsl:value-of select="$myparam"/> (Carrier's reference number)</xsl:when>
      		<xsl:when test="$myparam='CNO'"><xsl:value-of select="$myparam"/> (Charges note document attachment indicator)</xsl:when>
      		<xsl:when test="$myparam='COF'"><xsl:value-of select="$myparam"/> (Call off order number)</xsl:when>
      		<xsl:when test="$myparam='CP'"><xsl:value-of select="$myparam"/> (Condition of purchase document number)</xsl:when>
      		<xsl:when test="$myparam='CR'"><xsl:value-of select="$myparam"/> (Customer reference number)</xsl:when>
      		<xsl:when test="$myparam='CRN'"><xsl:value-of select="$myparam"/> (Transport means journey identifier)</xsl:when>
      		<xsl:when test="$myparam='CS'"><xsl:value-of select="$myparam"/> (Condition of sale document number)</xsl:when>
      		<xsl:when test="$myparam='CST'"><xsl:value-of select="$myparam"/> (Team assignment number)</xsl:when>
      		<xsl:when test="$myparam='CT'"><xsl:value-of select="$myparam"/> (Contract number)</xsl:when>
      		<xsl:when test="$myparam='CU'"><xsl:value-of select="$myparam"/> (Consignment identifier, consignor assigned)</xsl:when>
      		<xsl:when test="$myparam='CV'"><xsl:value-of select="$myparam"/> (Container operators reference number)</xsl:when>
      		<xsl:when test="$myparam='CW'"><xsl:value-of select="$myparam"/> (Package number)</xsl:when>
      		<xsl:when test="$myparam='CZ'"><xsl:value-of select="$myparam"/> (Cooperation contract number)</xsl:when>
      		<xsl:when test="$myparam='DA'"><xsl:value-of select="$myparam"/> (Deferment approval number)</xsl:when>
      		<xsl:when test="$myparam='DAN'"><xsl:value-of select="$myparam"/> (Debit account number)</xsl:when>
      		<xsl:when test="$myparam='DB'"><xsl:value-of select="$myparam"/> (Buyer's debtor number)</xsl:when>
      		<xsl:when test="$myparam='DI'"><xsl:value-of select="$myparam"/> (Distributor invoice number)</xsl:when>
      		<xsl:when test="$myparam='DL'"><xsl:value-of select="$myparam"/> (Debit note number)</xsl:when>
      		<xsl:when test="$myparam='DM'"><xsl:value-of select="$myparam"/> (Document identifier)</xsl:when>
      		<xsl:when test="$myparam='DQ'"><xsl:value-of select="$myparam"/> (Delivery note number)</xsl:when>
      		<xsl:when test="$myparam='DR'"><xsl:value-of select="$myparam"/> (Dock receipt number)</xsl:when>
      		<xsl:when test="$myparam='EA'"><xsl:value-of select="$myparam"/> (Ending meter reading actual)</xsl:when>
      		<xsl:when test="$myparam='EB'"><xsl:value-of select="$myparam"/> (Embargo permit number)</xsl:when>
      		<xsl:when test="$myparam='ED'"><xsl:value-of select="$myparam"/> (Export declaration)</xsl:when>
      		<xsl:when test="$myparam='EE'"><xsl:value-of select="$myparam"/> (Ending meter reading estimated)</xsl:when>
      		<xsl:when test="$myparam='EEP'"><xsl:value-of select="$myparam"/> (Electrical and electronic equipment producer registration number)</xsl:when>
      		<xsl:when test="$myparam='EI'"><xsl:value-of select="$myparam"/> (Employer's identification number)</xsl:when>
      		<xsl:when test="$myparam='EN'"><xsl:value-of select="$myparam"/> (Embargo number)</xsl:when>
      		<xsl:when test="$myparam='EQ'"><xsl:value-of select="$myparam"/> (Equipment number)</xsl:when>
      		<xsl:when test="$myparam='ER'"><xsl:value-of select="$myparam"/> (Container/equipment receipt number)</xsl:when>
      		<xsl:when test="$myparam='ERN'"><xsl:value-of select="$myparam"/> (Exporter's reference number)</xsl:when>
      		<xsl:when test="$myparam='ET'"><xsl:value-of select="$myparam"/> (Excess transportation number)</xsl:when>
      		<xsl:when test="$myparam='EX'"><xsl:value-of select="$myparam"/> (Export permit identifier)</xsl:when>
      		<xsl:when test="$myparam='FC'"><xsl:value-of select="$myparam"/> (Fiscal number)</xsl:when>
      		<xsl:when test="$myparam='FF'"><xsl:value-of select="$myparam"/> (Consignment identifier, freight forwarder assigned)</xsl:when>
      		<xsl:when test="$myparam='FI'"><xsl:value-of select="$myparam"/> (File line identifier)</xsl:when>
      		<xsl:when test="$myparam='FLW'"><xsl:value-of select="$myparam"/> (Flow reference number)</xsl:when>
      		<xsl:when test="$myparam='FN'"><xsl:value-of select="$myparam"/> (Freight bill number)</xsl:when>
      		<xsl:when test="$myparam='FO'"><xsl:value-of select="$myparam"/> (Foreign exchange)</xsl:when>
      		<xsl:when test="$myparam='FS'"><xsl:value-of select="$myparam"/> (Final sequence number)</xsl:when>
      		<xsl:when test="$myparam='FT'"><xsl:value-of select="$myparam"/> (Free zone identifier)</xsl:when>
      		<xsl:when test="$myparam='FV'"><xsl:value-of select="$myparam"/> (File version number)</xsl:when>
      		<xsl:when test="$myparam='FX'"><xsl:value-of select="$myparam"/> (Foreign exchange contract number)</xsl:when>
      		<xsl:when test="$myparam='GA'"><xsl:value-of select="$myparam"/> (Standard's number)</xsl:when>
      		<xsl:when test="$myparam='GC'"><xsl:value-of select="$myparam"/> (Government contract number)</xsl:when>
      		<xsl:when test="$myparam='GD'"><xsl:value-of select="$myparam"/> (Standard's code number)</xsl:when>
      		<xsl:when test="$myparam='GDN'"><xsl:value-of select="$myparam"/> (General declaration number)</xsl:when>
      		<xsl:when test="$myparam='GN'"><xsl:value-of select="$myparam"/> (Government reference number)</xsl:when>
      		<xsl:when test="$myparam='HS'"><xsl:value-of select="$myparam"/> (Harmonised system number)</xsl:when>
      		<xsl:when test="$myparam='HWB'"><xsl:value-of select="$myparam"/> (House waybill number)</xsl:when>
      		<xsl:when test="$myparam='IA'"><xsl:value-of select="$myparam"/> (Internal vendor number)</xsl:when>
      		<xsl:when test="$myparam='IB'"><xsl:value-of select="$myparam"/> (In bond number)</xsl:when>
      		<xsl:when test="$myparam='ICA'"><xsl:value-of select="$myparam"/> (IATA cargo agent code number)</xsl:when>
      		<xsl:when test="$myparam='ICE'"><xsl:value-of select="$myparam"/> (Insurance certificate reference number)</xsl:when>
      		<xsl:when test="$myparam='ICO'"><xsl:value-of select="$myparam"/> (Insurance contract reference number)</xsl:when>
      		<xsl:when test="$myparam='II'"><xsl:value-of select="$myparam"/> (Initial sample inspection report number)</xsl:when>
      		<xsl:when test="$myparam='IL'"><xsl:value-of select="$myparam"/> (Internal order number)</xsl:when>
      		<xsl:when test="$myparam='INB'"><xsl:value-of select="$myparam"/> (Intermediary broker)</xsl:when>
      		<xsl:when test="$myparam='INN'"><xsl:value-of select="$myparam"/> (Interchange number new)</xsl:when>
      		<xsl:when test="$myparam='INO'"><xsl:value-of select="$myparam"/> (Interchange number old)</xsl:when>
      		<xsl:when test="$myparam='IP'"><xsl:value-of select="$myparam"/> (Import permit identifier)</xsl:when>
      		<xsl:when test="$myparam='IS'"><xsl:value-of select="$myparam"/> (Invoice number suffix)</xsl:when>
      		<xsl:when test="$myparam='IT'"><xsl:value-of select="$myparam"/> (Internal customer number)</xsl:when>
      		<xsl:when test="$myparam='IV'"><xsl:value-of select="$myparam"/> (Invoice document identifier)</xsl:when>
      		<xsl:when test="$myparam='JB'"><xsl:value-of select="$myparam"/> (Job number)</xsl:when>
      		<xsl:when test="$myparam='JE'"><xsl:value-of select="$myparam"/> (Ending job sequence number)</xsl:when>
      		<xsl:when test="$myparam='LA'"><xsl:value-of select="$myparam"/> (Shipping label serial number)</xsl:when>
      		<xsl:when test="$myparam='LAN'"><xsl:value-of select="$myparam"/> (Loading authorisation identifier)</xsl:when>
      		<xsl:when test="$myparam='LAR'"><xsl:value-of select="$myparam"/> (Lower number in range)</xsl:when>
      		<xsl:when test="$myparam='LB'"><xsl:value-of select="$myparam"/> (Lockbox)</xsl:when>
      		<xsl:when test="$myparam='LC'"><xsl:value-of select="$myparam"/> (Letter of credit number)</xsl:when>
      		<xsl:when test="$myparam='LI'"><xsl:value-of select="$myparam"/> (Document line identifier)</xsl:when>
      		<xsl:when test="$myparam='LO'"><xsl:value-of select="$myparam"/> (Load planning number)</xsl:when>
      		<xsl:when test="$myparam='LRC'"><xsl:value-of select="$myparam"/> (Reservation office identifier)</xsl:when>
      		<xsl:when test="$myparam='LS'"><xsl:value-of select="$myparam"/> (Bar coded label serial number)</xsl:when>
      		<xsl:when test="$myparam='MA'"><xsl:value-of select="$myparam"/> (Ship notice/manifest number)</xsl:when>
      		<xsl:when test="$myparam='MB'"><xsl:value-of select="$myparam"/> (Master bill of lading number)</xsl:when>
      		<xsl:when test="$myparam='MF'"><xsl:value-of select="$myparam"/> (Manufacturer's part number)</xsl:when>
      		<xsl:when test="$myparam='MG'"><xsl:value-of select="$myparam"/> (Meter unit number)</xsl:when>
      		<xsl:when test="$myparam='MH'"><xsl:value-of select="$myparam"/> (Manufacturing order number)</xsl:when>
      		<xsl:when test="$myparam='MR'"><xsl:value-of select="$myparam"/> (Message recipient)</xsl:when>
      		<xsl:when test="$myparam='MRN'"><xsl:value-of select="$myparam"/> (Mailing reference number)</xsl:when>
      		<xsl:when test="$myparam='MS'"><xsl:value-of select="$myparam"/> (Message sender)</xsl:when>
      		<xsl:when test="$myparam='MSS'"><xsl:value-of select="$myparam"/> (Manufacturer's material safety data sheet number)</xsl:when>
      		<xsl:when test="$myparam='MWB'"><xsl:value-of select="$myparam"/> (Master air waybill number)</xsl:when>
      		<xsl:when test="$myparam='NA'"><xsl:value-of select="$myparam"/> (North American hazardous goods classification number)</xsl:when>
      		<xsl:when test="$myparam='NF'"><xsl:value-of select="$myparam"/> (Nota Fiscal)</xsl:when>
      		<xsl:when test="$myparam='OH'"><xsl:value-of select="$myparam"/> (Current invoice number)</xsl:when>
      		<xsl:when test="$myparam='OI'"><xsl:value-of select="$myparam"/> (Previous invoice number)</xsl:when>
      		<xsl:when test="$myparam='ON'"><xsl:value-of select="$myparam"/> (Order document identifier, buyer assigned)</xsl:when>
      		<xsl:when test="$myparam='OP'"><xsl:value-of select="$myparam"/> (Original purchase order)</xsl:when>
      		<xsl:when test="$myparam='OR'"><xsl:value-of select="$myparam"/> (General order number)</xsl:when>
      		<xsl:when test="$myparam='PB'"><xsl:value-of select="$myparam"/> (Payer's financial institution account number)</xsl:when>
      		<xsl:when test="$myparam='PC'"><xsl:value-of select="$myparam"/> (Production code)</xsl:when>
      		<xsl:when test="$myparam='PD'"><xsl:value-of select="$myparam"/> (Promotion deal number)</xsl:when>
      		<xsl:when test="$myparam='PE'"><xsl:value-of select="$myparam"/> (Plant number)</xsl:when>
      		<xsl:when test="$myparam='PF'"><xsl:value-of select="$myparam"/> (Prime contractor contract number)</xsl:when>
      		<xsl:when test="$myparam='PI'"><xsl:value-of select="$myparam"/> (Price list version number)</xsl:when>
      		<xsl:when test="$myparam='PK'"><xsl:value-of select="$myparam"/> (Packing list number)</xsl:when>
      		<xsl:when test="$myparam='PL'"><xsl:value-of select="$myparam"/> (Price list number)</xsl:when>
      		<xsl:when test="$myparam='POR'"><xsl:value-of select="$myparam"/> (Purchase order response number)</xsl:when>
      		<xsl:when test="$myparam='PP'"><xsl:value-of select="$myparam"/> (Purchase order change number)</xsl:when>
      		<xsl:when test="$myparam='PQ'"><xsl:value-of select="$myparam"/> (Payment reference)</xsl:when>
      		<xsl:when test="$myparam='PR'"><xsl:value-of select="$myparam"/> (Price quote number)</xsl:when>
      		<xsl:when test="$myparam='PS'"><xsl:value-of select="$myparam"/> (Purchase order number suffix)</xsl:when>
      		<xsl:when test="$myparam='PW'"><xsl:value-of select="$myparam"/> (Prior purchase order number)</xsl:when>
      		<xsl:when test="$myparam='PY'"><xsl:value-of select="$myparam"/> (Payee's financial institution account number)</xsl:when>
      		<xsl:when test="$myparam='RA'"><xsl:value-of select="$myparam"/> (Remittance advice number)</xsl:when>
      		<xsl:when test="$myparam='RC'"><xsl:value-of select="$myparam"/> (Rail/road routing code)</xsl:when>
      		<xsl:when test="$myparam='RCN'"><xsl:value-of select="$myparam"/> (Railway consignment note number)</xsl:when>
      		<xsl:when test="$myparam='RE'"><xsl:value-of select="$myparam"/> (Release number)</xsl:when>
      		<xsl:when test="$myparam='REN'"><xsl:value-of select="$myparam"/> (Consignment receipt identifier)</xsl:when>
      		<xsl:when test="$myparam='RF'"><xsl:value-of select="$myparam"/> (Export reference number)</xsl:when>
      		<xsl:when test="$myparam='RR'"><xsl:value-of select="$myparam"/> (Payer's financial institution transit routing No.(ACH transfers))</xsl:when>
      		<xsl:when test="$myparam='RT'"><xsl:value-of select="$myparam"/> (Payee's financial institution transit routing No.)</xsl:when>
      		<xsl:when test="$myparam='SA'"><xsl:value-of select="$myparam"/> (Sales person number)</xsl:when>
      		<xsl:when test="$myparam='SB'"><xsl:value-of select="$myparam"/> (Sales region number)</xsl:when>
      		<xsl:when test="$myparam='SD'"><xsl:value-of select="$myparam"/> (Sales department number)</xsl:when>
      		<xsl:when test="$myparam='SE'"><xsl:value-of select="$myparam"/> (Serial number)</xsl:when>
      		<xsl:when test="$myparam='SEA'"><xsl:value-of select="$myparam"/> (Allocated seat)</xsl:when>
      		<xsl:when test="$myparam='SF'"><xsl:value-of select="$myparam"/> (Ship from)</xsl:when>
      		<xsl:when test="$myparam='SH'"><xsl:value-of select="$myparam"/> (Previous highest schedule number)</xsl:when>
      		<xsl:when test="$myparam='SI'"><xsl:value-of select="$myparam"/> (SID (Shipper's identifying number for shipment))</xsl:when>
      		<xsl:when test="$myparam='SM'"><xsl:value-of select="$myparam"/> (Sales office number)</xsl:when>
      		<xsl:when test="$myparam='SN'"><xsl:value-of select="$myparam"/> (Transport equipment seal identifier)</xsl:when>
      		<xsl:when test="$myparam='SP'"><xsl:value-of select="$myparam"/> (Scan line)</xsl:when>
      		<xsl:when test="$myparam='SQ'"><xsl:value-of select="$myparam"/> (Equipment sequence number)</xsl:when>
      		<xsl:when test="$myparam='SRN'"><xsl:value-of select="$myparam"/> (Shipment reference number)</xsl:when>
      		<xsl:when test="$myparam='SS'"><xsl:value-of select="$myparam"/> (Sellers reference number)</xsl:when>
      		<xsl:when test="$myparam='STA'"><xsl:value-of select="$myparam"/> (Station reference number)</xsl:when>
      		<xsl:when test="$myparam='SW'"><xsl:value-of select="$myparam"/> (Swap order number)</xsl:when>
      		<xsl:when test="$myparam='SZ'"><xsl:value-of select="$myparam"/> (Specification number)</xsl:when>
      		<xsl:when test="$myparam='TB'"><xsl:value-of select="$myparam"/> (Trucker's bill of lading)</xsl:when>
      		<xsl:when test="$myparam='TCR'"><xsl:value-of select="$myparam"/> (Terminal operator's consignment reference)</xsl:when>
      		<xsl:when test="$myparam='TE'"><xsl:value-of select="$myparam"/> (Telex message number)</xsl:when>
      		<xsl:when test="$myparam='TF'"><xsl:value-of select="$myparam"/> (Transfer number)</xsl:when>
      		<xsl:when test="$myparam='TI'"><xsl:value-of select="$myparam"/> (TIR carnet number)</xsl:when>
      		<xsl:when test="$myparam='TIN'"><xsl:value-of select="$myparam"/> (Transport instruction number)</xsl:when>
      		<xsl:when test="$myparam='TL'"><xsl:value-of select="$myparam"/> (Tax exemption licence number)</xsl:when>
      		<xsl:when test="$myparam='TN'"><xsl:value-of select="$myparam"/> (Transaction reference number)</xsl:when>
      		<xsl:when test="$myparam='TP'"><xsl:value-of select="$myparam"/> (Test report number)</xsl:when>
      		<xsl:when test="$myparam='UAR'"><xsl:value-of select="$myparam"/> (Upper number of range)</xsl:when>
      		<xsl:when test="$myparam='UC'"><xsl:value-of select="$myparam"/> (Ultimate customer's reference number)</xsl:when>
      		<xsl:when test="$myparam='UCN'"><xsl:value-of select="$myparam"/> (Unique consignment reference number)</xsl:when>
      		<xsl:when test="$myparam='UN'"><xsl:value-of select="$myparam"/> (United Nations Dangerous Goods identifier)</xsl:when>
      		<xsl:when test="$myparam='UO'"><xsl:value-of select="$myparam"/> (Ultimate customer's order number)</xsl:when>
      		<xsl:when test="$myparam='URI'"><xsl:value-of select="$myparam"/> (Uniform Resource Identifier)</xsl:when>
      		<xsl:when test="$myparam='VA'"><xsl:value-of select="$myparam"/> (VAT registration number)</xsl:when>
      		<xsl:when test="$myparam='VC'"><xsl:value-of select="$myparam"/> (Vendor contract number)</xsl:when>
      		<xsl:when test="$myparam='VGR'"><xsl:value-of select="$myparam"/> (Transport equipment gross mass verification reference number)</xsl:when>
      		<xsl:when test="$myparam='VM'"><xsl:value-of select="$myparam"/> (Vessel identifier)</xsl:when>
      		<xsl:when test="$myparam='VN'"><xsl:value-of select="$myparam"/> (Order number (vendor))</xsl:when>
      		<xsl:when test="$myparam='VON'"><xsl:value-of select="$myparam"/> (Voyage number)</xsl:when>
      		<xsl:when test="$myparam='VOR'"><xsl:value-of select="$myparam"/> (Transport equipment gross mass verification order reference)</xsl:when>
      		<xsl:when test="$myparam='VP'"><xsl:value-of select="$myparam"/> (Vendor product number)</xsl:when>
      		<xsl:when test="$myparam='VR'"><xsl:value-of select="$myparam"/> (Vendor ID number)</xsl:when>
      		<xsl:when test="$myparam='VS'"><xsl:value-of select="$myparam"/> (Vendor order number suffix)</xsl:when>
      		<xsl:when test="$myparam='VT'"><xsl:value-of select="$myparam"/> (Motor vehicle identification number)</xsl:when>
      		<xsl:when test="$myparam='VV'"><xsl:value-of select="$myparam"/> (Voucher number)</xsl:when>
      		<xsl:when test="$myparam='WE'"><xsl:value-of select="$myparam"/> (Warehouse entry number)</xsl:when>
      		<xsl:when test="$myparam='WM'"><xsl:value-of select="$myparam"/> (Weight agreement number)</xsl:when>
      		<xsl:when test="$myparam='WN'"><xsl:value-of select="$myparam"/> (Well number)</xsl:when>
      		<xsl:when test="$myparam='WR'"><xsl:value-of select="$myparam"/> (Warehouse receipt number)</xsl:when>
      		<xsl:when test="$myparam='WS'"><xsl:value-of select="$myparam"/> (Warehouse storage location number)</xsl:when>
      		<xsl:when test="$myparam='WY'"><xsl:value-of select="$myparam"/> (Rail waybill number)</xsl:when>
      		<xsl:when test="$myparam='XA'"><xsl:value-of select="$myparam"/> (Company/place registration number)</xsl:when>
      		<xsl:when test="$myparam='XC'"><xsl:value-of select="$myparam"/> (Cargo control number)</xsl:when>
      		<xsl:when test="$myparam='XP'"><xsl:value-of select="$myparam"/> (Previous cargo control number)</xsl:when>
      		<xsl:when test="$myparam='ZZZ'"><xsl:value-of select="$myparam"/> (Mutually defined reference number)</xsl:when>
   			<xsl:otherwise><xsl:value-of select="$myparam"/></xsl:otherwise>
		</xsl:choose>
	</xsl:template>

</xsl:stylesheet>