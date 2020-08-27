<?xml version="1.0"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
   
    <xsl:import href="UNECE-RE-20.xsl" /> 
   
	<xsl:template name="code.rec21">
		<xsl:param name="myparam"/>
		<xsl:choose>
			<xsl:when test="$myparam='X1A'"><xsl:value-of select="$myparam"/> (Drum, steel)</xsl:when>
			<xsl:when test="$myparam='X1B'"><xsl:value-of select="$myparam"/> (Drum, aluminium)</xsl:when>
			<xsl:when test="$myparam='X1D'"><xsl:value-of select="$myparam"/> (Drum, plywood)</xsl:when>
			<xsl:when test="$myparam='X1F'"><xsl:value-of select="$myparam"/> (Container, flexible)</xsl:when>
			<xsl:when test="$myparam='X1G'"><xsl:value-of select="$myparam"/> (Drum, fibre)</xsl:when>
			<xsl:when test="$myparam='X1W'"><xsl:value-of select="$myparam"/> (Drum, wooden)</xsl:when>
			<xsl:when test="$myparam='X2C'"><xsl:value-of select="$myparam"/> (Barrel, wooden)</xsl:when>
			<xsl:when test="$myparam='X3A'"><xsl:value-of select="$myparam"/> (Jerrican, steel)</xsl:when>
			<xsl:when test="$myparam='X3H'"><xsl:value-of select="$myparam"/> (Jerrican, plastic)</xsl:when>
			<xsl:when test="$myparam='X43'"><xsl:value-of select="$myparam"/> (Bag, super bulk)</xsl:when>
			<xsl:when test="$myparam='X44'"><xsl:value-of select="$myparam"/> (Bag, polybag)</xsl:when>
			<xsl:when test="$myparam='X4A'"><xsl:value-of select="$myparam"/> (Box, steel)</xsl:when>
			<xsl:when test="$myparam='X4B'"><xsl:value-of select="$myparam"/> (Box, aluminium)</xsl:when>
			<xsl:when test="$myparam='X4C'"><xsl:value-of select="$myparam"/> (Box, natural wood)</xsl:when>
			<xsl:when test="$myparam='X4D'"><xsl:value-of select="$myparam"/> (Box, plywood)</xsl:when>
			<xsl:when test="$myparam='X4F'"><xsl:value-of select="$myparam"/> (Box, reconstituted wood)</xsl:when>
			<xsl:when test="$myparam='X4G'"><xsl:value-of select="$myparam"/> (Box, fibreboard)</xsl:when>
			<xsl:when test="$myparam='X4H'"><xsl:value-of select="$myparam"/> (Box, plastic)</xsl:when>
			<xsl:when test="$myparam='X5H'"><xsl:value-of select="$myparam"/> (Bag, woven plastic)</xsl:when>
			<xsl:when test="$myparam='X5L'"><xsl:value-of select="$myparam"/> (Bag, textile)</xsl:when>
			<xsl:when test="$myparam='X5M'"><xsl:value-of select="$myparam"/> (Bag, paper)</xsl:when>
			<xsl:when test="$myparam='X6H'"><xsl:value-of select="$myparam"/> (Composite packaging, plastic receptacle)</xsl:when>
			<xsl:when test="$myparam='X6P'"><xsl:value-of select="$myparam"/> (Composite packaging, glass receptacle)</xsl:when>
			<xsl:when test="$myparam='X7A'"><xsl:value-of select="$myparam"/> (Case, car)</xsl:when>
			<xsl:when test="$myparam='X7B'"><xsl:value-of select="$myparam"/> (Case, wooden)</xsl:when>
			<xsl:when test="$myparam='X8A'"><xsl:value-of select="$myparam"/> (Pallet, wooden)</xsl:when>
			<xsl:when test="$myparam='X8B'"><xsl:value-of select="$myparam"/> (Crate, wooden)</xsl:when>
			<xsl:when test="$myparam='X8C'"><xsl:value-of select="$myparam"/> (Bundle, wooden)</xsl:when>
			<xsl:when test="$myparam='XAA'"><xsl:value-of select="$myparam"/> (Intermediate bulk container, rigid plastic)</xsl:when>
			<xsl:when test="$myparam='XAB'"><xsl:value-of select="$myparam"/> (Receptacle, fibre)</xsl:when>
			<xsl:when test="$myparam='XAC'"><xsl:value-of select="$myparam"/> (Receptacle, paper)</xsl:when>
			<xsl:when test="$myparam='XAD'"><xsl:value-of select="$myparam"/> (Receptacle, wooden)</xsl:when>
			<xsl:when test="$myparam='XAE'"><xsl:value-of select="$myparam"/> (Aerosol)</xsl:when>
			<xsl:when test="$myparam='XAF'"><xsl:value-of select="$myparam"/> (Pallet, modular, collars 80cms * 60cms)</xsl:when>
			<xsl:when test="$myparam='XAG'"><xsl:value-of select="$myparam"/> (Pallet, shrinkwrapped)</xsl:when>
			<xsl:when test="$myparam='XAH'"><xsl:value-of select="$myparam"/> (Pallet, 100cms * 110cms)</xsl:when>
			<xsl:when test="$myparam='XAI'"><xsl:value-of select="$myparam"/> (Clamshell)</xsl:when>
			<xsl:when test="$myparam='XAJ'"><xsl:value-of select="$myparam"/> (Cone)</xsl:when>
			<xsl:when test="$myparam='XAL'"><xsl:value-of select="$myparam"/> (Ball)</xsl:when>
			<xsl:when test="$myparam='XAM'"><xsl:value-of select="$myparam"/> (Ampoule, non-protected)</xsl:when>
			<xsl:when test="$myparam='XAP'"><xsl:value-of select="$myparam"/> (Ampoule, protected)</xsl:when>
			<xsl:when test="$myparam='XAT'"><xsl:value-of select="$myparam"/> (Atomizer)</xsl:when>
			<xsl:when test="$myparam='XAV'"><xsl:value-of select="$myparam"/> (Capsule)</xsl:when>
			<xsl:when test="$myparam='XB4'"><xsl:value-of select="$myparam"/> (Belt)</xsl:when>
			<xsl:when test="$myparam='XBA'"><xsl:value-of select="$myparam"/> (Barrel)</xsl:when>
			<xsl:when test="$myparam='XBB'"><xsl:value-of select="$myparam"/> (Bobbin)</xsl:when>
			<xsl:when test="$myparam='XBC'"><xsl:value-of select="$myparam"/> (Bottlecrate / bottlerack)</xsl:when>
			<xsl:when test="$myparam='XBD'"><xsl:value-of select="$myparam"/> (Board)</xsl:when>
			<xsl:when test="$myparam='XBE'"><xsl:value-of select="$myparam"/> (Bundle)</xsl:when>
			<xsl:when test="$myparam='XBF'"><xsl:value-of select="$myparam"/> (Balloon, non-protected)</xsl:when>
			<xsl:when test="$myparam='XBG'"><xsl:value-of select="$myparam"/> (Bag)</xsl:when>
			<xsl:when test="$myparam='XBH'"><xsl:value-of select="$myparam"/> (Bunch)</xsl:when>
			<xsl:when test="$myparam='XBI'"><xsl:value-of select="$myparam"/> (Bin)</xsl:when>
			<xsl:when test="$myparam='XBJ'"><xsl:value-of select="$myparam"/> (Bucket)</xsl:when>
			<xsl:when test="$myparam='XBK'"><xsl:value-of select="$myparam"/> (Basket)</xsl:when>
			<xsl:when test="$myparam='XBL'"><xsl:value-of select="$myparam"/> (Bale, compressed)</xsl:when>
			<xsl:when test="$myparam='XBM'"><xsl:value-of select="$myparam"/> (Basin)</xsl:when>
			<xsl:when test="$myparam='XBN'"><xsl:value-of select="$myparam"/> (Bale, non-compressed)</xsl:when>
			<xsl:when test="$myparam='XBO'"><xsl:value-of select="$myparam"/> (Bottle, non-protected, cylindrical)</xsl:when>
			<xsl:when test="$myparam='XBP'"><xsl:value-of select="$myparam"/> (Balloon, protected)</xsl:when>
			<xsl:when test="$myparam='XBQ'"><xsl:value-of select="$myparam"/> (Bottle, protected cylindrical)</xsl:when>
			<xsl:when test="$myparam='XBR'"><xsl:value-of select="$myparam"/> (Bar)</xsl:when>
			<xsl:when test="$myparam='XBS'"><xsl:value-of select="$myparam"/> (Bottle, non-protected, bulbous)</xsl:when>
			<xsl:when test="$myparam='XBT'"><xsl:value-of select="$myparam"/> (Bolt)</xsl:when>
			<xsl:when test="$myparam='XBU'"><xsl:value-of select="$myparam"/> (Butt)</xsl:when>
			<xsl:when test="$myparam='XBV'"><xsl:value-of select="$myparam"/> (Bottle, protected bulbous)</xsl:when>
			<xsl:when test="$myparam='XBW'"><xsl:value-of select="$myparam"/> (Box, for liquids)</xsl:when>
			<xsl:when test="$myparam='XBX'"><xsl:value-of select="$myparam"/> (Box)</xsl:when>
			<xsl:when test="$myparam='XBY'"><xsl:value-of select="$myparam"/> (Board, in bundle/bunch/truss)</xsl:when>
			<xsl:when test="$myparam='XBZ'"><xsl:value-of select="$myparam"/> (Bars, in bundle/bunch/truss)</xsl:when>
			<xsl:when test="$myparam='XCA'"><xsl:value-of select="$myparam"/> (Can, rectangular)</xsl:when>
			<xsl:when test="$myparam='XCB'"><xsl:value-of select="$myparam"/> (Crate, beer)</xsl:when>
			<xsl:when test="$myparam='XCC'"><xsl:value-of select="$myparam"/> (Churn)</xsl:when>
			<xsl:when test="$myparam='XCD'"><xsl:value-of select="$myparam"/> (Can, with handle and spout)</xsl:when>
			<xsl:when test="$myparam='XCE'"><xsl:value-of select="$myparam"/> (Creel)</xsl:when>
			<xsl:when test="$myparam='XCF'"><xsl:value-of select="$myparam"/> (Coffer)</xsl:when>
			<xsl:when test="$myparam='XCG'"><xsl:value-of select="$myparam"/> (Cage)</xsl:when>
			<xsl:when test="$myparam='XCH'"><xsl:value-of select="$myparam"/> (Chest)</xsl:when>
			<xsl:when test="$myparam='XCI'"><xsl:value-of select="$myparam"/> (Canister)</xsl:when>
			<xsl:when test="$myparam='XCJ'"><xsl:value-of select="$myparam"/> (Coffin)</xsl:when>
			<xsl:when test="$myparam='XCK'"><xsl:value-of select="$myparam"/> (Cask)</xsl:when>
			<xsl:when test="$myparam='XCL'"><xsl:value-of select="$myparam"/> (Coil)</xsl:when>
			<xsl:when test="$myparam='XCM'"><xsl:value-of select="$myparam"/> (Card)</xsl:when>
			<xsl:when test="$myparam='XCN'"><xsl:value-of select="$myparam"/> (Container, not otherwise specified as transport equipment)</xsl:when>
			<xsl:when test="$myparam='XCO'"><xsl:value-of select="$myparam"/> (Carboy, non-protected)</xsl:when>
			<xsl:when test="$myparam='XCP'"><xsl:value-of select="$myparam"/> (Carboy, protected)</xsl:when>
			<xsl:when test="$myparam='XCQ'"><xsl:value-of select="$myparam"/> (Cartridge)</xsl:when>
			<xsl:when test="$myparam='XCR'"><xsl:value-of select="$myparam"/> (Crate)</xsl:when>
			<xsl:when test="$myparam='XCS'"><xsl:value-of select="$myparam"/> (Case)</xsl:when>
			<xsl:when test="$myparam='XCT'"><xsl:value-of select="$myparam"/> (Carton)</xsl:when>
			<xsl:when test="$myparam='XCU'"><xsl:value-of select="$myparam"/> (Cup)</xsl:when>
			<xsl:when test="$myparam='XCV'"><xsl:value-of select="$myparam"/> (Cover)</xsl:when>
			<xsl:when test="$myparam='XCW'"><xsl:value-of select="$myparam"/> (Cage, roll)</xsl:when>
			<xsl:when test="$myparam='XCX'"><xsl:value-of select="$myparam"/> (Can, cylindrical)</xsl:when>
			<xsl:when test="$myparam='XCY'"><xsl:value-of select="$myparam"/> (Cylinder)</xsl:when>
			<xsl:when test="$myparam='XCZ'"><xsl:value-of select="$myparam"/> (Canvas)</xsl:when>
			<xsl:when test="$myparam='XDA'"><xsl:value-of select="$myparam"/> (Crate, multiple layer, plastic)</xsl:when>
			<xsl:when test="$myparam='XDB'"><xsl:value-of select="$myparam"/> (Crate, multiple layer, wooden)</xsl:when>
			<xsl:when test="$myparam='XDC'"><xsl:value-of select="$myparam"/> (Crate, multiple layer, cardboard)</xsl:when>
			<xsl:when test="$myparam='XDG'"><xsl:value-of select="$myparam"/> (Cage, Commonwealth Handling Equipment Pool  (CHEP))</xsl:when>
			<xsl:when test="$myparam='XDH'"><xsl:value-of select="$myparam"/> (Box, Commonwealth Handling Equipment Pool (CHEP), Eurobox)</xsl:when>
			<xsl:when test="$myparam='XDI'"><xsl:value-of select="$myparam"/> (Drum, iron)</xsl:when>
			<xsl:when test="$myparam='XDJ'"><xsl:value-of select="$myparam"/> (Demijohn, non-protected)</xsl:when>
			<xsl:when test="$myparam='XDK'"><xsl:value-of select="$myparam"/> (Crate, bulk, cardboard)</xsl:when>
			<xsl:when test="$myparam='XDL'"><xsl:value-of select="$myparam"/> (Crate, bulk, plastic)</xsl:when>
			<xsl:when test="$myparam='XDM'"><xsl:value-of select="$myparam"/> (Crate, bulk, wooden)</xsl:when>
			<xsl:when test="$myparam='XDN'"><xsl:value-of select="$myparam"/> (Dispenser)</xsl:when>
			<xsl:when test="$myparam='XDP'"><xsl:value-of select="$myparam"/> (Demijohn, protected)</xsl:when>
			<xsl:when test="$myparam='XDR'"><xsl:value-of select="$myparam"/> (Drum)</xsl:when>
			<xsl:when test="$myparam='XDS'"><xsl:value-of select="$myparam"/> (Tray, one layer no cover, plastic)</xsl:when>
			<xsl:when test="$myparam='XDT'"><xsl:value-of select="$myparam"/> (Tray, one layer no cover, wooden)</xsl:when>
			<xsl:when test="$myparam='XDU'"><xsl:value-of select="$myparam"/> (Tray, one layer no cover, polystyrene)</xsl:when>
			<xsl:when test="$myparam='XDV'"><xsl:value-of select="$myparam"/> (Tray, one layer no cover, cardboard)</xsl:when>
			<xsl:when test="$myparam='XDW'"><xsl:value-of select="$myparam"/> (Tray, two layers no cover, plastic tray)</xsl:when>
			<xsl:when test="$myparam='XDX'"><xsl:value-of select="$myparam"/> (Tray, two layers no cover, wooden)</xsl:when>
			<xsl:when test="$myparam='XDY'"><xsl:value-of select="$myparam"/> (Tray, two layers no cover, cardboard)</xsl:when>
			<xsl:when test="$myparam='XEC'"><xsl:value-of select="$myparam"/> (Bag, plastic)</xsl:when>
			<xsl:when test="$myparam='XED'"><xsl:value-of select="$myparam"/> (Case, with pallet base)</xsl:when>
			<xsl:when test="$myparam='XEE'"><xsl:value-of select="$myparam"/> (Case, with pallet base, wooden)</xsl:when>
			<xsl:when test="$myparam='XEF'"><xsl:value-of select="$myparam"/> (Case, with pallet base, cardboard)</xsl:when>
			<xsl:when test="$myparam='XEG'"><xsl:value-of select="$myparam"/> (Case, with pallet base, plastic)</xsl:when>
			<xsl:when test="$myparam='XEH'"><xsl:value-of select="$myparam"/> (Case, with pallet base, metal)</xsl:when>
			<xsl:when test="$myparam='XEI'"><xsl:value-of select="$myparam"/> (Case, isothermic)</xsl:when>
			<xsl:when test="$myparam='XEN'"><xsl:value-of select="$myparam"/> (Envelope)</xsl:when>
			<xsl:when test="$myparam='XFB'"><xsl:value-of select="$myparam"/> (Flexibag)</xsl:when>
			<xsl:when test="$myparam='XFC'"><xsl:value-of select="$myparam"/> (Crate, fruit)</xsl:when>
			<xsl:when test="$myparam='XFD'"><xsl:value-of select="$myparam"/> (Crate, framed)</xsl:when>
			<xsl:when test="$myparam='XFE'"><xsl:value-of select="$myparam"/> (Flexitank)</xsl:when>
			<xsl:when test="$myparam='XFI'"><xsl:value-of select="$myparam"/> (Firkin)</xsl:when>
			<xsl:when test="$myparam='XFL'"><xsl:value-of select="$myparam"/> (Flask)</xsl:when>
			<xsl:when test="$myparam='XFO'"><xsl:value-of select="$myparam"/> (Footlocker)</xsl:when>
			<xsl:when test="$myparam='XFP'"><xsl:value-of select="$myparam"/> (Filmpack)</xsl:when>
			<xsl:when test="$myparam='XFR'"><xsl:value-of select="$myparam"/> (Frame)</xsl:when>
			<xsl:when test="$myparam='XFT'"><xsl:value-of select="$myparam"/> (Foodtainer)</xsl:when>
			<xsl:when test="$myparam='XFW'"><xsl:value-of select="$myparam"/> (Cart, flatbed)</xsl:when>
			<xsl:when test="$myparam='XFX'"><xsl:value-of select="$myparam"/> (Bag, flexible container)</xsl:when>
			<xsl:when test="$myparam='XGB'"><xsl:value-of select="$myparam"/> (Bottle, gas)</xsl:when>
			<xsl:when test="$myparam='XGI'"><xsl:value-of select="$myparam"/> (Girder)</xsl:when>
			<xsl:when test="$myparam='XGL'"><xsl:value-of select="$myparam"/> (Container, gallon)</xsl:when>
			<xsl:when test="$myparam='XGR'"><xsl:value-of select="$myparam"/> (Receptacle, glass)</xsl:when>
			<xsl:when test="$myparam='XGU'"><xsl:value-of select="$myparam"/> (Tray, containing horizontally stacked flat items)</xsl:when>
			<xsl:when test="$myparam='XGY'"><xsl:value-of select="$myparam"/> (Bag, gunny)</xsl:when>
			<xsl:when test="$myparam='XGZ'"><xsl:value-of select="$myparam"/> (Girders, in bundle/bunch/truss)</xsl:when>
			<xsl:when test="$myparam='XHA'"><xsl:value-of select="$myparam"/> (Basket, with handle, plastic)</xsl:when>
			<xsl:when test="$myparam='XHB'"><xsl:value-of select="$myparam"/> (Basket, with handle, wooden)</xsl:when>
			<xsl:when test="$myparam='XHC'"><xsl:value-of select="$myparam"/> (Basket, with handle, cardboard)</xsl:when>
			<xsl:when test="$myparam='XHG'"><xsl:value-of select="$myparam"/> (Hogshead)</xsl:when>
			<xsl:when test="$myparam='XHN'"><xsl:value-of select="$myparam"/> (Hanger)</xsl:when>
			<xsl:when test="$myparam='XHR'"><xsl:value-of select="$myparam"/> (Hamper)</xsl:when>
			<xsl:when test="$myparam='XIA'"><xsl:value-of select="$myparam"/> (Package, display, wooden)</xsl:when>
			<xsl:when test="$myparam='XIB'"><xsl:value-of select="$myparam"/> (Package, display, cardboard)</xsl:when>
			<xsl:when test="$myparam='XIC'"><xsl:value-of select="$myparam"/> (Package, display, plastic)</xsl:when>
			<xsl:when test="$myparam='XID'"><xsl:value-of select="$myparam"/> (Package, display, metal)</xsl:when>
			<xsl:when test="$myparam='XIE'"><xsl:value-of select="$myparam"/> (Package, show)</xsl:when>
			<xsl:when test="$myparam='XIF'"><xsl:value-of select="$myparam"/> (Package, flow)</xsl:when>
			<xsl:when test="$myparam='XIG'"><xsl:value-of select="$myparam"/> (Package, paper wrapped)</xsl:when>
			<xsl:when test="$myparam='XIH'"><xsl:value-of select="$myparam"/> (Drum, plastic)</xsl:when>
			<xsl:when test="$myparam='XIK'"><xsl:value-of select="$myparam"/> (Package, cardboard, with bottle grip-holes)</xsl:when>
			<xsl:when test="$myparam='XIL'"><xsl:value-of select="$myparam"/> (Tray, rigid, lidded stackable (CEN TS 14482:2002))</xsl:when>
			<xsl:when test="$myparam='XIN'"><xsl:value-of select="$myparam"/> (Ingot)</xsl:when>
			<xsl:when test="$myparam='XIZ'"><xsl:value-of select="$myparam"/> (Ingots, in bundle/bunch/truss)</xsl:when>
			<xsl:when test="$myparam='XJB'"><xsl:value-of select="$myparam"/> (Bag, jumbo)</xsl:when>
			<xsl:when test="$myparam='XJC'"><xsl:value-of select="$myparam"/> (Jerrican, rectangular)</xsl:when>
			<xsl:when test="$myparam='XJG'"><xsl:value-of select="$myparam"/> (Jug)</xsl:when>
			<xsl:when test="$myparam='XJR'"><xsl:value-of select="$myparam"/> (Jar)</xsl:when>
			<xsl:when test="$myparam='XJT'"><xsl:value-of select="$myparam"/> (Jutebag)</xsl:when>
			<xsl:when test="$myparam='XJY'"><xsl:value-of select="$myparam"/> (Jerrican, cylindrical)</xsl:when>
			<xsl:when test="$myparam='XKG'"><xsl:value-of select="$myparam"/> (Keg)</xsl:when>
			<xsl:when test="$myparam='XKI'"><xsl:value-of select="$myparam"/> (Kit)</xsl:when>
			<xsl:when test="$myparam='XLE'"><xsl:value-of select="$myparam"/> (Luggage)</xsl:when>
			<xsl:when test="$myparam='XLG'"><xsl:value-of select="$myparam"/> (Log)</xsl:when>
			<xsl:when test="$myparam='XLT'"><xsl:value-of select="$myparam"/> (Lot)</xsl:when>
			<xsl:when test="$myparam='XLU'"><xsl:value-of select="$myparam"/> (Lug)</xsl:when>
			<xsl:when test="$myparam='XLV'"><xsl:value-of select="$myparam"/> (Liftvan)</xsl:when>
			<xsl:when test="$myparam='XLZ'"><xsl:value-of select="$myparam"/> (Logs, in bundle/bunch/truss)</xsl:when>
			<xsl:when test="$myparam='XMA'"><xsl:value-of select="$myparam"/> (Crate, metal)</xsl:when>
			<xsl:when test="$myparam='XMB'"><xsl:value-of select="$myparam"/> (Bag, multiply)</xsl:when>
			<xsl:when test="$myparam='XMC'"><xsl:value-of select="$myparam"/> (Crate, milk)</xsl:when>
			<xsl:when test="$myparam='XME'"><xsl:value-of select="$myparam"/> (Container, metal)</xsl:when>
			<xsl:when test="$myparam='XMR'"><xsl:value-of select="$myparam"/> (Receptacle, metal)</xsl:when>
			<xsl:when test="$myparam='XMS'"><xsl:value-of select="$myparam"/> (Sack, multi-wall)</xsl:when>
			<xsl:when test="$myparam='XMT'"><xsl:value-of select="$myparam"/> (Mat)</xsl:when>
			<xsl:when test="$myparam='XMW'"><xsl:value-of select="$myparam"/> (Receptacle, plastic wrapped)</xsl:when>
			<xsl:when test="$myparam='XMX'"><xsl:value-of select="$myparam"/> (Matchbox)</xsl:when>
			<xsl:when test="$myparam='XNA'"><xsl:value-of select="$myparam"/> (Not available)</xsl:when>
			<xsl:when test="$myparam='XNE'"><xsl:value-of select="$myparam"/> (Unpacked or unpackaged)</xsl:when>
			<xsl:when test="$myparam='XNF'"><xsl:value-of select="$myparam"/> (Unpacked or unpackaged, single unit)</xsl:when>
			<xsl:when test="$myparam='XNG'"><xsl:value-of select="$myparam"/> (Unpacked or unpackaged, multiple units)</xsl:when>
			<xsl:when test="$myparam='XNS'"><xsl:value-of select="$myparam"/> (Nest)</xsl:when>
			<xsl:when test="$myparam='XNT'"><xsl:value-of select="$myparam"/> (Net)</xsl:when>
			<xsl:when test="$myparam='XNU'"><xsl:value-of select="$myparam"/> (Net, tube, plastic)</xsl:when>
			<xsl:when test="$myparam='XNV'"><xsl:value-of select="$myparam"/> (Net, tube, textile)</xsl:when>
			<xsl:when test="$myparam='XOA'"><xsl:value-of select="$myparam"/> (Pallet, CHEP 40 cm x 60 cm)</xsl:when>
			<xsl:when test="$myparam='XOB'"><xsl:value-of select="$myparam"/> (Pallet, CHEP 80 cm x 120 cm)</xsl:when>
			<xsl:when test="$myparam='XOC'"><xsl:value-of select="$myparam"/> (Pallet, CHEP 100 cm x 120 cm)</xsl:when>
			<xsl:when test="$myparam='XOD'"><xsl:value-of select="$myparam"/> (Pallet, AS 4068-1993)</xsl:when>
			<xsl:when test="$myparam='XOE'"><xsl:value-of select="$myparam"/> (Pallet, ISO T11)</xsl:when>
			<xsl:when test="$myparam='XOF'"><xsl:value-of select="$myparam"/> (Platform, unspecified weight or dimension)</xsl:when>
			<xsl:when test="$myparam='XOK'"><xsl:value-of select="$myparam"/> (Block)</xsl:when>
			<xsl:when test="$myparam='XOT'"><xsl:value-of select="$myparam"/> (Octabin)</xsl:when>
			<xsl:when test="$myparam='XOU'"><xsl:value-of select="$myparam"/> (Container, outer)</xsl:when>
			<xsl:when test="$myparam='XOG'"><xsl:value-of select="$myparam"/> (Pallet ISO 0 - 1/2 EURO Pallet)</xsl:when>
			<xsl:when test="$myparam='XOH'"><xsl:value-of select="$myparam"/> (Pallet ISO 1 - 1/1 EURO Pallet)</xsl:when>
			<xsl:when test="$myparam='XOI'"><xsl:value-of select="$myparam"/> (Pallet ISO 2 – 2/1 EURO Pallet)</xsl:when>
			<xsl:when test="$myparam='XOJ'"><xsl:value-of select="$myparam"/> (1/4 EURO Pallet)</xsl:when>
			<xsl:when test="$myparam='XOL'"><xsl:value-of select="$myparam"/> (1/8 EURO Pallet)</xsl:when>
			<xsl:when test="$myparam='XOM'"><xsl:value-of select="$myparam"/> (Synthetic pallet ISO 1)</xsl:when>
			<xsl:when test="$myparam='XON'"><xsl:value-of select="$myparam"/> (Synthetic pallet ISO 2)</xsl:when>
			<xsl:when test="$myparam='XOP'"><xsl:value-of select="$myparam"/> (Wholesaler pallet)</xsl:when>
			<xsl:when test="$myparam='XOQ'"><xsl:value-of select="$myparam"/> (Pallet 80 X 100 cm)</xsl:when>
			<xsl:when test="$myparam='XOR'"><xsl:value-of select="$myparam"/> (Pallet 60 X 100 cm)</xsl:when>
			<xsl:when test="$myparam='XOS'"><xsl:value-of select="$myparam"/> (Oneway pallet)</xsl:when>
			<xsl:when test="$myparam='XOV'"><xsl:value-of select="$myparam"/> (Returnable pallet)</xsl:when>
			<xsl:when test="$myparam='XOW'"><xsl:value-of select="$myparam"/> (Large bag, pallet sized)</xsl:when>
			<xsl:when test="$myparam='XOX'"><xsl:value-of select="$myparam"/> (A wheeled pallet with raised rim (81 x 67 x 135))</xsl:when>
			<xsl:when test="$myparam='XOY'"><xsl:value-of select="$myparam"/> (A Wheeled pallet with raised rim (81 x 72 x 135))</xsl:when>
			<xsl:when test="$myparam='XOZ'"><xsl:value-of select="$myparam"/> (Wheeled pallet with raised rim ( 81 x 60 x 16))</xsl:when>
			<xsl:when test="$myparam='XO1'"><xsl:value-of select="$myparam"/> (Two sided cage on wheels with fixing strap)</xsl:when>
			<xsl:when test="$myparam='XO2'"><xsl:value-of select="$myparam"/> (Trolley)</xsl:when>
			<xsl:when test="$myparam='XO3'"><xsl:value-of select="$myparam"/> (Oneway pallet ISO 0 - 1/2 EURO Pallet)</xsl:when>
			<xsl:when test="$myparam='XO4'"><xsl:value-of select="$myparam"/> (Oneway pallet ISO 1 - 1/1 EURO Pallet)</xsl:when>
			<xsl:when test="$myparam='XO5'"><xsl:value-of select="$myparam"/> (Oneway pallet ISO 2 - 2/1 EURO Pallet)</xsl:when>
			<xsl:when test="$myparam='XO6'"><xsl:value-of select="$myparam"/> (Pallet with exceptional dimensions)</xsl:when>
			<xsl:when test="$myparam='XO7'"><xsl:value-of select="$myparam"/> (Wooden pallet  40 cm x 80 cm)</xsl:when>
			<xsl:when test="$myparam='XO8'"><xsl:value-of select="$myparam"/> (Plastic pallet SRS 60 cm x 80 cm)</xsl:when>
			<xsl:when test="$myparam='XO9'"><xsl:value-of select="$myparam"/> (Plastic pallet SRS 80 cm x 120 cm)</xsl:when>
			<xsl:when test="$myparam='XP1'"><xsl:value-of select="$myparam"/> (CHEP pallet 60 cm x 80 cm)</xsl:when>
			<xsl:when test="$myparam='XP3'"><xsl:value-of select="$myparam"/> (LPR pallet 60 cm x 80 cm)</xsl:when>
			<xsl:when test="$myparam='XP4'"><xsl:value-of select="$myparam"/> (LPR pallet 80 cm x 120 cm)</xsl:when>
			<xsl:when test="$myparam='XP2'"><xsl:value-of select="$myparam"/> (Pan)</xsl:when>
			<xsl:when test="$myparam='XPA'"><xsl:value-of select="$myparam"/> (Packet)</xsl:when>
			<xsl:when test="$myparam='XPB'"><xsl:value-of select="$myparam"/> (Pallet, box Combined open-ended box and pallet)</xsl:when>
			<xsl:when test="$myparam='XPC'"><xsl:value-of select="$myparam"/> (Parcel)</xsl:when>
			<xsl:when test="$myparam='XPD'"><xsl:value-of select="$myparam"/> (Pallet, modular, collars 80cms * 100cms)</xsl:when>
			<xsl:when test="$myparam='XPE'"><xsl:value-of select="$myparam"/> (Pallet, modular, collars 80cms * 120cms)</xsl:when>
			<xsl:when test="$myparam='XPF'"><xsl:value-of select="$myparam"/> (Pen)</xsl:when>
			<xsl:when test="$myparam='XPG'"><xsl:value-of select="$myparam"/> (Plate)</xsl:when>
			<xsl:when test="$myparam='XPH'"><xsl:value-of select="$myparam"/> (Pitcher)</xsl:when>
			<xsl:when test="$myparam='XPI'"><xsl:value-of select="$myparam"/> (Pipe)</xsl:when>
			<xsl:when test="$myparam='XPJ'"><xsl:value-of select="$myparam"/> (Punnet)</xsl:when>
			<xsl:when test="$myparam='XPK'"><xsl:value-of select="$myparam"/> (Package)</xsl:when>
			<xsl:when test="$myparam='XPL'"><xsl:value-of select="$myparam"/> (Pail)</xsl:when>
			<xsl:when test="$myparam='XPN'"><xsl:value-of select="$myparam"/> (Plank)</xsl:when>
			<xsl:when test="$myparam='XPO'"><xsl:value-of select="$myparam"/> (Pouch)</xsl:when>
			<xsl:when test="$myparam='XPP'"><xsl:value-of select="$myparam"/> (Piece)</xsl:when>
			<xsl:when test="$myparam='XPR'"><xsl:value-of select="$myparam"/> (Receptacle, plastic)</xsl:when>
			<xsl:when test="$myparam='XPT'"><xsl:value-of select="$myparam"/> (Pot)</xsl:when>
			<xsl:when test="$myparam='XPU'"><xsl:value-of select="$myparam"/> (Tray)</xsl:when>
			<xsl:when test="$myparam='XPV'"><xsl:value-of select="$myparam"/> (Pipes, in bundle/bunch/truss)</xsl:when>
			<xsl:when test="$myparam='XPX'"><xsl:value-of select="$myparam"/> (Pallet)</xsl:when>
			<xsl:when test="$myparam='XPY'"><xsl:value-of select="$myparam"/> (Plates, in bundle/bunch/truss)</xsl:when>
			<xsl:when test="$myparam='XPZ'"><xsl:value-of select="$myparam"/> (Planks, in bundle/bunch/truss)</xsl:when>
			<xsl:when test="$myparam='XQA'"><xsl:value-of select="$myparam"/> (Drum, steel, non-removable head)</xsl:when>
			<xsl:when test="$myparam='XQB'"><xsl:value-of select="$myparam"/> (Drum, steel, removable head)</xsl:when>
			<xsl:when test="$myparam='XQC'"><xsl:value-of select="$myparam"/> (Drum, aluminium, non-removable head)</xsl:when>
			<xsl:when test="$myparam='XQD'"><xsl:value-of select="$myparam"/> (Drum, aluminium, removable head)</xsl:when>
			<xsl:when test="$myparam='XQF'"><xsl:value-of select="$myparam"/> (Drum, plastic, non-removable head)</xsl:when>
			<xsl:when test="$myparam='XQG'"><xsl:value-of select="$myparam"/> (Drum, plastic, removable head)</xsl:when>
			<xsl:when test="$myparam='XQH'"><xsl:value-of select="$myparam"/> (Barrel, wooden, bung type)</xsl:when>
			<xsl:when test="$myparam='XQJ'"><xsl:value-of select="$myparam"/> (Barrel, wooden, removable head)</xsl:when>
			<xsl:when test="$myparam='XQK'"><xsl:value-of select="$myparam"/> (Jerrican, steel, non-removable head)</xsl:when>
			<xsl:when test="$myparam='XQL'"><xsl:value-of select="$myparam"/> (Jerrican, steel, removable head)</xsl:when>
			<xsl:when test="$myparam='XQM'"><xsl:value-of select="$myparam"/> (Jerrican, plastic, non-removable head)</xsl:when>
			<xsl:when test="$myparam='XQN'"><xsl:value-of select="$myparam"/> (Jerrican, plastic, removable head)</xsl:when>
			<xsl:when test="$myparam='XQP'"><xsl:value-of select="$myparam"/> (Box, wooden, natural wood, ordinary)</xsl:when>
			<xsl:when test="$myparam='XQQ'"><xsl:value-of select="$myparam"/> (Box, wooden, natural wood, with sift proof walls)</xsl:when>
			<xsl:when test="$myparam='XQR'"><xsl:value-of select="$myparam"/> (Box, plastic, expanded)</xsl:when>
			<xsl:when test="$myparam='XQS'"><xsl:value-of select="$myparam"/> (Box, plastic, solid)</xsl:when>
			<xsl:when test="$myparam='XRD'"><xsl:value-of select="$myparam"/> (Rod)</xsl:when>
			<xsl:when test="$myparam='XRG'"><xsl:value-of select="$myparam"/> (Ring)</xsl:when>
			<xsl:when test="$myparam='XRJ'"><xsl:value-of select="$myparam"/> (Rack, clothing hanger)</xsl:when>
			<xsl:when test="$myparam='XRK'"><xsl:value-of select="$myparam"/> (Rack)</xsl:when>
			<xsl:when test="$myparam='XRL'"><xsl:value-of select="$myparam"/> (Reel)</xsl:when>
			<xsl:when test="$myparam='XRO'"><xsl:value-of select="$myparam"/> (Roll)</xsl:when>
			<xsl:when test="$myparam='XRT'"><xsl:value-of select="$myparam"/> (Rednet)</xsl:when>
			<xsl:when test="$myparam='XRZ'"><xsl:value-of select="$myparam"/> (Rods, in bundle/bunch/truss)</xsl:when>
			<xsl:when test="$myparam='XSA'"><xsl:value-of select="$myparam"/> (Sack)</xsl:when>
			<xsl:when test="$myparam='XSB'"><xsl:value-of select="$myparam"/> (Slab)</xsl:when>
			<xsl:when test="$myparam='XSC'"><xsl:value-of select="$myparam"/> (Crate, shallow)</xsl:when>
			<xsl:when test="$myparam='XSD'"><xsl:value-of select="$myparam"/> (Spindle)</xsl:when>
			<xsl:when test="$myparam='XSE'"><xsl:value-of select="$myparam"/> (Sea-chest)</xsl:when>
			<xsl:when test="$myparam='XSH'"><xsl:value-of select="$myparam"/> (Sachet)</xsl:when>
			<xsl:when test="$myparam='XSI'"><xsl:value-of select="$myparam"/> (Skid)</xsl:when>
			<xsl:when test="$myparam='XSK'"><xsl:value-of select="$myparam"/> (Case, skeleton)</xsl:when>
			<xsl:when test="$myparam='XSL'"><xsl:value-of select="$myparam"/> (Slipsheet)</xsl:when>
			<xsl:when test="$myparam='XSM'"><xsl:value-of select="$myparam"/> (Sheetmetal)</xsl:when>
			<xsl:when test="$myparam='XSO'"><xsl:value-of select="$myparam"/> (Spool)</xsl:when>
			<xsl:when test="$myparam='XSP'"><xsl:value-of select="$myparam"/> (Sheet, plastic wrapping)</xsl:when>
			<xsl:when test="$myparam='XSS'"><xsl:value-of select="$myparam"/> (Case, steel)</xsl:when>
			<xsl:when test="$myparam='XST'"><xsl:value-of select="$myparam"/> (Sheet)</xsl:when>
			<xsl:when test="$myparam='XSU'"><xsl:value-of select="$myparam"/> (Suitcase)</xsl:when>
			<xsl:when test="$myparam='XSV'"><xsl:value-of select="$myparam"/> (Envelope, steel)</xsl:when>
			<xsl:when test="$myparam='XSW'"><xsl:value-of select="$myparam"/> (Shrinkwrapped )</xsl:when>
			<xsl:when test="$myparam='XSX'"><xsl:value-of select="$myparam"/> (Set)</xsl:when>
			<xsl:when test="$myparam='XSY'"><xsl:value-of select="$myparam"/> (Sleeve)</xsl:when>
			<xsl:when test="$myparam='XSZ'"><xsl:value-of select="$myparam"/> (Sheets, in bundle/bunch/truss)</xsl:when>
			<xsl:when test="$myparam='XT1'"><xsl:value-of select="$myparam"/> (Tablet)</xsl:when>
			<xsl:when test="$myparam='XTB'"><xsl:value-of select="$myparam"/> (Tub)</xsl:when>
			<xsl:when test="$myparam='XTC'"><xsl:value-of select="$myparam"/> (Tea-chest)</xsl:when>
			<xsl:when test="$myparam='XTD'"><xsl:value-of select="$myparam"/> (Tube, collapsible)</xsl:when>
			<xsl:when test="$myparam='XTE'"><xsl:value-of select="$myparam"/> (Tyre)</xsl:when>
			<xsl:when test="$myparam='XTG'"><xsl:value-of select="$myparam"/> (Tank container, generic)</xsl:when>
			<xsl:when test="$myparam='XTI'"><xsl:value-of select="$myparam"/> (Tierce)</xsl:when>
			<xsl:when test="$myparam='XTK'"><xsl:value-of select="$myparam"/> (Tank, rectangular)</xsl:when>
			<xsl:when test="$myparam='XTL'"><xsl:value-of select="$myparam"/> (Tub, with lid)</xsl:when>
			<xsl:when test="$myparam='XTN'"><xsl:value-of select="$myparam"/> (Tin)</xsl:when>
			<xsl:when test="$myparam='XTO'"><xsl:value-of select="$myparam"/> (Tun)</xsl:when>
			<xsl:when test="$myparam='XTR'"><xsl:value-of select="$myparam"/> (Trunk)</xsl:when>
			<xsl:when test="$myparam='XTS'"><xsl:value-of select="$myparam"/> (Truss)</xsl:when>
			<xsl:when test="$myparam='XTT'"><xsl:value-of select="$myparam"/> (Bag, tote)</xsl:when>
			<xsl:when test="$myparam='XTU'"><xsl:value-of select="$myparam"/> (Tube)</xsl:when>
			<xsl:when test="$myparam='XTV'"><xsl:value-of select="$myparam"/> (Tube, with nozzle)</xsl:when>
			<xsl:when test="$myparam='XTW'"><xsl:value-of select="$myparam"/> (Pallet, triwall)</xsl:when>
			<xsl:when test="$myparam='XTY'"><xsl:value-of select="$myparam"/> (Tank, cylindrical)</xsl:when>
			<xsl:when test="$myparam='XTZ'"><xsl:value-of select="$myparam"/> (Tubes, in bundle/bunch/truss)</xsl:when>
			<xsl:when test="$myparam='XUC'"><xsl:value-of select="$myparam"/> (Uncaged)</xsl:when>
			<xsl:when test="$myparam='XUN'"><xsl:value-of select="$myparam"/> (Unit)</xsl:when>
			<xsl:when test="$myparam='XVA'"><xsl:value-of select="$myparam"/> (Vat)</xsl:when>
			<xsl:when test="$myparam='XVG'"><xsl:value-of select="$myparam"/> (Bulk, gas (at 1031 mbar and 15°C))</xsl:when>
			<xsl:when test="$myparam='XVI'"><xsl:value-of select="$myparam"/> (Vial)</xsl:when>
			<xsl:when test="$myparam='XVK'"><xsl:value-of select="$myparam"/> (Vanpack)</xsl:when>
			<xsl:when test="$myparam='XVL'"><xsl:value-of select="$myparam"/> (Bulk, liquid)</xsl:when>
			<xsl:when test="$myparam='XVO'"><xsl:value-of select="$myparam"/> (Bulk, solid, large particles (“nodules”))</xsl:when>
			<xsl:when test="$myparam='XVP'"><xsl:value-of select="$myparam"/> (Vacuum-packed)</xsl:when>
			<xsl:when test="$myparam='XVQ'"><xsl:value-of select="$myparam"/> (Bulk, liquefied gas (at abnormal temperature/pressure))</xsl:when>
			<xsl:when test="$myparam='XVN'"><xsl:value-of select="$myparam"/> (Vehicle)</xsl:when>
			<xsl:when test="$myparam='XVR'"><xsl:value-of select="$myparam"/> (Bulk, solid, granular particles (“grains”))</xsl:when>
			<xsl:when test="$myparam='XVS'"><xsl:value-of select="$myparam"/> (Bulk, scrap metal)</xsl:when>
			<xsl:when test="$myparam='XVY'"><xsl:value-of select="$myparam"/> (Bulk, solid, fine particles (“powders”))</xsl:when>
			<xsl:when test="$myparam='XWA'"><xsl:value-of select="$myparam"/> (Intermediate bulk container)</xsl:when>
			<xsl:when test="$myparam='XWB'"><xsl:value-of select="$myparam"/> (Wickerbottle)</xsl:when>
			<xsl:when test="$myparam='XWC'"><xsl:value-of select="$myparam"/> (Intermediate bulk container, steel)</xsl:when>
			<xsl:when test="$myparam='XWD'"><xsl:value-of select="$myparam"/> (Intermediate bulk container, aluminium)</xsl:when>
			<xsl:when test="$myparam='XWF'"><xsl:value-of select="$myparam"/> (Intermediate bulk container, metal)</xsl:when>
			<xsl:when test="$myparam='XWG'"><xsl:value-of select="$myparam"/> (Intermediate bulk container, steel, pressurised > 10 kpa)</xsl:when>
			<xsl:when test="$myparam='XWH'"><xsl:value-of select="$myparam"/> (Intermediate bulk container, aluminium, pressurised > 10 kpa)</xsl:when>
			<xsl:when test="$myparam='XWJ'"><xsl:value-of select="$myparam"/> (Intermediate bulk container, metal, pressure 10 kpa)</xsl:when>
			<xsl:when test="$myparam='XWK'"><xsl:value-of select="$myparam"/> (Intermediate bulk container, steel, liquid)</xsl:when>
			<xsl:when test="$myparam='XWL'"><xsl:value-of select="$myparam"/> (Intermediate bulk container, aluminium, liquid)</xsl:when>
			<xsl:when test="$myparam='XWM'"><xsl:value-of select="$myparam"/> (Intermediate bulk container, metal, liquid)</xsl:when>
			<xsl:when test="$myparam='XWN'"><xsl:value-of select="$myparam"/> (Intermediate bulk container, woven plastic, without coat/liner)</xsl:when>
			<xsl:when test="$myparam='XWP'"><xsl:value-of select="$myparam"/> (Intermediate bulk container, woven plastic, coated)</xsl:when>
			<xsl:when test="$myparam='XWQ'"><xsl:value-of select="$myparam"/> (Intermediate bulk container, woven plastic, with liner)</xsl:when>
			<xsl:when test="$myparam='XWR'"><xsl:value-of select="$myparam"/> (Intermediate bulk container, woven plastic, coated and liner)</xsl:when>
			<xsl:when test="$myparam='XWS'"><xsl:value-of select="$myparam"/> (Intermediate bulk container, plastic film)</xsl:when>
			<xsl:when test="$myparam='XWT'"><xsl:value-of select="$myparam"/> (Intermediate bulk container, textile with out coat/liner)</xsl:when>
			<xsl:when test="$myparam='XWU'"><xsl:value-of select="$myparam"/> (Intermediate bulk container, natural wood, with inner liner)</xsl:when>
			<xsl:when test="$myparam='XWV'"><xsl:value-of select="$myparam"/> (Intermediate bulk container, textile, coated)</xsl:when>
			<xsl:when test="$myparam='XWW'"><xsl:value-of select="$myparam"/> (Intermediate bulk container, textile, with liner)</xsl:when>
			<xsl:when test="$myparam='XWX'"><xsl:value-of select="$myparam"/> (Intermediate bulk container, textile, coated and liner)</xsl:when>
			<xsl:when test="$myparam='XWY'"><xsl:value-of select="$myparam"/> (Intermediate bulk container, plywood, with inner liner)</xsl:when>
			<xsl:when test="$myparam='XWZ'"><xsl:value-of select="$myparam"/> (Intermediate bulk container, reconstituted wood, with inner liner)</xsl:when>
			<xsl:when test="$myparam='XXA'"><xsl:value-of select="$myparam"/> (Bag, woven plastic, without inner coat/liner)</xsl:when>
			<xsl:when test="$myparam='XXB'"><xsl:value-of select="$myparam"/> (Bag, woven plastic, sift proof)</xsl:when>
			<xsl:when test="$myparam='XXC'"><xsl:value-of select="$myparam"/> (Bag, woven plastic, water resistant)</xsl:when>
			<xsl:when test="$myparam='XXD'"><xsl:value-of select="$myparam"/> (Bag, plastics film)</xsl:when>
			<xsl:when test="$myparam='XXF'"><xsl:value-of select="$myparam"/> (Bag, textile, without inner coat/liner)</xsl:when>
			<xsl:when test="$myparam='XXG'"><xsl:value-of select="$myparam"/> (Bag, textile, sift proof)</xsl:when>
			<xsl:when test="$myparam='XXH'"><xsl:value-of select="$myparam"/> (Bag, textile, water resistant)</xsl:when>
			<xsl:when test="$myparam='XXJ'"><xsl:value-of select="$myparam"/> (Bag, paper, multi-wall)</xsl:when>
			<xsl:when test="$myparam='XXK'"><xsl:value-of select="$myparam"/> (Bag, paper, multi-wall, water resistant)</xsl:when>
			<xsl:when test="$myparam='XYA'"><xsl:value-of select="$myparam"/> (Composite packaging, plastic receptacle in steel drum)</xsl:when>
			<xsl:when test="$myparam='XYB'"><xsl:value-of select="$myparam"/> (Composite packaging, plastic receptacle in steel crate box)</xsl:when>
			<xsl:when test="$myparam='XYC'"><xsl:value-of select="$myparam"/> (Composite packaging, plastic receptacle in aluminium drum)</xsl:when>
			<xsl:when test="$myparam='XYD'"><xsl:value-of select="$myparam"/> (Composite packaging, plastic receptacle in aluminium crate)</xsl:when>
			<xsl:when test="$myparam='XYF'"><xsl:value-of select="$myparam"/> (Composite packaging, plastic receptacle in wooden box)</xsl:when>
			<xsl:when test="$myparam='XYG'"><xsl:value-of select="$myparam"/> (Composite packaging, plastic receptacle in plywood drum)</xsl:when>
			<xsl:when test="$myparam='XYH'"><xsl:value-of select="$myparam"/> (Composite packaging, plastic receptacle in plywood box)</xsl:when>
			<xsl:when test="$myparam='XYJ'"><xsl:value-of select="$myparam"/> (Composite packaging, plastic receptacle in fibre drum)</xsl:when>
			<xsl:when test="$myparam='XYK'"><xsl:value-of select="$myparam"/> (Composite packaging, plastic receptacle in fibreboard box)</xsl:when>
			<xsl:when test="$myparam='XYL'"><xsl:value-of select="$myparam"/> (Composite packaging, plastic receptacle in plastic drum)</xsl:when>
			<xsl:when test="$myparam='XYM'"><xsl:value-of select="$myparam"/> (Composite packaging, plastic receptacle in solid plastic box)</xsl:when>
			<xsl:when test="$myparam='XYN'"><xsl:value-of select="$myparam"/> (Composite packaging, glass receptacle in steel drum)</xsl:when>
			<xsl:when test="$myparam='XYP'"><xsl:value-of select="$myparam"/> (Composite packaging, glass receptacle in steel crate box)</xsl:when>
			<xsl:when test="$myparam='XYQ'"><xsl:value-of select="$myparam"/> (Composite packaging, glass receptacle in aluminium drum)</xsl:when>
			<xsl:when test="$myparam='XYR'"><xsl:value-of select="$myparam"/> (Composite packaging, glass receptacle in aluminium crate)</xsl:when>
			<xsl:when test="$myparam='XYS'"><xsl:value-of select="$myparam"/> (Composite packaging, glass receptacle in wooden box)</xsl:when>
			<xsl:when test="$myparam='XYT'"><xsl:value-of select="$myparam"/> (Composite packaging, glass receptacle in plywood drum)</xsl:when>
			<xsl:when test="$myparam='XYV'"><xsl:value-of select="$myparam"/> (Composite packaging, glass receptacle in wickerwork hamper)</xsl:when>
			<xsl:when test="$myparam='XYW'"><xsl:value-of select="$myparam"/> (Composite packaging, glass receptacle in fibre drum)</xsl:when>
			<xsl:when test="$myparam='XYX'"><xsl:value-of select="$myparam"/> (Composite packaging, glass receptacle in fibreboard box)</xsl:when>
			<xsl:when test="$myparam='XYY'"><xsl:value-of select="$myparam"/> (Composite packaging, glass receptacle in expandable plastic pack)</xsl:when>
			<xsl:when test="$myparam='XYZ'"><xsl:value-of select="$myparam"/> (Composite packaging, glass receptacle in solid plastic pack)</xsl:when>
			<xsl:when test="$myparam='XZA'"><xsl:value-of select="$myparam"/> (Intermediate bulk container, paper, multi-wall)</xsl:when>
			<xsl:when test="$myparam='XZB'"><xsl:value-of select="$myparam"/> (Bag, large)</xsl:when>
			<xsl:when test="$myparam='XZC'"><xsl:value-of select="$myparam"/> (Intermediate bulk container, paper, multi-wall, water resistant)</xsl:when>
			<xsl:when test="$myparam='XZD'"><xsl:value-of select="$myparam"/> (Intermediate bulk container, rigid plastic, with structural equipment, solids)</xsl:when>
			<xsl:when test="$myparam='XZF'"><xsl:value-of select="$myparam"/> (Intermediate bulk container, rigid plastic, freestanding, solids)</xsl:when>
			<xsl:when test="$myparam='XZG'"><xsl:value-of select="$myparam"/> (Intermediate bulk container, rigid plastic, with structural equipment, pressurised)</xsl:when>
			<xsl:when test="$myparam='XZH'"><xsl:value-of select="$myparam"/> (Intermediate bulk container, rigid plastic, freestanding, pressurised)</xsl:when>
			<xsl:when test="$myparam='XZJ'"><xsl:value-of select="$myparam"/> (Intermediate bulk container, rigid plastic, with structural equipment, liquids)</xsl:when>
			<xsl:when test="$myparam='XZK'"><xsl:value-of select="$myparam"/> (Intermediate bulk container, rigid plastic, freestanding, liquids)</xsl:when>
			<xsl:when test="$myparam='XZL'"><xsl:value-of select="$myparam"/> (Intermediate bulk container, composite, rigid plastic, solids)</xsl:when>
			<xsl:when test="$myparam='XZM'"><xsl:value-of select="$myparam"/> (Intermediate bulk container, composite, flexible plastic, solids)</xsl:when>
			<xsl:when test="$myparam='XZN'"><xsl:value-of select="$myparam"/> (Intermediate bulk container, composite, rigid plastic, pressurised)</xsl:when>
			<xsl:when test="$myparam='XZP'"><xsl:value-of select="$myparam"/> (Intermediate bulk container, composite, flexible plastic, pressurised)</xsl:when>
			<xsl:when test="$myparam='XZQ'"><xsl:value-of select="$myparam"/> (Intermediate bulk container, composite, rigid plastic, liquids)</xsl:when>
			<xsl:when test="$myparam='XZR'"><xsl:value-of select="$myparam"/> (Intermediate bulk container, composite, flexible plastic, liquids)</xsl:when>
			<xsl:when test="$myparam='XZS'"><xsl:value-of select="$myparam"/> (Intermediate bulk container, composite)</xsl:when>
			<xsl:when test="$myparam='XZT'"><xsl:value-of select="$myparam"/> (Intermediate bulk container, fibreboard)</xsl:when>
			<xsl:when test="$myparam='XZU'"><xsl:value-of select="$myparam"/> (Intermediate bulk container, flexible)</xsl:when>
			<xsl:when test="$myparam='XZV'"><xsl:value-of select="$myparam"/> (Intermediate bulk container, metal, other than steel)</xsl:when>
			<xsl:when test="$myparam='XZW'"><xsl:value-of select="$myparam"/> (Intermediate bulk container, natural wood)</xsl:when>
			<xsl:when test="$myparam='XZX'"><xsl:value-of select="$myparam"/> (Intermediate bulk container, plywood)</xsl:when>
			<xsl:when test="$myparam='XZY'"><xsl:value-of select="$myparam"/> (Intermediate bulk container, reconstituted wood)</xsl:when>
			<xsl:when test="$myparam='XZZ'"><xsl:value-of select="$myparam"/> (Mutually defined)</xsl:when>			
			<xsl:otherwise>
				<xsl:call-template name="code.rec20">
					<xsl:with-param name="myparam" select="."/>			
				</xsl:call-template>			
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>

</xsl:stylesheet>