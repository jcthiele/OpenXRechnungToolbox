<?xml version="1.0"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template name="code.UNTDID.7143">
		<xsl:param name="myparam"/>
		<xsl:choose>
      		<xsl:when test="$myparam='AA'"><xsl:value-of select="$myparam"/> (Product version number)</xsl:when>
      		<xsl:when test="$myparam='AB'"><xsl:value-of select="$myparam"/> (Assembly)</xsl:when>
      		<xsl:when test="$myparam='AC'"><xsl:value-of select="$myparam"/> (HIBC (Health Industry Bar Code))</xsl:when>
      		<xsl:when test="$myparam='AD'"><xsl:value-of select="$myparam"/> (Cold roll number)</xsl:when>
      		<xsl:when test="$myparam='AE'"><xsl:value-of select="$myparam"/> (Hot roll number)</xsl:when>
      		<xsl:when test="$myparam='AF'"><xsl:value-of select="$myparam"/> (Slab number)</xsl:when>
      		<xsl:when test="$myparam='AG'"><xsl:value-of select="$myparam"/> (Software revision number)</xsl:when>
      		<xsl:when test="$myparam='AH'"><xsl:value-of select="$myparam"/> (UPC (Universal Product Code) Consumer package code (1-5-5))</xsl:when>
      		<xsl:when test="$myparam='AI'"><xsl:value-of select="$myparam"/> (UPC (Universal Product Code) Consumer package code (1-5-5-1))</xsl:when>
      		<xsl:when test="$myparam='AJ'"><xsl:value-of select="$myparam"/> (Sample number)</xsl:when>
      		<xsl:when test="$myparam='AK'"><xsl:value-of select="$myparam"/> (Pack number)</xsl:when>
      		<xsl:when test="$myparam='AL'"><xsl:value-of select="$myparam"/> (UPC (Universal Product Code) Shipping container code (1-2-5-5))</xsl:when>
      		<xsl:when test="$myparam='AM'"><xsl:value-of select="$myparam"/> (UPC (Universal Product Code)/EAN (European article number) Shipping container code (1-2-5-5-1))</xsl:when>
      		<xsl:when test="$myparam='AN'"><xsl:value-of select="$myparam"/> (UPC (Universal Product Code) suffix)</xsl:when>
      		<xsl:when test="$myparam='AO'"><xsl:value-of select="$myparam"/> (State label code)</xsl:when>
      		<xsl:when test="$myparam='AP'"><xsl:value-of select="$myparam"/> (Heat number)</xsl:when>
      		<xsl:when test="$myparam='AQ'"><xsl:value-of select="$myparam"/> (Coupon number)</xsl:when>
      		<xsl:when test="$myparam='AR'"><xsl:value-of select="$myparam"/> (Resource number)</xsl:when>
      		<xsl:when test="$myparam='AS'"><xsl:value-of select="$myparam"/> (Work task number)</xsl:when>
      		<xsl:when test="$myparam='AT'"><xsl:value-of select="$myparam"/> (Price look up number)</xsl:when>
      		<xsl:when test="$myparam='AU'"><xsl:value-of select="$myparam"/> (NSN (North Atlantic Treaty Organization Stock Number))</xsl:when>
      		<xsl:when test="$myparam='AV'"><xsl:value-of select="$myparam"/> (Refined product code)</xsl:when>
      		<xsl:when test="$myparam='AW'"><xsl:value-of select="$myparam"/> (Exhibit)</xsl:when>
      		<xsl:when test="$myparam='AX'"><xsl:value-of select="$myparam"/> (End item)</xsl:when>
      		<xsl:when test="$myparam='AY'"><xsl:value-of select="$myparam"/> (Federal supply classification)</xsl:when>
      		<xsl:when test="$myparam='AZ'"><xsl:value-of select="$myparam"/> (Engineering data list)</xsl:when>
      		<xsl:when test="$myparam='BA'"><xsl:value-of select="$myparam"/> (Milestone event number)</xsl:when>
      		<xsl:when test="$myparam='BB'"><xsl:value-of select="$myparam"/> (Lot number)</xsl:when>
      		<xsl:when test="$myparam='BC'"><xsl:value-of select="$myparam"/> (National drug code 4-4-2 format)</xsl:when>
      		<xsl:when test="$myparam='BD'"><xsl:value-of select="$myparam"/> (National drug code 5-3-2 format)</xsl:when>
      		<xsl:when test="$myparam='BE'"><xsl:value-of select="$myparam"/> (National drug code 5-4-1 format)</xsl:when>
      		<xsl:when test="$myparam='BF'"><xsl:value-of select="$myparam"/> (National drug code 5-4-2 format)</xsl:when>
      		<xsl:when test="$myparam='BG'"><xsl:value-of select="$myparam"/> (National drug code)</xsl:when>
      		<xsl:when test="$myparam='BH'"><xsl:value-of select="$myparam"/> (Part number)</xsl:when>
      		<xsl:when test="$myparam='BI'"><xsl:value-of select="$myparam"/> (Local Stock Number (LSN))</xsl:when>
      		<xsl:when test="$myparam='BJ'"><xsl:value-of select="$myparam"/> (Next higher assembly number)</xsl:when>
      		<xsl:when test="$myparam='BK'"><xsl:value-of select="$myparam"/> (Data category)</xsl:when>
      		<xsl:when test="$myparam='BL'"><xsl:value-of select="$myparam"/> (Control number)</xsl:when>
      		<xsl:when test="$myparam='BM'"><xsl:value-of select="$myparam"/> (Special material identification code)</xsl:when>
      		<xsl:when test="$myparam='BN'"><xsl:value-of select="$myparam"/> (Locally assigned control number)</xsl:when>
      		<xsl:when test="$myparam='BO'"><xsl:value-of select="$myparam"/> (Buyer's colour)</xsl:when>
      		<xsl:when test="$myparam='BP'"><xsl:value-of select="$myparam"/> (Buyer's part number)</xsl:when>
      		<xsl:when test="$myparam='BQ'"><xsl:value-of select="$myparam"/> (Variable measure product code)</xsl:when>
      		<xsl:when test="$myparam='BR'"><xsl:value-of select="$myparam"/> (Financial phase)</xsl:when>
      		<xsl:when test="$myparam='BS'"><xsl:value-of select="$myparam"/> (Contract breakdown)</xsl:when>
      		<xsl:when test="$myparam='BT'"><xsl:value-of select="$myparam"/> (Technical phase)</xsl:when>
      		<xsl:when test="$myparam='BU'"><xsl:value-of select="$myparam"/> (Dye lot number)</xsl:when>
      		<xsl:when test="$myparam='BV'"><xsl:value-of select="$myparam"/> (Daily statement of activities)</xsl:when>
      		<xsl:when test="$myparam='BW'"><xsl:value-of select="$myparam"/> (Periodical statement of activities within a bilaterally agreed time period)</xsl:when>
      		<xsl:when test="$myparam='BX'"><xsl:value-of select="$myparam"/> (Calendar week statement of activities)</xsl:when>
      		<xsl:when test="$myparam='BY'"><xsl:value-of select="$myparam"/> (Calendar month statement of activities)</xsl:when>
      		<xsl:when test="$myparam='BZ'"><xsl:value-of select="$myparam"/> (Original equipment number)</xsl:when>
      		<xsl:when test="$myparam='CC'"><xsl:value-of select="$myparam"/> (Industry commodity code)</xsl:when>
      		<xsl:when test="$myparam='CG'"><xsl:value-of select="$myparam"/> (Commodity grouping)</xsl:when>
      		<xsl:when test="$myparam='CL'"><xsl:value-of select="$myparam"/> (Colour number)</xsl:when>
      		<xsl:when test="$myparam='CR'"><xsl:value-of select="$myparam"/> (Contract number)</xsl:when>
      		<xsl:when test="$myparam='CV'"><xsl:value-of select="$myparam"/> (Customs article number)</xsl:when>
      		<xsl:when test="$myparam='DR'"><xsl:value-of select="$myparam"/> (Drawing revision number)</xsl:when>
      		<xsl:when test="$myparam='DW'"><xsl:value-of select="$myparam"/> (Drawing)</xsl:when>
      		<xsl:when test="$myparam='EC'"><xsl:value-of select="$myparam"/> (Engineering change level)</xsl:when>
      		<xsl:when test="$myparam='EF'"><xsl:value-of select="$myparam"/> (Material code)</xsl:when>
      		<xsl:when test="$myparam='EN'"><xsl:value-of select="$myparam"/> (International Article Numbering Association (EAN))</xsl:when>
      		<xsl:when test="$myparam='FS'"><xsl:value-of select="$myparam"/> (Fish species)</xsl:when>
      		<xsl:when test="$myparam='GB'"><xsl:value-of select="$myparam"/> (Buyer's internal product group code)</xsl:when>
      		<xsl:when test="$myparam='GN'"><xsl:value-of select="$myparam"/> (National product group code)</xsl:when>
      		<xsl:when test="$myparam='GS'"><xsl:value-of select="$myparam"/> (General specification number)</xsl:when>
      		<xsl:when test="$myparam='HS'"><xsl:value-of select="$myparam"/> (Harmonised system)</xsl:when>
      		<xsl:when test="$myparam='IB'"><xsl:value-of select="$myparam"/> (ISBN (International Standard Book Number))</xsl:when>
      		<xsl:when test="$myparam='IN'"><xsl:value-of select="$myparam"/> (Buyer's item number)</xsl:when>
      		<xsl:when test="$myparam='IS'"><xsl:value-of select="$myparam"/> (ISSN (International Standard Serial Number))</xsl:when>
      		<xsl:when test="$myparam='IT'"><xsl:value-of select="$myparam"/> (Buyer's style number)</xsl:when>
      		<xsl:when test="$myparam='IZ'"><xsl:value-of select="$myparam"/> (Buyer's size code)</xsl:when>
      		<xsl:when test="$myparam='MA'"><xsl:value-of select="$myparam"/> (Machine number)</xsl:when>
      		<xsl:when test="$myparam='MF'"><xsl:value-of select="$myparam"/> (Manufacturer's (producer's) article number)</xsl:when>
      		<xsl:when test="$myparam='MN'"><xsl:value-of select="$myparam"/> (Model number)</xsl:when>
      		<xsl:when test="$myparam='MP'"><xsl:value-of select="$myparam"/> (Product/service identification number)</xsl:when>
      		<xsl:when test="$myparam='NB'"><xsl:value-of select="$myparam"/> (Batch number)</xsl:when>
      		<xsl:when test="$myparam='ON'"><xsl:value-of select="$myparam"/> (Customer order number)</xsl:when>
      		<xsl:when test="$myparam='PD'"><xsl:value-of select="$myparam"/> (Part number description)</xsl:when>
      		<xsl:when test="$myparam='PL'"><xsl:value-of select="$myparam"/> (Purchaser's order line number)</xsl:when>
      		<xsl:when test="$myparam='PO'"><xsl:value-of select="$myparam"/> (Purchase order number)</xsl:when>
      		<xsl:when test="$myparam='PV'"><xsl:value-of select="$myparam"/> (Promotional variant number)</xsl:when>
      		<xsl:when test="$myparam='QS'"><xsl:value-of select="$myparam"/> (Buyer's qualifier for size)</xsl:when>
      		<xsl:when test="$myparam='RC'"><xsl:value-of select="$myparam"/> (Returnable container number)</xsl:when>
      		<xsl:when test="$myparam='RN'"><xsl:value-of select="$myparam"/> (Release number)</xsl:when>
      		<xsl:when test="$myparam='RU'"><xsl:value-of select="$myparam"/> (Run number)</xsl:when>
      		<xsl:when test="$myparam='RY'"><xsl:value-of select="$myparam"/> (Record keeping of model year)</xsl:when>
      		<xsl:when test="$myparam='SA'"><xsl:value-of select="$myparam"/> (Supplier's article number)</xsl:when>
      		<xsl:when test="$myparam='SG'"><xsl:value-of select="$myparam"/> (Standard group of products (mixed assortment))</xsl:when>
      		<xsl:when test="$myparam='SK'"><xsl:value-of select="$myparam"/> (SKU (Stock keeping unit))</xsl:when>
      		<xsl:when test="$myparam='SN'"><xsl:value-of select="$myparam"/> (Serial number)</xsl:when>
      		<xsl:when test="$myparam='SRS'"><xsl:value-of select="$myparam"/> (RSK number)</xsl:when>
      		<xsl:when test="$myparam='SRT'"><xsl:value-of select="$myparam"/> (IFLS (Institut Francais du Libre Service) 5 digit product classification code)</xsl:when>
      		<xsl:when test="$myparam='SRU'"><xsl:value-of select="$myparam"/> (IFLS (Institut Francais du Libre Service) 9 digit product classification code)</xsl:when>
      		<xsl:when test="$myparam='SRV'"><xsl:value-of select="$myparam"/> (GS1 Global Trade Item Number)</xsl:when>
      		<xsl:when test="$myparam='SRW'"><xsl:value-of select="$myparam"/> (EDIS (Energy Data Identification System))</xsl:when>
      		<xsl:when test="$myparam='SRX'"><xsl:value-of select="$myparam"/> (Slaughter number)</xsl:when>
      		<xsl:when test="$myparam='SRY'"><xsl:value-of select="$myparam"/> (Official animal number)</xsl:when>
      		<xsl:when test="$myparam='SRZ'"><xsl:value-of select="$myparam"/> (Harmonized tariff schedule)</xsl:when>
      		<xsl:when test="$myparam='SS'"><xsl:value-of select="$myparam"/> (Supplier's supplier article number)</xsl:when>
      		<xsl:when test="$myparam='SSA'"><xsl:value-of select="$myparam"/> (46 Level DOT Code)</xsl:when>
      		<xsl:when test="$myparam='SSB'"><xsl:value-of select="$myparam"/> (Airline Tariff 6D)</xsl:when>
      		<xsl:when test="$myparam='SSC'"><xsl:value-of select="$myparam"/> (Title 49 Code of Federal Regulations)</xsl:when>
      		<xsl:when test="$myparam='SSD'"><xsl:value-of select="$myparam"/> (International Civil Aviation Administration code)</xsl:when>
      		<xsl:when test="$myparam='SSE'"><xsl:value-of select="$myparam"/> (Hazardous Materials ID DOT)</xsl:when>
      		<xsl:when test="$myparam='SSF'"><xsl:value-of select="$myparam"/> (Endorsement)</xsl:when>
      		<xsl:when test="$myparam='SSG'"><xsl:value-of select="$myparam"/> (Air Force Regulation 71-4)</xsl:when>
      		<xsl:when test="$myparam='SSH'"><xsl:value-of select="$myparam"/> (Breed)</xsl:when>
      		<xsl:when test="$myparam='SSI'"><xsl:value-of select="$myparam"/> (Chemical Abstract Service (CAS) registry number)</xsl:when>
      		<xsl:when test="$myparam='SSJ'"><xsl:value-of select="$myparam"/> (Engine model designation)</xsl:when>
      		<xsl:when test="$myparam='SSK'"><xsl:value-of select="$myparam"/> (Institutional Meat Purchase Specifications (IMPS) Number)</xsl:when>
      		<xsl:when test="$myparam='SSL'"><xsl:value-of select="$myparam"/> (Price Look-Up code (PLU))</xsl:when>
      		<xsl:when test="$myparam='SSM'"><xsl:value-of select="$myparam"/> (International Maritime Organization (IMO) Code)</xsl:when>
      		<xsl:when test="$myparam='SSN'"><xsl:value-of select="$myparam"/> (Bureau of Explosives 600-A (rail))</xsl:when>
      		<xsl:when test="$myparam='SSO'"><xsl:value-of select="$myparam"/> (United Nations Dangerous Goods List)</xsl:when>
      		<xsl:when test="$myparam='SSP'"><xsl:value-of select="$myparam"/> (International Code of Botanical Nomenclature (ICBN))</xsl:when>
      		<xsl:when test="$myparam='SSQ'"><xsl:value-of select="$myparam"/> (International Code of Zoological Nomenclature (ICZN))</xsl:when>
      		<xsl:when test="$myparam='SSR'"><xsl:value-of select="$myparam"/> (International Code of Nomenclature for Cultivated Plants (ICNCP))</xsl:when>
      		<xsl:when test="$myparam='SSS'"><xsl:value-of select="$myparam"/> (Distributor’s article identifier)</xsl:when>
      		<xsl:when test="$myparam='SST'"><xsl:value-of select="$myparam"/> (Norwegian Classification system ENVA)</xsl:when>
      		<xsl:when test="$myparam='SSU'"><xsl:value-of select="$myparam"/> (Supplier assigned classification)</xsl:when>
      		<xsl:when test="$myparam='SSV'"><xsl:value-of select="$myparam"/> (Mexican classification system AMECE)</xsl:when>
      		<xsl:when test="$myparam='SSW'"><xsl:value-of select="$myparam"/> (German classification system CCG)</xsl:when>
      		<xsl:when test="$myparam='SSX'"><xsl:value-of select="$myparam"/> (Finnish classification system EANFIN)</xsl:when>
      		<xsl:when test="$myparam='SSY'"><xsl:value-of select="$myparam"/> (Canadian classification system ICC)</xsl:when>
      		<xsl:when test="$myparam='SSZ'"><xsl:value-of select="$myparam"/> (French classification system IFLS5)</xsl:when>
      		<xsl:when test="$myparam='ST'"><xsl:value-of select="$myparam"/> (Style number)</xsl:when>
      		<xsl:when test="$myparam='STA'"><xsl:value-of select="$myparam"/> (Dutch classification system CBL)</xsl:when>
      		<xsl:when test="$myparam='STB'"><xsl:value-of select="$myparam"/> (Japanese classification system JICFS)</xsl:when>
      		<xsl:when test="$myparam='STC'"><xsl:value-of select="$myparam"/> (European Union dairy subsidy eligibility classification)</xsl:when>
      		<xsl:when test="$myparam='STD'"><xsl:value-of select="$myparam"/> (GS1 Spain classification system)</xsl:when>
      		<xsl:when test="$myparam='STE'"><xsl:value-of select="$myparam"/> (GS1 Poland classification system)</xsl:when>
      		<xsl:when test="$myparam='STF'"><xsl:value-of select="$myparam"/> (Federal Agency on Technical Regulating and Metrology of the Russian Federation)</xsl:when>
      		<xsl:when test="$myparam='STG'"><xsl:value-of select="$myparam"/> (Efficient Consumer Response (ECR) Austria classification system)</xsl:when>
      		<xsl:when test="$myparam='STH'"><xsl:value-of select="$myparam"/> (GS1 Italy classification system)</xsl:when>
      		<xsl:when test="$myparam='STI'"><xsl:value-of select="$myparam"/> (CPV (Common Procurement Vocabulary))</xsl:when>
      		<xsl:when test="$myparam='STJ'"><xsl:value-of select="$myparam"/> (IFDA (International Foodservice Distributors Association))</xsl:when>
      		<xsl:when test="$myparam='STK'"><xsl:value-of select="$myparam"/> (AHFS (American Hospital Formulary Service) pharmacologic - therapeutic classification)</xsl:when>
      		<xsl:when test="$myparam='STL'"><xsl:value-of select="$myparam"/> (ATC (Anatomical Therapeutic Chemical) classification system)</xsl:when>
      		<xsl:when test="$myparam='STM'"><xsl:value-of select="$myparam"/> (CLADIMED (Classification des Dispositifs Médicaux))</xsl:when>
      		<xsl:when test="$myparam='STN'"><xsl:value-of select="$myparam"/> (CMDR (Canadian Medical Device Regulations) classification system)</xsl:when>
      		<xsl:when test="$myparam='STO'"><xsl:value-of select="$myparam"/> (CNDM (Classificazione Nazionale dei Dispositivi Medici))</xsl:when>
      		<xsl:when test="$myparam='STP'"><xsl:value-of select="$myparam"/> (UK DM&amp;D (Dictionary of Medicines &amp; Devices) standard coding scheme)</xsl:when>
      		<xsl:when test="$myparam='STQ'"><xsl:value-of select="$myparam"/> (eCl@ss)</xsl:when>
      		<xsl:when test="$myparam='STR'"><xsl:value-of select="$myparam"/> (EDMA (European Diagnostic Manufacturers Association) Products Classification)</xsl:when>
      		<xsl:when test="$myparam='STS'"><xsl:value-of select="$myparam"/> (EGAR (European Generic Article Register))</xsl:when>
      		<xsl:when test="$myparam='STT'"><xsl:value-of select="$myparam"/> (GMDN (Global Medical Devices Nomenclature))</xsl:when>
      		<xsl:when test="$myparam='STU'"><xsl:value-of select="$myparam"/> (GPI (Generic Product Identifier))</xsl:when>
      		<xsl:when test="$myparam='STV'"><xsl:value-of select="$myparam"/> (HCPCS (Healthcare Common Procedure Coding System))</xsl:when>
      		<xsl:when test="$myparam='STW'"><xsl:value-of select="$myparam"/> (ICPS (International Classification for Patient Safety))</xsl:when>
      		<xsl:when test="$myparam='STX'"><xsl:value-of select="$myparam"/> (MedDRA (Medical Dictionary for Regulatory Activities))</xsl:when>
      		<xsl:when test="$myparam='STY'"><xsl:value-of select="$myparam"/> (Medical Columbus)</xsl:when>
      		<xsl:when test="$myparam='STZ'"><xsl:value-of select="$myparam"/> (NAPCS (North American Product Classification System))</xsl:when>
      		<xsl:when test="$myparam='SUA'"><xsl:value-of select="$myparam"/> (NHS (National Health Services) eClass)</xsl:when>
      		<xsl:when test="$myparam='SUB'"><xsl:value-of select="$myparam"/> (US FDA (Food and Drug Administration) Product Code Classification Database)</xsl:when>
      		<xsl:when test="$myparam='SUC'"><xsl:value-of select="$myparam"/> (SNOMED CT (Systematized Nomenclature of Medicine-Clinical Terms))</xsl:when>
      		<xsl:when test="$myparam='SUD'"><xsl:value-of select="$myparam"/> (UMDNS (Universal Medical Device Nomenclature System))</xsl:when>
      		<xsl:when test="$myparam='SUE'"><xsl:value-of select="$myparam"/> (GS1 Global Returnable Asset Identifier, non-serialised)</xsl:when>
      		<xsl:when test="$myparam='SUF'"><xsl:value-of select="$myparam"/> (IMEI)</xsl:when>
      		<xsl:when test="$myparam='SUG'"><xsl:value-of select="$myparam"/> (Waste Type (EMSA))</xsl:when>
      		<xsl:when test="$myparam='SUH'"><xsl:value-of select="$myparam"/> (Ship's store classification type)</xsl:when>
      		<xsl:when test="$myparam='SUI'"><xsl:value-of select="$myparam"/> (Emergency fire code)</xsl:when>
      		<xsl:when test="$myparam='SUJ'"><xsl:value-of select="$myparam"/> (Emergency spillage code)</xsl:when>
      		<xsl:when test="$myparam='SUK'"><xsl:value-of select="$myparam"/> (IMDG packing group)</xsl:when>
      		<xsl:when test="$myparam='SUL'"><xsl:value-of select="$myparam"/> (MARPOL Code IBC)</xsl:when>
      		<xsl:when test="$myparam='SUM'"><xsl:value-of select="$myparam"/> (IMDG subsidiary risk class)</xsl:when>
      		<xsl:when test="$myparam='TG'"><xsl:value-of select="$myparam"/> (Transport group number)</xsl:when>
      		<xsl:when test="$myparam='TSN'"><xsl:value-of select="$myparam"/> (Taxonomic Serial Number)</xsl:when>
      		<xsl:when test="$myparam='TSO'"><xsl:value-of select="$myparam"/> (IMDG main hazard class)</xsl:when>
      		<xsl:when test="$myparam='TSP'"><xsl:value-of select="$myparam"/> (EU Combined Nomenclature)</xsl:when>
      		<xsl:when test="$myparam='TSQ'"><xsl:value-of select="$myparam"/> (Therapeutic classification number)</xsl:when>
      		<xsl:when test="$myparam='TSR'"><xsl:value-of select="$myparam"/> (European Waste Catalogue)</xsl:when>
      		<xsl:when test="$myparam='TSS'"><xsl:value-of select="$myparam"/> (Price grouping code)</xsl:when>
      		<xsl:when test="$myparam='TST'"><xsl:value-of select="$myparam"/> (UNSPSC)</xsl:when>
      		<xsl:when test="$myparam='UA'"><xsl:value-of select="$myparam"/> (Ultimate customer's article number)</xsl:when>
      		<xsl:when test="$myparam='UP'"><xsl:value-of select="$myparam"/> (UPC (Universal product code))</xsl:when>
      		<xsl:when test="$myparam='VN'"><xsl:value-of select="$myparam"/> (Vendor item number)</xsl:when>
      		<xsl:when test="$myparam='VP'"><xsl:value-of select="$myparam"/> (Vendor's (seller's) part number)</xsl:when>
      		<xsl:when test="$myparam='VS'"><xsl:value-of select="$myparam"/> (Vendor's supplemental item number)</xsl:when>
      		<xsl:when test="$myparam='VX'"><xsl:value-of select="$myparam"/> (Vendor specification number)</xsl:when>
      		<xsl:when test="$myparam='ZZZ'"><xsl:value-of select="$myparam"/> (Mutually defined)</xsl:when>
   			<xsl:otherwise><xsl:value-of select="$myparam"/></xsl:otherwise>
		</xsl:choose>
	</xsl:template>

</xsl:stylesheet>