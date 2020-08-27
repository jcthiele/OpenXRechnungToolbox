<?xml version="1.0"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template name="code.UNTDID.4451">
		<xsl:param name="myparam"/>
		<xsl:choose>
      		<xsl:when test="$myparam='AAA'"><xsl:value-of select="$myparam"/> (Goods item description)</xsl:when>
      		<xsl:when test="$myparam='AAB'"><xsl:value-of select="$myparam"/> (Payment term)</xsl:when>
      		<xsl:when test="$myparam='AAC'"><xsl:value-of select="$myparam"/> (Dangerous goods additional information)</xsl:when>
      		<xsl:when test="$myparam='AAD'"><xsl:value-of select="$myparam"/> (Dangerous goods technical name)</xsl:when>
      		<xsl:when test="$myparam='AAE'"><xsl:value-of select="$myparam"/> (Acknowledgement description)</xsl:when>
      		<xsl:when test="$myparam='AAF'"><xsl:value-of select="$myparam"/> (Rate additional information)</xsl:when>
      		<xsl:when test="$myparam='AAG'"><xsl:value-of select="$myparam"/> (Party instructions)</xsl:when>
      		<xsl:when test="$myparam='AAI'"><xsl:value-of select="$myparam"/> (General information)</xsl:when>
      		<xsl:when test="$myparam='AAJ'"><xsl:value-of select="$myparam"/> (Additional conditions of sale/purchase)</xsl:when>
      		<xsl:when test="$myparam='AAK'"><xsl:value-of select="$myparam"/> (Price conditions)</xsl:when>
      		<xsl:when test="$myparam='AAL'"><xsl:value-of select="$myparam"/> (Goods dimensions in characters)</xsl:when>
      		<xsl:when test="$myparam='AAM'"><xsl:value-of select="$myparam"/> (Equipment re-usage restrictions)</xsl:when>
      		<xsl:when test="$myparam='AAN'"><xsl:value-of select="$myparam"/> (Handling restriction)</xsl:when>
      		<xsl:when test="$myparam='AAO'"><xsl:value-of select="$myparam"/> (Error description (free text))</xsl:when>
      		<xsl:when test="$myparam='AAP'"><xsl:value-of select="$myparam"/> (Response (free text))</xsl:when>
      		<xsl:when test="$myparam='AAQ'"><xsl:value-of select="$myparam"/> (Package content's description)</xsl:when>
      		<xsl:when test="$myparam='AAR'"><xsl:value-of select="$myparam"/> (Terms of delivery)</xsl:when>
      		<xsl:when test="$myparam='AAS'"><xsl:value-of select="$myparam"/> (Bill of lading remarks)</xsl:when>
      		<xsl:when test="$myparam='AAT'"><xsl:value-of select="$myparam"/> (Mode of settlement information)</xsl:when>
      		<xsl:when test="$myparam='AAU'"><xsl:value-of select="$myparam"/> (Consignment invoice information)</xsl:when>
      		<xsl:when test="$myparam='AAV'"><xsl:value-of select="$myparam"/> (Clearance invoice information)</xsl:when>
      		<xsl:when test="$myparam='AAW'"><xsl:value-of select="$myparam"/> (Letter of credit information)</xsl:when>
      		<xsl:when test="$myparam='AAX'"><xsl:value-of select="$myparam"/> (License information)</xsl:when>
      		<xsl:when test="$myparam='AAY'"><xsl:value-of select="$myparam"/> (Certification statements)</xsl:when>
      		<xsl:when test="$myparam='AAZ'"><xsl:value-of select="$myparam"/> (Additional export information)</xsl:when>
      		<xsl:when test="$myparam='ABA'"><xsl:value-of select="$myparam"/> (Tariff statements)</xsl:when>
      		<xsl:when test="$myparam='ABB'"><xsl:value-of select="$myparam"/> (Medical history)</xsl:when>
      		<xsl:when test="$myparam='ABC'"><xsl:value-of select="$myparam"/> (Conditions of sale or purchase)</xsl:when>
      		<xsl:when test="$myparam='ABD'"><xsl:value-of select="$myparam"/> (Contract document type)</xsl:when>
      		<xsl:when test="$myparam='ABE'"><xsl:value-of select="$myparam"/> (Additional terms and/or conditions (documentary credit))</xsl:when>
      		<xsl:when test="$myparam='ABF'"><xsl:value-of select="$myparam"/> (Instructions or information about standby documentary credit)</xsl:when>
      		<xsl:when test="$myparam='ABG'"><xsl:value-of select="$myparam"/> (Instructions or information about partial shipment(s))</xsl:when>
      		<xsl:when test="$myparam='ABH'"><xsl:value-of select="$myparam"/> (Instructions or information about transhipment(s))</xsl:when>
      		<xsl:when test="$myparam='ABI'"><xsl:value-of select="$myparam"/> (Additional handling instructions documentary credit)</xsl:when>
      		<xsl:when test="$myparam='ABJ'"><xsl:value-of select="$myparam"/> (Domestic routing information)</xsl:when>
      		<xsl:when test="$myparam='ABK'"><xsl:value-of select="$myparam"/> (Chargeable category of equipment)</xsl:when>
      		<xsl:when test="$myparam='ABL'"><xsl:value-of select="$myparam"/> (Government information)</xsl:when>
      		<xsl:when test="$myparam='ABM'"><xsl:value-of select="$myparam"/> (Onward routing information)</xsl:when>
      		<xsl:when test="$myparam='ABN'"><xsl:value-of select="$myparam"/> (Accounting information)</xsl:when>
      		<xsl:when test="$myparam='ABO'"><xsl:value-of select="$myparam"/> (Discrepancy information)</xsl:when>
      		<xsl:when test="$myparam='ABP'"><xsl:value-of select="$myparam"/> (Confirmation instructions)</xsl:when>
      		<xsl:when test="$myparam='ABQ'"><xsl:value-of select="$myparam"/> (Method of issuance)</xsl:when>
      		<xsl:when test="$myparam='ABR'"><xsl:value-of select="$myparam"/> (Documents delivery instructions)</xsl:when>
      		<xsl:when test="$myparam='ABS'"><xsl:value-of select="$myparam"/> (Additional conditions)</xsl:when>
      		<xsl:when test="$myparam='ABT'"><xsl:value-of select="$myparam"/> (Information/instructions about additional amounts covered)</xsl:when>
      		<xsl:when test="$myparam='ABU'"><xsl:value-of select="$myparam"/> (Deferred payment termed additional)</xsl:when>
      		<xsl:when test="$myparam='ABV'"><xsl:value-of select="$myparam"/> (Acceptance terms additional)</xsl:when>
      		<xsl:when test="$myparam='ABW'"><xsl:value-of select="$myparam"/> (Negotiation terms additional)</xsl:when>
      		<xsl:when test="$myparam='ABX'"><xsl:value-of select="$myparam"/> (Document name and documentary requirements)</xsl:when>
      		<xsl:when test="$myparam='ABZ'"><xsl:value-of select="$myparam"/> (Instructions/information about revolving documentary credit)</xsl:when>
      		<xsl:when test="$myparam='ACA'"><xsl:value-of select="$myparam"/> (Documentary requirements)</xsl:when>
      		<xsl:when test="$myparam='ACB'"><xsl:value-of select="$myparam"/> (Additional information)</xsl:when>
      		<xsl:when test="$myparam='ACC'"><xsl:value-of select="$myparam"/> (Factor assignment clause)</xsl:when>
      		<xsl:when test="$myparam='ACD'"><xsl:value-of select="$myparam"/> (Reason)</xsl:when>
      		<xsl:when test="$myparam='ACE'"><xsl:value-of select="$myparam"/> (Dispute)</xsl:when>
      		<xsl:when test="$myparam='ACF'"><xsl:value-of select="$myparam"/> (Additional attribute information)</xsl:when>
      		<xsl:when test="$myparam='ACG'"><xsl:value-of select="$myparam"/> (Absence declaration)</xsl:when>
      		<xsl:when test="$myparam='ACH'"><xsl:value-of select="$myparam"/> (Aggregation statement)</xsl:when>
      		<xsl:when test="$myparam='ACI'"><xsl:value-of select="$myparam"/> (Compilation statement)</xsl:when>
      		<xsl:when test="$myparam='ACJ'"><xsl:value-of select="$myparam"/> (Definitional exception)</xsl:when>
      		<xsl:when test="$myparam='ACK'"><xsl:value-of select="$myparam"/> (Privacy statement)</xsl:when>
      		<xsl:when test="$myparam='ACL'"><xsl:value-of select="$myparam"/> (Quality statement)</xsl:when>
      		<xsl:when test="$myparam='ACM'"><xsl:value-of select="$myparam"/> (Statistical description)</xsl:when>
      		<xsl:when test="$myparam='ACN'"><xsl:value-of select="$myparam"/> (Statistical definition)</xsl:when>
      		<xsl:when test="$myparam='ACO'"><xsl:value-of select="$myparam"/> (Statistical name)</xsl:when>
      		<xsl:when test="$myparam='ACP'"><xsl:value-of select="$myparam"/> (Statistical title)</xsl:when>
      		<xsl:when test="$myparam='ACQ'"><xsl:value-of select="$myparam"/> (Off-dimension information)</xsl:when>
      		<xsl:when test="$myparam='ACR'"><xsl:value-of select="$myparam"/> (Unexpected stops information)</xsl:when>
      		<xsl:when test="$myparam='ACS'"><xsl:value-of select="$myparam"/> (Principles)</xsl:when>
      		<xsl:when test="$myparam='ACT'"><xsl:value-of select="$myparam"/> (Terms and definition)</xsl:when>
      		<xsl:when test="$myparam='ACU'"><xsl:value-of select="$myparam"/> (Segment name)</xsl:when>
      		<xsl:when test="$myparam='ACV'"><xsl:value-of select="$myparam"/> (Simple data element name)</xsl:when>
      		<xsl:when test="$myparam='ACW'"><xsl:value-of select="$myparam"/> (Scope)</xsl:when>
      		<xsl:when test="$myparam='ACX'"><xsl:value-of select="$myparam"/> (Message type name)</xsl:when>
      		<xsl:when test="$myparam='ACY'"><xsl:value-of select="$myparam"/> (Introduction)</xsl:when>
      		<xsl:when test="$myparam='ACZ'"><xsl:value-of select="$myparam"/> (Glossary)</xsl:when>
      		<xsl:when test="$myparam='ADA'"><xsl:value-of select="$myparam"/> (Functional definition)</xsl:when>
      		<xsl:when test="$myparam='ADB'"><xsl:value-of select="$myparam"/> (Examples)</xsl:when>
      		<xsl:when test="$myparam='ADC'"><xsl:value-of select="$myparam"/> (Cover page)</xsl:when>
      		<xsl:when test="$myparam='ADD'"><xsl:value-of select="$myparam"/> (Dependency (syntax) notes)</xsl:when>
      		<xsl:when test="$myparam='ADE'"><xsl:value-of select="$myparam"/> (Code value name)</xsl:when>
      		<xsl:when test="$myparam='ADF'"><xsl:value-of select="$myparam"/> (Code list name)</xsl:when>
      		<xsl:when test="$myparam='ADG'"><xsl:value-of select="$myparam"/> (Clarification of usage)</xsl:when>
      		<xsl:when test="$myparam='ADH'"><xsl:value-of select="$myparam"/> (Composite data element name)</xsl:when>
      		<xsl:when test="$myparam='ADI'"><xsl:value-of select="$myparam"/> (Field of application)</xsl:when>
      		<xsl:when test="$myparam='ADJ'"><xsl:value-of select="$myparam"/> (Type of assets and liabilities)</xsl:when>
      		<xsl:when test="$myparam='ADK'"><xsl:value-of select="$myparam"/> (Promotion information)</xsl:when>
      		<xsl:when test="$myparam='ADL'"><xsl:value-of select="$myparam"/> (Meter condition)</xsl:when>
      		<xsl:when test="$myparam='ADM'"><xsl:value-of select="$myparam"/> (Meter reading information)</xsl:when>
      		<xsl:when test="$myparam='ADN'"><xsl:value-of select="$myparam"/> (Type of transaction reason)</xsl:when>
      		<xsl:when test="$myparam='ADO'"><xsl:value-of select="$myparam"/> (Type of survey question)</xsl:when>
      		<xsl:when test="$myparam='ADP'"><xsl:value-of select="$myparam"/> (Carrier's agent counter information)</xsl:when>
      		<xsl:when test="$myparam='ADQ'"><xsl:value-of select="$myparam"/> (Description of work item on equipment)</xsl:when>
      		<xsl:when test="$myparam='ADR'"><xsl:value-of select="$myparam"/> (Message definition)</xsl:when>
      		<xsl:when test="$myparam='ADS'"><xsl:value-of select="$myparam"/> (Booked item information)</xsl:when>
      		<xsl:when test="$myparam='ADT'"><xsl:value-of select="$myparam"/> (Source of document)</xsl:when>
      		<xsl:when test="$myparam='ADU'"><xsl:value-of select="$myparam"/> (Note)</xsl:when>
      		<xsl:when test="$myparam='ADV'"><xsl:value-of select="$myparam"/> (Fixed part of segment clarification text)</xsl:when>
      		<xsl:when test="$myparam='ADW'"><xsl:value-of select="$myparam"/> (Characteristics of goods)</xsl:when>
      		<xsl:when test="$myparam='ADX'"><xsl:value-of select="$myparam"/> (Additional discharge instructions)</xsl:when>
      		<xsl:when test="$myparam='ADY'"><xsl:value-of select="$myparam"/> (Container stripping instructions)</xsl:when>
      		<xsl:when test="$myparam='ADZ'"><xsl:value-of select="$myparam"/> (CSC (Container Safety Convention) plate information)</xsl:when>
      		<xsl:when test="$myparam='AEA'"><xsl:value-of select="$myparam"/> (Cargo remarks)</xsl:when>
      		<xsl:when test="$myparam='AEB'"><xsl:value-of select="$myparam"/> (Temperature control instructions)</xsl:when>
      		<xsl:when test="$myparam='AEC'"><xsl:value-of select="$myparam"/> (Text refers to expected data)</xsl:when>
      		<xsl:when test="$myparam='AED'"><xsl:value-of select="$myparam"/> (Text refers to received data)</xsl:when>
      		<xsl:when test="$myparam='AEE'"><xsl:value-of select="$myparam"/> (Section clarification text)</xsl:when>
      		<xsl:when test="$myparam='AEF'"><xsl:value-of select="$myparam"/> (Information to the beneficiary)</xsl:when>
      		<xsl:when test="$myparam='AEG'"><xsl:value-of select="$myparam"/> (Information to the applicant)</xsl:when>
      		<xsl:when test="$myparam='AEH'"><xsl:value-of select="$myparam"/> (Instructions to the beneficiary)</xsl:when>
      		<xsl:when test="$myparam='AEI'"><xsl:value-of select="$myparam"/> (Instructions to the applicant)</xsl:when>
      		<xsl:when test="$myparam='AEJ'"><xsl:value-of select="$myparam"/> (Controlled atmosphere)</xsl:when>
      		<xsl:when test="$myparam='AEK'"><xsl:value-of select="$myparam"/> (Take off annotation)</xsl:when>
      		<xsl:when test="$myparam='AEL'"><xsl:value-of select="$myparam"/> (Price variation narrative)</xsl:when>
      		<xsl:when test="$myparam='AEM'"><xsl:value-of select="$myparam"/> (Documentary credit amendment instructions)</xsl:when>
      		<xsl:when test="$myparam='AEN'"><xsl:value-of select="$myparam"/> (Standard method narrative)</xsl:when>
      		<xsl:when test="$myparam='AEO'"><xsl:value-of select="$myparam"/> (Project narrative)</xsl:when>
      		<xsl:when test="$myparam='AEP'"><xsl:value-of select="$myparam"/> (Radioactive goods, additional information)</xsl:when>
      		<xsl:when test="$myparam='AEQ'"><xsl:value-of select="$myparam"/> (Bank-to-bank information)</xsl:when>
      		<xsl:when test="$myparam='AER'"><xsl:value-of select="$myparam"/> (Reimbursement instructions)</xsl:when>
      		<xsl:when test="$myparam='AES'"><xsl:value-of select="$myparam"/> (Reason for amending a message)</xsl:when>
      		<xsl:when test="$myparam='AET'"><xsl:value-of select="$myparam"/> (Instructions to the paying and/or accepting and/or negotiating bank)</xsl:when>
      		<xsl:when test="$myparam='AEU'"><xsl:value-of select="$myparam"/> (Interest instructions)</xsl:when>
      		<xsl:when test="$myparam='AEV'"><xsl:value-of select="$myparam"/> (Agent commission)</xsl:when>
      		<xsl:when test="$myparam='AEW'"><xsl:value-of select="$myparam"/> (Remitting bank instructions)</xsl:when>
      		<xsl:when test="$myparam='AEX'"><xsl:value-of select="$myparam"/> (Instructions to the collecting bank)</xsl:when>
      		<xsl:when test="$myparam='AEY'"><xsl:value-of select="$myparam"/> (Collection amount instructions)</xsl:when>
      		<xsl:when test="$myparam='AEZ'"><xsl:value-of select="$myparam"/> (Internal auditing information)</xsl:when>
      		<xsl:when test="$myparam='AFA'"><xsl:value-of select="$myparam"/> (Constraint)</xsl:when>
      		<xsl:when test="$myparam='AFB'"><xsl:value-of select="$myparam"/> (Comment)</xsl:when>
      		<xsl:when test="$myparam='AFC'"><xsl:value-of select="$myparam"/> (Semantic note)</xsl:when>
      		<xsl:when test="$myparam='AFD'"><xsl:value-of select="$myparam"/> (Help text)</xsl:when>
      		<xsl:when test="$myparam='AFE'"><xsl:value-of select="$myparam"/> (Legend)</xsl:when>
      		<xsl:when test="$myparam='AFF'"><xsl:value-of select="$myparam"/> (Batch code structure)</xsl:when>
      		<xsl:when test="$myparam='AFG'"><xsl:value-of select="$myparam"/> (Product application)</xsl:when>
      		<xsl:when test="$myparam='AFH'"><xsl:value-of select="$myparam"/> (Customer complaint)</xsl:when>
      		<xsl:when test="$myparam='AFI'"><xsl:value-of select="$myparam"/> (Probable cause of fault)</xsl:when>
      		<xsl:when test="$myparam='AFJ'"><xsl:value-of select="$myparam"/> (Defect description)</xsl:when>
      		<xsl:when test="$myparam='AFK'"><xsl:value-of select="$myparam"/> (Repair description)</xsl:when>
      		<xsl:when test="$myparam='AFL'"><xsl:value-of select="$myparam"/> (Review comments)</xsl:when>
      		<xsl:when test="$myparam='AFM'"><xsl:value-of select="$myparam"/> (Title)</xsl:when>
      		<xsl:when test="$myparam='AFN'"><xsl:value-of select="$myparam"/> (Description of amount)</xsl:when>
      		<xsl:when test="$myparam='AFO'"><xsl:value-of select="$myparam"/> (Responsibilities)</xsl:when>
      		<xsl:when test="$myparam='AFP'"><xsl:value-of select="$myparam"/> (Supplier)</xsl:when>
      		<xsl:when test="$myparam='AFQ'"><xsl:value-of select="$myparam"/> (Purchase region)</xsl:when>
      		<xsl:when test="$myparam='AFR'"><xsl:value-of select="$myparam"/> (Affiliation)</xsl:when>
      		<xsl:when test="$myparam='AFS'"><xsl:value-of select="$myparam"/> (Borrower)</xsl:when>
      		<xsl:when test="$myparam='AFT'"><xsl:value-of select="$myparam"/> (Line of business)</xsl:when>
      		<xsl:when test="$myparam='AFU'"><xsl:value-of select="$myparam"/> (Financial institution)</xsl:when>
      		<xsl:when test="$myparam='AFV'"><xsl:value-of select="$myparam"/> (Business founder)</xsl:when>
      		<xsl:when test="$myparam='AFW'"><xsl:value-of select="$myparam"/> (Business history)</xsl:when>
      		<xsl:when test="$myparam='AFX'"><xsl:value-of select="$myparam"/> (Banking arrangements)</xsl:when>
      		<xsl:when test="$myparam='AFY'"><xsl:value-of select="$myparam"/> (Business origin)</xsl:when>
      		<xsl:when test="$myparam='AFZ'"><xsl:value-of select="$myparam"/> (Brand names' description)</xsl:when>
      		<xsl:when test="$myparam='AGA'"><xsl:value-of select="$myparam"/> (Business financing details)</xsl:when>
      		<xsl:when test="$myparam='AGB'"><xsl:value-of select="$myparam"/> (Competition)</xsl:when>
      		<xsl:when test="$myparam='AGC'"><xsl:value-of select="$myparam"/> (Construction process details)</xsl:when>
      		<xsl:when test="$myparam='AGD'"><xsl:value-of select="$myparam"/> (Construction specialty)</xsl:when>
      		<xsl:when test="$myparam='AGE'"><xsl:value-of select="$myparam"/> (Contract information)</xsl:when>
      		<xsl:when test="$myparam='AGF'"><xsl:value-of select="$myparam"/> (Corporate filing)</xsl:when>
      		<xsl:when test="$myparam='AGG'"><xsl:value-of select="$myparam"/> (Customer information)</xsl:when>
      		<xsl:when test="$myparam='AGH'"><xsl:value-of select="$myparam"/> (Copyright notice)</xsl:when>
      		<xsl:when test="$myparam='AGI'"><xsl:value-of select="$myparam"/> (Contingent debt)</xsl:when>
      		<xsl:when test="$myparam='AGJ'"><xsl:value-of select="$myparam"/> (Conviction details)</xsl:when>
      		<xsl:when test="$myparam='AGK'"><xsl:value-of select="$myparam"/> (Equipment)</xsl:when>
      		<xsl:when test="$myparam='AGL'"><xsl:value-of select="$myparam"/> (Workforce description)</xsl:when>
      		<xsl:when test="$myparam='AGM'"><xsl:value-of select="$myparam"/> (Exemption)</xsl:when>
      		<xsl:when test="$myparam='AGN'"><xsl:value-of select="$myparam"/> (Future plans)</xsl:when>
      		<xsl:when test="$myparam='AGO'"><xsl:value-of select="$myparam"/> (Interviewee conversation information)</xsl:when>
      		<xsl:when test="$myparam='AGP'"><xsl:value-of select="$myparam"/> (Intangible asset)</xsl:when>
      		<xsl:when test="$myparam='AGQ'"><xsl:value-of select="$myparam"/> (Inventory)</xsl:when>
      		<xsl:when test="$myparam='AGR'"><xsl:value-of select="$myparam"/> (Investment)</xsl:when>
      		<xsl:when test="$myparam='AGS'"><xsl:value-of select="$myparam"/> (Intercompany relations information)</xsl:when>
      		<xsl:when test="$myparam='AGT'"><xsl:value-of select="$myparam"/> (Joint venture)</xsl:when>
      		<xsl:when test="$myparam='AGU'"><xsl:value-of select="$myparam"/> (Loan)</xsl:when>
      		<xsl:when test="$myparam='AGV'"><xsl:value-of select="$myparam"/> (Long term debt)</xsl:when>
      		<xsl:when test="$myparam='AGW'"><xsl:value-of select="$myparam"/> (Location)</xsl:when>
      		<xsl:when test="$myparam='AGX'"><xsl:value-of select="$myparam"/> (Current legal structure)</xsl:when>
      		<xsl:when test="$myparam='AGY'"><xsl:value-of select="$myparam"/> (Marital contract)</xsl:when>
      		<xsl:when test="$myparam='AGZ'"><xsl:value-of select="$myparam"/> (Marketing activities)</xsl:when>
      		<xsl:when test="$myparam='AHA'"><xsl:value-of select="$myparam"/> (Merger)</xsl:when>
      		<xsl:when test="$myparam='AHB'"><xsl:value-of select="$myparam"/> (Marketable securities)</xsl:when>
      		<xsl:when test="$myparam='AHC'"><xsl:value-of select="$myparam"/> (Business debt)</xsl:when>
      		<xsl:when test="$myparam='AHD'"><xsl:value-of select="$myparam"/> (Original legal structure)</xsl:when>
      		<xsl:when test="$myparam='AHE'"><xsl:value-of select="$myparam"/> (Employee sharing arrangements)</xsl:when>
      		<xsl:when test="$myparam='AHF'"><xsl:value-of select="$myparam"/> (Organization details)</xsl:when>
      		<xsl:when test="$myparam='AHG'"><xsl:value-of select="$myparam"/> (Public record details)</xsl:when>
      		<xsl:when test="$myparam='AHH'"><xsl:value-of select="$myparam"/> (Price range)</xsl:when>
      		<xsl:when test="$myparam='AHI'"><xsl:value-of select="$myparam"/> (Qualifications)</xsl:when>
      		<xsl:when test="$myparam='AHJ'"><xsl:value-of select="$myparam"/> (Registered activity)</xsl:when>
      		<xsl:when test="$myparam='AHK'"><xsl:value-of select="$myparam"/> (Criminal sentence)</xsl:when>
      		<xsl:when test="$myparam='AHL'"><xsl:value-of select="$myparam"/> (Sales method)</xsl:when>
      		<xsl:when test="$myparam='AHM'"><xsl:value-of select="$myparam"/> (Educational institution information)</xsl:when>
      		<xsl:when test="$myparam='AHN'"><xsl:value-of select="$myparam"/> (Status details)</xsl:when>
      		<xsl:when test="$myparam='AHO'"><xsl:value-of select="$myparam"/> (Sales)</xsl:when>
      		<xsl:when test="$myparam='AHP'"><xsl:value-of select="$myparam"/> (Spouse information)</xsl:when>
      		<xsl:when test="$myparam='AHQ'"><xsl:value-of select="$myparam"/> (Educational degree information)</xsl:when>
      		<xsl:when test="$myparam='AHR'"><xsl:value-of select="$myparam"/> (Shareholding information)</xsl:when>
      		<xsl:when test="$myparam='AHS'"><xsl:value-of select="$myparam"/> (Sales territory)</xsl:when>
      		<xsl:when test="$myparam='AHT'"><xsl:value-of select="$myparam"/> (Accountant's comments)</xsl:when>
      		<xsl:when test="$myparam='AHU'"><xsl:value-of select="$myparam"/> (Exemption law location)</xsl:when>
      		<xsl:when test="$myparam='AHV'"><xsl:value-of select="$myparam"/> (Share classifications)</xsl:when>
      		<xsl:when test="$myparam='AHW'"><xsl:value-of select="$myparam"/> (Forecast)</xsl:when>
      		<xsl:when test="$myparam='AHX'"><xsl:value-of select="$myparam"/> (Event location)</xsl:when>
      		<xsl:when test="$myparam='AHY'"><xsl:value-of select="$myparam"/> (Facility occupancy)</xsl:when>
      		<xsl:when test="$myparam='AHZ'"><xsl:value-of select="$myparam"/> (Import and export details)</xsl:when>
      		<xsl:when test="$myparam='AIA'"><xsl:value-of select="$myparam"/> (Additional facility information)</xsl:when>
      		<xsl:when test="$myparam='AIB'"><xsl:value-of select="$myparam"/> (Inventory value)</xsl:when>
      		<xsl:when test="$myparam='AIC'"><xsl:value-of select="$myparam"/> (Education)</xsl:when>
      		<xsl:when test="$myparam='AID'"><xsl:value-of select="$myparam"/> (Event)</xsl:when>
      		<xsl:when test="$myparam='AIE'"><xsl:value-of select="$myparam"/> (Agent)</xsl:when>
      		<xsl:when test="$myparam='AIF'"><xsl:value-of select="$myparam"/> (Domestically agreed financial statement details)</xsl:when>
      		<xsl:when test="$myparam='AIG'"><xsl:value-of select="$myparam"/> (Other current asset description)</xsl:when>
      		<xsl:when test="$myparam='AIH'"><xsl:value-of select="$myparam"/> (Other current liability description)</xsl:when>
      		<xsl:when test="$myparam='AII'"><xsl:value-of select="$myparam"/> (Former business activity)</xsl:when>
      		<xsl:when test="$myparam='AIJ'"><xsl:value-of select="$myparam"/> (Trade name use)</xsl:when>
      		<xsl:when test="$myparam='AIK'"><xsl:value-of select="$myparam"/> (Signing authority)</xsl:when>
      		<xsl:when test="$myparam='AIL'"><xsl:value-of select="$myparam"/> (Guarantee)</xsl:when>
      		<xsl:when test="$myparam='AIM'"><xsl:value-of select="$myparam"/> (Holding company operation)</xsl:when>
      		<xsl:when test="$myparam='AIN'"><xsl:value-of select="$myparam"/> (Consignment routing)</xsl:when>
      		<xsl:when test="$myparam='AIO'"><xsl:value-of select="$myparam"/> (Letter of protest)</xsl:when>
      		<xsl:when test="$myparam='AIP'"><xsl:value-of select="$myparam"/> (Question)</xsl:when>
      		<xsl:when test="$myparam='AIQ'"><xsl:value-of select="$myparam"/> (Party information)</xsl:when>
      		<xsl:when test="$myparam='AIR'"><xsl:value-of select="$myparam"/> (Area boundaries description)</xsl:when>
      		<xsl:when test="$myparam='AIS'"><xsl:value-of select="$myparam"/> (Advertisement information)</xsl:when>
      		<xsl:when test="$myparam='AIT'"><xsl:value-of select="$myparam"/> (Financial statement details)</xsl:when>
      		<xsl:when test="$myparam='AIU'"><xsl:value-of select="$myparam"/> (Access instructions)</xsl:when>
      		<xsl:when test="$myparam='AIV'"><xsl:value-of select="$myparam"/> (Liquidity)</xsl:when>
      		<xsl:when test="$myparam='AIW'"><xsl:value-of select="$myparam"/> (Credit line)</xsl:when>
      		<xsl:when test="$myparam='AIX'"><xsl:value-of select="$myparam"/> (Warranty terms)</xsl:when>
      		<xsl:when test="$myparam='AIY'"><xsl:value-of select="$myparam"/> (Division description)</xsl:when>
      		<xsl:when test="$myparam='AIZ'"><xsl:value-of select="$myparam"/> (Reporting instruction)</xsl:when>
      		<xsl:when test="$myparam='AJA'"><xsl:value-of select="$myparam"/> (Examination result)</xsl:when>
      		<xsl:when test="$myparam='AJB'"><xsl:value-of select="$myparam"/> (Laboratory result)</xsl:when>
      		<xsl:when test="$myparam='ALC'"><xsl:value-of select="$myparam"/> (Allowance/charge information)</xsl:when>
      		<xsl:when test="$myparam='ALD'"><xsl:value-of select="$myparam"/> (X-ray result)</xsl:when>
      		<xsl:when test="$myparam='ALE'"><xsl:value-of select="$myparam"/> (Pathology result)</xsl:when>
      		<xsl:when test="$myparam='ALF'"><xsl:value-of select="$myparam"/> (Intervention description)</xsl:when>
      		<xsl:when test="$myparam='ALG'"><xsl:value-of select="$myparam"/> (Summary of admittance)</xsl:when>
      		<xsl:when test="$myparam='ALH'"><xsl:value-of select="$myparam"/> (Medical treatment course detail)</xsl:when>
      		<xsl:when test="$myparam='ALI'"><xsl:value-of select="$myparam"/> (Prognosis)</xsl:when>
      		<xsl:when test="$myparam='ALJ'"><xsl:value-of select="$myparam"/> (Instruction to patient)</xsl:when>
      		<xsl:when test="$myparam='ALK'"><xsl:value-of select="$myparam"/> (Instruction to physician)</xsl:when>
      		<xsl:when test="$myparam='ALL'"><xsl:value-of select="$myparam"/> (All documents)</xsl:when>
      		<xsl:when test="$myparam='ALM'"><xsl:value-of select="$myparam"/> (Medicine treatment)</xsl:when>
      		<xsl:when test="$myparam='ALN'"><xsl:value-of select="$myparam"/> (Medicine dosage and administration)</xsl:when>
      		<xsl:when test="$myparam='ALO'"><xsl:value-of select="$myparam"/> (Availability of patient)</xsl:when>
      		<xsl:when test="$myparam='ALP'"><xsl:value-of select="$myparam"/> (Reason for service request)</xsl:when>
      		<xsl:when test="$myparam='ALQ'"><xsl:value-of select="$myparam"/> (Purpose of service)</xsl:when>
      		<xsl:when test="$myparam='ARR'"><xsl:value-of select="$myparam"/> (Arrival conditions)</xsl:when>
      		<xsl:when test="$myparam='ARS'"><xsl:value-of select="$myparam"/> (Service requester's comment)</xsl:when>
      		<xsl:when test="$myparam='AUT'"><xsl:value-of select="$myparam"/> (Authentication)</xsl:when>
      		<xsl:when test="$myparam='AUU'"><xsl:value-of select="$myparam"/> (Requested location description)</xsl:when>
      		<xsl:when test="$myparam='AUV'"><xsl:value-of select="$myparam"/> (Medicine administration condition)</xsl:when>
      		<xsl:when test="$myparam='AUW'"><xsl:value-of select="$myparam"/> (Patient information)</xsl:when>
      		<xsl:when test="$myparam='AUX'"><xsl:value-of select="$myparam"/> (Precautionary measure)</xsl:when>
      		<xsl:when test="$myparam='AUY'"><xsl:value-of select="$myparam"/> (Service characteristic)</xsl:when>
      		<xsl:when test="$myparam='AUZ'"><xsl:value-of select="$myparam"/> (Planned event comment)</xsl:when>
      		<xsl:when test="$myparam='AVA'"><xsl:value-of select="$myparam"/> (Expected delay comment)</xsl:when>
      		<xsl:when test="$myparam='AVB'"><xsl:value-of select="$myparam"/> (Transport requirements comment)</xsl:when>
      		<xsl:when test="$myparam='AVC'"><xsl:value-of select="$myparam"/> (Temporary approval condition)</xsl:when>
      		<xsl:when test="$myparam='AVD'"><xsl:value-of select="$myparam"/> (Customs Valuation Information)</xsl:when>
      		<xsl:when test="$myparam='AVE'"><xsl:value-of select="$myparam"/> (Value Added Tax (VAT) margin scheme)</xsl:when>
      		<xsl:when test="$myparam='AVF'"><xsl:value-of select="$myparam"/> (Maritime Declaration of Health)</xsl:when>
      		<xsl:when test="$myparam='BAG'"><xsl:value-of select="$myparam"/> (Passenger baggage information)</xsl:when>
      		<xsl:when test="$myparam='BAH'"><xsl:value-of select="$myparam"/> (Maritime Declaration of Health)</xsl:when>
      		<xsl:when test="$myparam='BAI'"><xsl:value-of select="$myparam"/> (Additional product information address)</xsl:when>
      		<xsl:when test="$myparam='BAJ'"><xsl:value-of select="$myparam"/> (Information to be printed on despatch advice)</xsl:when>
      		<xsl:when test="$myparam='BAK'"><xsl:value-of select="$myparam"/> (Missing goods remarks)</xsl:when>
      		<xsl:when test="$myparam='BAL'"><xsl:value-of select="$myparam"/> (Non-acceptance information)</xsl:when>
      		<xsl:when test="$myparam='BAM'"><xsl:value-of select="$myparam"/> (Returns information)</xsl:when>
      		<xsl:when test="$myparam='BAN'"><xsl:value-of select="$myparam"/> (Sub-line item information)</xsl:when>
      		<xsl:when test="$myparam='BAO'"><xsl:value-of select="$myparam"/> (Test information)</xsl:when>
      		<xsl:when test="$myparam='BAP'"><xsl:value-of select="$myparam"/> (External link)</xsl:when>
      		<xsl:when test="$myparam='BAQ'"><xsl:value-of select="$myparam"/> (VAT exemption reason)</xsl:when>
      		<xsl:when test="$myparam='BAR'"><xsl:value-of select="$myparam"/> (Processing Instructions)</xsl:when>
      		<xsl:when test="$myparam='BAS'"><xsl:value-of select="$myparam"/> (Relay Instructions)</xsl:when>
      		<xsl:when test="$myparam='BLC'"><xsl:value-of select="$myparam"/> (Transport contract document clause)</xsl:when>
      		<xsl:when test="$myparam='BLD'"><xsl:value-of select="$myparam"/> (Instruction to prepare the patient)</xsl:when>
      		<xsl:when test="$myparam='BLE'"><xsl:value-of select="$myparam"/> (Medicine treatment comment)</xsl:when>
      		<xsl:when test="$myparam='BLF'"><xsl:value-of select="$myparam"/> (Examination result comment)</xsl:when>
      		<xsl:when test="$myparam='BLG'"><xsl:value-of select="$myparam"/> (Service request comment)</xsl:when>
      		<xsl:when test="$myparam='BLH'"><xsl:value-of select="$myparam"/> (Prescription reason)</xsl:when>
      		<xsl:when test="$myparam='BLI'"><xsl:value-of select="$myparam"/> (Prescription comment)</xsl:when>
      		<xsl:when test="$myparam='BLJ'"><xsl:value-of select="$myparam"/> (Clinical investigation comment)</xsl:when>
      		<xsl:when test="$myparam='BLK'"><xsl:value-of select="$myparam"/> (Medicinal specification comment)</xsl:when>
      		<xsl:when test="$myparam='BLL'"><xsl:value-of select="$myparam"/> (Economic contribution comment)</xsl:when>
      		<xsl:when test="$myparam='BLM'"><xsl:value-of select="$myparam"/> (Status of a plan)</xsl:when>
      		<xsl:when test="$myparam='BLN'"><xsl:value-of select="$myparam"/> (Random sample test information)</xsl:when>
      		<xsl:when test="$myparam='BLO'"><xsl:value-of select="$myparam"/> (Period of time)</xsl:when>
      		<xsl:when test="$myparam='BLP'"><xsl:value-of select="$myparam"/> (Legislation)</xsl:when>
      		<xsl:when test="$myparam='BLQ'"><xsl:value-of select="$myparam"/> (Security measures requested)</xsl:when>
      		<xsl:when test="$myparam='BLR'"><xsl:value-of select="$myparam"/> (Transport contract document remark)</xsl:when>
      		<xsl:when test="$myparam='BLS'"><xsl:value-of select="$myparam"/> (Previous port of call security information)</xsl:when>
      		<xsl:when test="$myparam='BLT'"><xsl:value-of select="$myparam"/> (Security information)</xsl:when>
      		<xsl:when test="$myparam='BLU'"><xsl:value-of select="$myparam"/> (Waste information)</xsl:when>
      		<xsl:when test="$myparam='BLV'"><xsl:value-of select="$myparam"/> (B2C marketing information, short description)</xsl:when>
      		<xsl:when test="$myparam='BLW'"><xsl:value-of select="$myparam"/> (B2B marketing information, long description)</xsl:when>
      		<xsl:when test="$myparam='BLX'"><xsl:value-of select="$myparam"/> (B2C marketing information, long description)</xsl:when>
      		<xsl:when test="$myparam='BLY'"><xsl:value-of select="$myparam"/> (Product ingredients)</xsl:when>
      		<xsl:when test="$myparam='BLZ'"><xsl:value-of select="$myparam"/> (Location short name)</xsl:when>
      		<xsl:when test="$myparam='BMA'"><xsl:value-of select="$myparam"/> (Packaging material information)</xsl:when>
      		<xsl:when test="$myparam='BMB'"><xsl:value-of select="$myparam"/> (Filler material information)</xsl:when>
      		<xsl:when test="$myparam='BMC'"><xsl:value-of select="$myparam"/> (Ship-to-ship activity information)</xsl:when>
      		<xsl:when test="$myparam='BMD'"><xsl:value-of select="$myparam"/> (Package material description)</xsl:when>
      		<xsl:when test="$myparam='BME'"><xsl:value-of select="$myparam"/> (Consumer level package marking)</xsl:when>
      		<xsl:when test="$myparam='CCI'"><xsl:value-of select="$myparam"/> (Customs clearance instructions)</xsl:when>
      		<xsl:when test="$myparam='CEX'"><xsl:value-of select="$myparam"/> (Customs clearance instructions export)</xsl:when>
      		<xsl:when test="$myparam='CHG'"><xsl:value-of select="$myparam"/> (Change information)</xsl:when>
      		<xsl:when test="$myparam='CIP'"><xsl:value-of select="$myparam"/> (Customs clearance instruction import)</xsl:when>
      		<xsl:when test="$myparam='CLP'"><xsl:value-of select="$myparam"/> (Clearance place requested)</xsl:when>
      		<xsl:when test="$myparam='CLR'"><xsl:value-of select="$myparam"/> (Loading remarks)</xsl:when>
      		<xsl:when test="$myparam='COI'"><xsl:value-of select="$myparam"/> (Order information)</xsl:when>
      		<xsl:when test="$myparam='CUR'"><xsl:value-of select="$myparam"/> (Customer remarks)</xsl:when>
      		<xsl:when test="$myparam='CUS'"><xsl:value-of select="$myparam"/> (Customs declaration information)</xsl:when>
      		<xsl:when test="$myparam='DAR'"><xsl:value-of select="$myparam"/> (Damage remarks)</xsl:when>
      		<xsl:when test="$myparam='DCL'"><xsl:value-of select="$myparam"/> (Document issuer declaration)</xsl:when>
      		<xsl:when test="$myparam='DEL'"><xsl:value-of select="$myparam"/> (Delivery information)</xsl:when>
      		<xsl:when test="$myparam='DIN'"><xsl:value-of select="$myparam"/> (Delivery instructions)</xsl:when>
      		<xsl:when test="$myparam='DOC'"><xsl:value-of select="$myparam"/> (Documentation instructions)</xsl:when>
      		<xsl:when test="$myparam='DUT'"><xsl:value-of select="$myparam"/> (Duty declaration)</xsl:when>
      		<xsl:when test="$myparam='EUR'"><xsl:value-of select="$myparam"/> (Effective used routing)</xsl:when>
      		<xsl:when test="$myparam='FBC'"><xsl:value-of select="$myparam"/> (First block to be printed on the transport contract)</xsl:when>
      		<xsl:when test="$myparam='GBL'"><xsl:value-of select="$myparam"/> (Government bill of lading information)</xsl:when>
      		<xsl:when test="$myparam='GEN'"><xsl:value-of select="$myparam"/> (Entire transaction set)</xsl:when>
      		<xsl:when test="$myparam='GS7'"><xsl:value-of select="$myparam"/> (Further information concerning GGVS par. 7)</xsl:when>
      		<xsl:when test="$myparam='HAN'"><xsl:value-of select="$myparam"/> (Consignment handling instruction)</xsl:when>
      		<xsl:when test="$myparam='HAZ'"><xsl:value-of select="$myparam"/> (Hazard information)</xsl:when>
      		<xsl:when test="$myparam='ICN'"><xsl:value-of select="$myparam"/> (Consignment information for consignee)</xsl:when>
      		<xsl:when test="$myparam='IIN'"><xsl:value-of select="$myparam"/> (Insurance instructions)</xsl:when>
      		<xsl:when test="$myparam='IMI'"><xsl:value-of select="$myparam"/> (Invoice mailing instructions)</xsl:when>
      		<xsl:when test="$myparam='IND'"><xsl:value-of select="$myparam"/> (Commercial invoice item description)</xsl:when>
      		<xsl:when test="$myparam='INS'"><xsl:value-of select="$myparam"/> (Insurance information)</xsl:when>
      		<xsl:when test="$myparam='INV'"><xsl:value-of select="$myparam"/> (Invoice instruction)</xsl:when>
      		<xsl:when test="$myparam='IRP'"><xsl:value-of select="$myparam"/> (Information for railway purpose)</xsl:when>
      		<xsl:when test="$myparam='ITR'"><xsl:value-of select="$myparam"/> (Inland transport details)</xsl:when>
      		<xsl:when test="$myparam='ITS'"><xsl:value-of select="$myparam"/> (Testing instructions)</xsl:when>
      		<xsl:when test="$myparam='LAN'"><xsl:value-of select="$myparam"/> (Location Alias)</xsl:when>
      		<xsl:when test="$myparam='LIN'"><xsl:value-of select="$myparam"/> (Line item)</xsl:when>
      		<xsl:when test="$myparam='LOI'"><xsl:value-of select="$myparam"/> (Loading instruction)</xsl:when>
      		<xsl:when test="$myparam='MCO'"><xsl:value-of select="$myparam"/> (Miscellaneous charge order)</xsl:when>
      		<xsl:when test="$myparam='MDH'"><xsl:value-of select="$myparam"/> (Maritime Declaration of Health)</xsl:when>
      		<xsl:when test="$myparam='MKS'"><xsl:value-of select="$myparam"/> (Additional marks/numbers information)</xsl:when>
      		<xsl:when test="$myparam='ORI'"><xsl:value-of select="$myparam"/> (Order instruction)</xsl:when>
      		<xsl:when test="$myparam='OSI'"><xsl:value-of select="$myparam"/> (Other service information)</xsl:when>
      		<xsl:when test="$myparam='PAC'"><xsl:value-of select="$myparam"/> (Packing/marking information)</xsl:when>
      		<xsl:when test="$myparam='PAI'"><xsl:value-of select="$myparam"/> (Payment instructions information)</xsl:when>
      		<xsl:when test="$myparam='PAY'"><xsl:value-of select="$myparam"/> (Payables information)</xsl:when>
      		<xsl:when test="$myparam='PKG'"><xsl:value-of select="$myparam"/> (Packaging information)</xsl:when>
      		<xsl:when test="$myparam='PKT'"><xsl:value-of select="$myparam"/> (Packaging terms information)</xsl:when>
      		<xsl:when test="$myparam='PMD'"><xsl:value-of select="$myparam"/> (Payment detail/remittance information)</xsl:when>
      		<xsl:when test="$myparam='PMT'"><xsl:value-of select="$myparam"/> (Payment information)</xsl:when>
      		<xsl:when test="$myparam='PRD'"><xsl:value-of select="$myparam"/> (Product information)</xsl:when>
      		<xsl:when test="$myparam='PRF'"><xsl:value-of select="$myparam"/> (Price calculation formula)</xsl:when>
      		<xsl:when test="$myparam='PRI'"><xsl:value-of select="$myparam"/> (Priority information)</xsl:when>
      		<xsl:when test="$myparam='PUR'"><xsl:value-of select="$myparam"/> (Purchasing information)</xsl:when>
      		<xsl:when test="$myparam='QIN'"><xsl:value-of select="$myparam"/> (Quarantine instructions)</xsl:when>
      		<xsl:when test="$myparam='QQD'"><xsl:value-of select="$myparam"/> (Quality demands/requirements)</xsl:when>
      		<xsl:when test="$myparam='QUT'"><xsl:value-of select="$myparam"/> (Quotation instruction/information)</xsl:when>
      		<xsl:when test="$myparam='RAH'"><xsl:value-of select="$myparam"/> (Risk and handling information)</xsl:when>
      		<xsl:when test="$myparam='REG'"><xsl:value-of select="$myparam"/> (Regulatory information)</xsl:when>
      		<xsl:when test="$myparam='RET'"><xsl:value-of select="$myparam"/> (Return to origin information)</xsl:when>
      		<xsl:when test="$myparam='REV'"><xsl:value-of select="$myparam"/> (Receivables)</xsl:when>
      		<xsl:when test="$myparam='RQR'"><xsl:value-of select="$myparam"/> (Consignment route)</xsl:when>
      		<xsl:when test="$myparam='SAF'"><xsl:value-of select="$myparam"/> (Safety information)</xsl:when>
      		<xsl:when test="$myparam='SIC'"><xsl:value-of select="$myparam"/> (Consignment documentary instruction)</xsl:when>
      		<xsl:when test="$myparam='SIN'"><xsl:value-of select="$myparam"/> (Special instructions)</xsl:when>
      		<xsl:when test="$myparam='SLR'"><xsl:value-of select="$myparam"/> (Ship line requested)</xsl:when>
      		<xsl:when test="$myparam='SPA'"><xsl:value-of select="$myparam"/> (Special permission for transport, generally)</xsl:when>
      		<xsl:when test="$myparam='SPG'"><xsl:value-of select="$myparam"/> (Special permission concerning the goods to be transported)</xsl:when>
      		<xsl:when test="$myparam='SPH'"><xsl:value-of select="$myparam"/> (Special handling)</xsl:when>
      		<xsl:when test="$myparam='SPP'"><xsl:value-of select="$myparam"/> (Special permission concerning package)</xsl:when>
      		<xsl:when test="$myparam='SPT'"><xsl:value-of select="$myparam"/> (Special permission concerning transport means)</xsl:when>
      		<xsl:when test="$myparam='SRN'"><xsl:value-of select="$myparam"/> (Subsidiary risk number (IATA/DGR))</xsl:when>
      		<xsl:when test="$myparam='SSR'"><xsl:value-of select="$myparam"/> (Special service request)</xsl:when>
      		<xsl:when test="$myparam='SUR'"><xsl:value-of select="$myparam"/> (Supplier remarks)</xsl:when>
      		<xsl:when test="$myparam='TCA'"><xsl:value-of select="$myparam"/> (Consignment tariff)</xsl:when>
      		<xsl:when test="$myparam='TDT'"><xsl:value-of select="$myparam"/> (Consignment transport)</xsl:when>
      		<xsl:when test="$myparam='TRA'"><xsl:value-of select="$myparam"/> (Transportation information)</xsl:when>
      		<xsl:when test="$myparam='TRR'"><xsl:value-of select="$myparam"/> (Requested tariff)</xsl:when>
      		<xsl:when test="$myparam='TXD'"><xsl:value-of select="$myparam"/> (Tax declaration)</xsl:when>
      		<xsl:when test="$myparam='WHI'"><xsl:value-of select="$myparam"/> (Warehouse instruction/information)</xsl:when>
      		<xsl:when test="$myparam='ZZZ'"><xsl:value-of select="$myparam"/> (Mutually defined)</xsl:when>
   			<xsl:otherwise><xsl:value-of select="$myparam"/></xsl:otherwise>
		</xsl:choose>
	</xsl:template>

</xsl:stylesheet>