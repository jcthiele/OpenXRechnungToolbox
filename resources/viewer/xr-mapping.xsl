<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:xr="urn:ce.eu:en16931:2017:xoev-de:kosit:standard:xrechnung-1"
                xmlns:xrv="http://www.example.org/XRechnung-Viewer">

  <xsl:template name="field-mapping">
    <xsl:param name="identifier"/>
    <xsl:choose>
      <xsl:when test="$identifier = 'xr:Buyer_reference'">
        <label>Leitweg-ID (BT-10)</label>
        <nummer>BT-10</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Buyer_name'">
        <label>Name (BT-44)</label>
        <nummer>BT-44</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Buyer_address_line_1'">
        <label>Adresszeile 1 (BT-50)</label>
        <nummer>BT-50</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Buyer_address_line_2'">
        <label>Adresszeile 2 (BT-51)</label>
        <nummer>BT-51</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Buyer_address_line_3'">
        <label>Adresszeile 3 (BT-163)</label>
        <nummer>BT-163</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Buyer_post_code'">
        <label>PLZ (BT-53)</label>
        <nummer>BT-53</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Buyer_city'">
        <label>Ort (BT-52)</label>
        <nummer>BT-52</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Buyer_country_code'">
        <label>Land (BT-55)</label>
        <nummer>BT-55</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Buyer_identifier'">
        <label>Kunden-Nr. (BT-46)</label>
        <nummer>BT-46</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Buyer_identifier/@scheme_identifier'">
        <label>Schema der Kennung (BT-46)</label>
        <nummer>BT-46</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Buyer_contact_point'">
        <label>Name (BT-56)</label>
        <nummer>BT-56</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Buyer_contact_telephone_number'">
        <label>Telefon (BT-57)</label>
        <nummer>BT-57</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Buyer_contact_email_address'">
        <label>E-Mail-Adresse (BT-58)</label>
        <nummer>BT-58</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Seller_name'">
        <label>Firmenname (BT-27)</label>
        <nummer>BT-27</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Seller_address_line_1'">
        <label>Adresszeile 1 (BT-35)</label>
        <nummer>BT-35</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Seller_address_line_2'">
        <label>Adresszeile 2 (BT-36)</label>
        <nummer>BT-36</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Seller_address_line_3'">
        <label>Adresszeile 3</label>
        <nummer></nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Seller_post_code'">
        <label>PLZ (BT-38)</label>
        <nummer>BT-38</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Seller_city'">
        <label>Ort (BT-37)</label>
        <nummer>BT-37</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Seller_country_subdivision'">
        <label>Bundesland (BT-39)</label>
        <nummer>BT-39</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Seller_country_code'">
        <label>Ländercode (BT-40)</label>
        <nummer>BT-40</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Seller_identifier'">
        <label>Kennung (GLN) (BT-29)</label>
        <nummer>BT-29</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Seller_identifier/@scheme_identifier'">
        <label>Schema der Kennung (BT-29)</label>
        <nummer>BT-29</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Seller_contact_point'">
        <label>Name (BT-41)</label>
        <nummer>BT-41</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Seller_contact_telephone_number'">
        <label>Telefon (BT-42)</label>
        <nummer>BT-42</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Seller_contact_email_address'">
        <label>E-Mail-Adresse (BT-43)</label>
        <nummer>BT-43</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Invoice_number'">
        <label>Rechnungsnummer (BT-1)</label>
        <nummer>BT-1</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Invoice_issue_date'">
        <label>Rechnungsdatum (BT-2)</label>
        <nummer>BT-2</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Invoice_type_code'">
        <label>Rechnungsart (BT-3)</label>
        <nummer>BT-3</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Invoice_currency_code'">
        <label>Währung (BT-5)</label>
        <nummer>BT-5</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Project_reference'">
        <label>Projektnummer (BT-11)</label>
        <nummer>BT-11</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Contract_reference'">
        <label>Vertragsnummer (BT-12)</label>
        <nummer>BT-12</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Purchase_order_reference'">
        <label>Bestellnummer (BT-13)</label>
        <nummer>BT-13</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Sales_order_reference'">
        <label>Auftragsnummer (BT-14)</label>
        <nummer>BT-14</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Invoicing_period_start_date'">
        <label>von (BT-73)</label>
        <nummer>BT-73</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Invoicing_period_end_date'">
        <label>bis (BT-74)</label>
        <nummer>BT-74</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Preceding_Invoice_reference'">
        <label>Rechnungsnummer (BT-25)</label>
        <nummer>BT-25</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Preceding_Invoice_issue_date'">
        <label>Rechnungsdatum (BT-26)</label>
        <nummer>BT-26</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Sum_of_Invoice_line_net_amount'">
        <label>Summe aller Positionen (BT-106)</label>
        <nummer>BT-106</nummer>
        <art>netto</art>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Sum_of_allowances_on_document_level'">
        <label>Summe Nachlässe (BT-107)</label>
        <nummer>BT-107</nummer>
        <art>netto</art>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Sum_of_charges_on_document_level'">
        <label>Summe Zuschläge (BT-108)</label>
        <nummer>BT-108</nummer>
        <art>netto</art>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Invoice_total_amount_without_VAT'">
        <label>Gesamtsumme (BT-109)</label>
        <nummer>BT-109</nummer>
        <art>netto</art>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Invoice_total_VAT_amount'">
        <label>Summe Umsatzsteuer (BT-110)</label>
        <nummer>BT-110</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Invoice_total_VAT_amount_in_accounting_currency'">
        <label>Summe Umsatzsteuer in Abrechnungswährung (BT-111)</label>
        <nummer>BT-111</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Invoice_total_amount_with_VAT'">
        <label>Gesamtsumme (BT-112)</label>
        <nummer>BT-112</nummer>
        <art>brutto</art>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Paid_amount'">
        <label>Gezahlter Betrag (BT-113)</label>
        <nummer>BT-113</nummer>
        <art>brutto</art>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Rounding_amount'">
        <label>Rundungsbetrag (BT-114)</label>
        <nummer>BT-114</nummer>
        <art>brutto</art>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Amount_due_for_payment'">
        <label>Fälliger Betrag (BT-115)</label>
        <nummer>BT-115</nummer>
        <art>brutto</art>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:VAT_category_code'">
        <label>Umsatzsteuerkategorie (BT-118)</label>
        <nummer>BT-118</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:VAT_category_taxable_amount'">
        <label>Gesamtsumme (BT-116)</label>
        <nummer>BT-116</nummer>
        <art>netto</art>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:VAT_category_rate'">
        <label>Umsatzsteuersatz (BT-119)</label>
        <nummer>BT-119</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:VAT_category_tax_amount'">
        <label>Umsatzsteuerbetrag (BT-117)</label>
        <nummer>BT-117</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:VAT_exemption_reason_text'">
        <label>Befreiungsgrund (BT-120)</label>
        <nummer>BT-120</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:VAT_exemption_reason_code'">
        <label>Kennung für den Befreiungsgrund (BT-121)</label>
        <nummer>BT-121</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Document_level_allowance_VAT_category_code'">
        <label>Umsatzsteuerkategorie des Nachlasses (BT-95)</label>
        <nummer>BT-95</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Document_level_allowance_base_amount'">
        <label>Grundbetrag (BT-93)</label>
        <nummer>BT-93</nummer>
        <art>netto</art>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Document_level_allowance_percentage'">
        <label>Prozentsatz (BT-94)</label>
        <nummer>BT-94%</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Document_level_allowance_amount'">
        <label>Nachlass (BT-92)</label>
        <nummer>BT-92</nummer>
        <art>netto</art>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Document_level_allowance_VAT_rate'">
        <label>Umsatzsteuersatz des Nachlasses (BT-96)</label>
        <nummer>BT-96</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Document_level_allowance_reason'">
        <label>Grund für den Nachlass (BT-97)</label>
        <nummer>BT-97</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Document_level_allowance_reason_code'">
        <label>Code für den Grund des Zuschlag (BT-98)</label>
        <nummer>BT-98</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Document_level_charge_VAT_category_code'">
        <label>Umsatzsteuerkategorie des Zuschlages (BT-102)</label>
        <nummer>BT-102</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Document_level_charge_base_amount'">
        <label>Grundbetrag (BT-100)</label>
        <nummer>BT-100</nummer>
        <art>netto</art>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Document_level_charge_percentage'">
        <label>Prozentsatz (BT-101)</label>
        <nummer>BT-101</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Document_level_charge_amount'">
        <label>Zuschlag (BT-99)</label>
        <nummer>BT-99</nummer>
        <art>netto</art>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Document_level_charge_VAT_rate'">
        <label>Umsatzsteuersatz des Zuschlages (BT-103)</label>
        <nummer>BT-103</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Document_level_charge_reason'">
        <label>Grund für den Zuschlag (BT-104)</label>
        <nummer>BT-104</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Document_level_charge_reason_code'">
        <label>Code für den Abschlag (BT-105)</label>
        <nummer>BT-105</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Payment_terms'">
        <label>Skonto; weitere Zahlungsbedingungen (BT-20)</label>
        <nummer>BT-20</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Payment_due_date'">
        <label>Fälligkeitsdatum (BT-9)</label>
        <nummer>BT-9</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Payment_means_type_code'">
        <label>Code für das Zahlungsmittel (BT-81)</label>
        <nummer>BT-81</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Payment_means_text'">
        <label>Zahlungsmittel (BT-82)</label>
        <nummer>BT-82</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Remittance_information'">
        <label>Verwendungszweck (BT-83)</label>
        <nummer>BT-83</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Payment_card_primary_account_number'">
        <label>Kartennummer (BT-87)</label>
        <nummer>BT-87</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Payment_card_holder_name'">
        <label>Karteninhaber (BT-88)</label>
        <nummer>BT-88</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Mandate_reference_identifier'">
        <label>Mandatsreferenznr. (BT-89)</label>
        <nummer>BT-89</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Debited_account_identifier'">
        <label>IBAN (BT-91)</label>
        <nummer>BT-91</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Bank_assigned_creditor_identifier'">
        <label>Gläubiger-ID (BT-90)</label>
        <nummer>BT-90</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Payment_account_name'">
        <label>Kontoinhaber (BT-85)</label>
        <nummer>BT-85</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Payment_account_identifier'">
        <label>IBAN (BT-84)</label>
        <nummer>BT-84</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Payment_service_provider_identifier'">
        <label>BIC (BT-86)</label>
        <nummer>BT-86</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Invoice_note_subject_code'">
        <label>Betreff (BT-21)</label>
        <nummer>BT-21</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Invoice_note'">
        <label>Bemerkung (BT-22)</label>
        <nummer>BT-22</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Seller_trading_name'">
        <label>Abweichender Handelsname (BT-28)</label>
        <nummer>BT-28</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Seller_electronic_address'">
        <label>Elektronische Adresse (BT-34)</label>
        <nummer>BT-34</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Seller_electronic_address/@scheme_identifier'">
        <label>Schema der elektronischen Adresse (BT-34)</label>
        <nummer>BT-34</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Seller_legal_registration_identifier'">
        <label>Register-/Registriernummer (BT-30)</label>
        <nummer>BT-30</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Seller_VAT_identifier'">
        <label>Umsatzsteuer-ID (BT-31)</label>
        <nummer>BT-31</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Seller_tax_registration_identifier'">
        <label>Steuernummer (BT-32)</label>
        <nummer>BT-32</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Seller_tax_registration_identifier/@scheme_identifier'">
        <label>Schema der Steuernummer (BT-32)</label>
        <nummer>BT-32</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Seller_additional_legal_information'">
        <label>Weitere rechtliche Informationen (BT-33)</label>
        <nummer>BT-33</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:VAT_accounting_currency_code'">
        <label>Code der Umsatzsteuerwährung (BT-6)</label>
        <nummer>BT-6</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Seller_tax_representative_name'">
        <label>Name (BT-62)</label>
        <nummer>BT-62</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Tax_representative_address_line_1'">
        <label>Straße / HausNr. (BT-64)</label>
        <nummer>BT-64</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Tax_representative_address_line_2'">
        <label>Postfach (BT-65)</label>
        <nummer>BT-65</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Tax_representative_address_line_3'">
        <label>Adresszusatz (BT-164)</label>
        <nummer>BT-164</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Tax_representative_post_code'">
        <label>PLZ (BT-67)</label>
        <nummer>BT-67</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Tax_representative_city'">
        <label>Ort (BT-66)</label>
        <nummer>BT-66</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Tax_representative_country_subdivision'">
        <label>Bundesland (BT-68)</label>
        <nummer>BT-68</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Tax_representative_country_code'">
        <label>Ländercode (BT-69)</label>
        <nummer>BT-69</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Seller_tax_representative_VAT_identifier'">
        <label>Umsatzsteuer-ID (BT-63)</label>
        <nummer>BT-63</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Buyer_trading_name'">
        <label>Abweichender Handelsname (BT-45)</label>
        <nummer>BT-45</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Buyer_country_subdivision'">
        <label>Bundesland (BT-54)</label>
        <nummer>BT-54</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Buyer_electronic_address'">
        <label>Elektronische Adresse (BT-49)</label>
        <nummer>BT-49</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Buyer_electronic_address/@scheme_identifier'">
        <label>Schema der elektronischen Adresse (BT-49)</label>
        <nummer>BT-49</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Buyer_legal_registration_identifier'">
        <label>Register-/Registriernummer (BT-47)</label>
        <nummer>BT-47</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Buyer_legal_registration_identifier/@scheme_identifier'">
        <label>Schema der Register-/Registriernummer (BT-47)</label>
        <nummer>BT-47</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Buyer_VAT_identifier'">
        <label>Umsatzsteuer-ID (BT-48)</label>
        <nummer>BT-48</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Value_added_tax_point_date'">
        <label>Abrechnungsdatum der Umsatzsteuer (BT-7)</label>
        <nummer>BT-7</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Value_added_tax_point_date_code'">
        <label>Code des Umsatzsteuer-Abrechnungsdatums (BT-8)</label>
        <nummer>BT-8</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Buyer_accounting_reference'">
        <label>Kontierungsinfo / Kostenstelle (BT-19)</label>
        <nummer>BT-19</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Deliver_to_location_identifier'">
        <label>Kennung des Lieferorts (BT-71)</label>
        <nummer>BT-71</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Deliver_to_location_identifier/@scheme_identifier'">
        <label>Schema der Kennung (BT-71)</label>
        <nummer>BT-71</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Actual_delivery_date'">
        <label>Lieferdatum (BT-72)</label>
        <nummer>BT-72</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Deliver_to_party_name'">
        <label>Name des Empfängers (BT-70)</label>
        <nummer>BT-70</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Deliver_to_address_line_1'">
        <label>Straße / HausNr. (BT-75)</label>
        <nummer>BT-75</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Deliver_to_address_line_2'">
        <label>Postfach (BT-76)</label>
        <nummer>BT-76</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Deliver_to_address_line_3'">
        <label>Adresszusatz (BT-165)</label>
        <nummer>BT-165</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Deliver_to_post_code'">
        <label>PLZ (BT-78)</label>
        <nummer>BT-78</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Deliver_to_city'">
        <label>Ort (BT-77)</label>
        <nummer>BT-77</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Deliver_to_country_subdivision'">
        <label>Bundesland (BT-79)</label>
        <nummer>BT-79</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Deliver_to_country_code'">
        <label>Land (BT-80)</label>
        <nummer>BT-80</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Tender_or_lot_reference'">
        <label>Vergabenummer (BT-17)</label>
        <nummer>BT-17</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Receiving_advice_reference'">
        <label>Kennung der Empfangsbestätigung (BT-15)</label>
        <nummer>BT-15</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Despatch_advice_reference'">
        <label>Kennung der Versandanzeige (BT-16)</label>
        <nummer>BT-16</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Business_process_type'">
        <label>Prozesskennung (BT-23)</label>
        <nummer>BT-23</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Specification_identifier'">
        <label>Spezifikationskennung (BT-24)</label>
        <nummer>BT-24</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Invoiced_object_identifier'">
        <label>Objektkennung (BT-18)</label>
        <nummer>BT-18</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Invoiced_object_identifier/@scheme_identifier'">
        <label>Schema der Objektkennung (BT-18)</label>
        <nummer>BT-18</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Payee_name'">
        <label>Name (BT-59)</label>
        <nummer>BT-59</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Payee_identifier'">
        <label>Kennung (BT-60)</label>
        <nummer>BT-60</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Payee_identifier/@scheme_identifier'">
        <label>Schema der Kennung (BT-60)</label>
        <nummer>BT-60</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Payee_legal_registration_identifier'">
        <label>Register-/Registriernummer (BT-61)</label>
        <nummer>BT-61</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Payee_legal_registration_identifier/@scheme_identifier'">
        <label>Schema der Register-/Registriernummer (BT-61)</label>
        <nummer>BT-61</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Supporting_document_reference'">
        <label>Kennung (BT-122)</label>
        <nummer>BT-122</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Supporting_document_description'">
        <label>Beschreibung (BT-123)</label>
        <nummer>BT-123</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:External_document_location'">
        <label>Verweis (z.B. Internetadresse)(BT-124)</label>
        <nummer>BT-124</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Attached_document'">
        <label>Anhangsdokument (BT-125)</label>
        <nummer>BT-125</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Attached_document/@mime_code'">
        <label>Format des Anhangdokuments (BT-125)</label>
        <nummer>BT-125</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Attached_document/@filename'">
        <label>Name des Anhangsdokuments (BT-125)</label>
        <nummer>BT-125</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xrv:zeitstempel'">
        <label>Datum/Uhrzeit</label>
        <nummer></nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xrv:betreff'">
        <label>Betreff</label>
        <nummer></nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xrv:text'">
        <label>Text</label>
        <nummer></nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xrv:details'">
        <label>Details</label>
        <nummer></nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Invoice_line_note'">
        <label>Freitext (BT-127)</label>
        <nummer>BT-127</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Invoice_line_object_identifier'">
        <label>Objektkennung (BT-128)</label>
        <nummer>BT-128</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Invoice_line_object_identifier/@scheme_identifier'">
        <label>Schema der Objektkennung (BT-128)</label>
        <nummer>BT-128</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Referenced_purchase_order_line_reference'">
        <label>Nummer der Auftragsposition (BT-132)</label>
        <nummer>BT-132</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Invoice_line_Buyer_accounting_reference'">
        <label>Kostenstelle Pos. (BT-133)</label>
        <nummer>BT-133</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Invoice_line_Buyer_accounting_reference'">
        <label>Kostenstelle Pos. (BT-133)</label>
        <nummer>BT-133</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Invoice_line_period_start_date'">
        <label>von (BT-134)</label>
        <nummer>BT-134</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Invoice_line_period_end_date'">
        <label>bis (BT-135)</label>
        <nummer>BT-135</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Invoice_line_period_end_date'">
        <label>bis (BT-135)</label>
        <nummer>BT-135</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Invoiced_quantity'">
        <label>Menge (BT-129)</label>
        <nummer>BT-129</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Invoiced_quantity_unit_of_measure_code'">
        <label>Einheit (BT-130)</label>
        <nummer>BT-130</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Item_net_price'">
        <label>Preis pro Einheit (netto)(BT-146)</label>
        <nummer>BT-146</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Invoice_line_net_amount'">
        <label>Gesamtpreis (netto)(BT-131)</label>
        <nummer>BT-131</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Item_price_discount'">
        <label>Rabatt (netto)(BT-147)</label>
        <nummer>BT-147</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Item_gross_price'">
        <label>Listenpreis (netto)(BT-148)</label>
        <nummer>BT-148</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Item_price_base_quantity'">
        <label>Anzahl der Einheit (BT-149)</label>
        <nummer>BT-149</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Item_price_base_quantity_unit_of_measure'">
        <label>Code der Maßeinheit (BT-150)</label>
        <nummer>BT-150</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Invoiced_item_VAT_category_code'">
        <label>Umsatzsteuer (BT-151)</label>
        <nummer>BT-151</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Invoiced_item_VAT_rate'">
        <label>Umsatzsteuersatz in % (BT-152)</label>
        <nummer>BT-152</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Item_name'">
        <label>Bezeichnung (BT-153)</label>
        <nummer>BT-153</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Item_description'">
        <label>Beschreibung (BT-154)</label>
        <nummer>BT-154</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Item_Sellers_identifier'">
        <label>Artikelnummer BT-155)</label>
        <nummer>BT-155</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Item_Buyers_identifier'">
        <label>Kunden-Material-Nr. (BT-156)</label>
        <nummer>BT-156</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Item_standard_identifier'">
        <label>Artikelkennung (EAN)(BT-157)</label>
        <nummer>BT-157</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Item_standard_identifier/@scheme_identifier'">
        <label>Schema der Artikelkennung (BT-157)</label>
        <nummer>BT-157</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Item_classification_identifier'">
        <label>Code der Artikelklassifizierung (BT-158)</label>
        <nummer>BT-158</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Item_classification_identifier/@scheme_identifier'">
        <label>Kennung zur Bildung des Schemas (BT-158)</label>
        <nummer>BT-158</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Item_classification_identifier/@scheme_version_identifier'">
        <label>Version zur Bildung des Schemas (BT-158)</label>
        <nummer>BT-158</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Item_country_of_origin'">
        <label>Code des Herkunftslandes (BT-159)</label>
        <nummer>BT-159</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Invoice_line_allowance_base_amount'">
        <label>Grundbetrag (netto)(BT-137)</label>
        <nummer>BT-137</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Invoice_line_allowance_percentage'">
        <label>Prozentsatz (BT-138)</label>
        <nummer>BT-138</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Invoice_line_allowance_amount'">
        <label>Nachlass (netto)(BT-136)</label>
        <nummer>BT-136</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Invoice_line_allowance_reason'">
        <label>Grund des Nachlasses (BT-139)</label>
        <nummer>BT-139</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Invoice_line_allowance_reason_code'">
        <label>Code für den Nachlassgrund (BT-140)</label>
        <nummer>BT-140</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Invoice_line_charge_base_amount'">
        <label>Grundbetrag (netto)(BT-142)</label>
        <nummer>BT-142</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Invoice_line_charge_percentage'">
        <label>Prozentsatz (BT-143)</label>
        <nummer>BT-143</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Invoice_line_charge_amount'">
        <label>Zuschlag (netto)(BT-141)</label>
        <nummer>BT-141</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Invoice_line_charge_reason'">
        <label>Grund des Zuschlags (BT-144)</label>
        <nummer>BT-144</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'xr:Invoice_line_charge_reason_code'">
        <label>Code für den Zuschlagsgrund (BT-145)</label>
        <nummer>BT-145</nummer>
      </xsl:when>


      
      <xsl:when test="$identifier = 'uebersicht'">
        <label>Übersicht</label>
        <nummer></nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'uebersichtKaeufer'">
        <label>Informationen zum Käufer (BG-7)</label>
        <nummer>BG-7</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'uebersichtVerkaeufer'">
        <label>Informationen zum Verkäufer (BG-4)</label>
        <nummer>BG-4</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'uebersichtRechnungsInfo'">
        <label>Rechnungsdaten</label>
        <nummer>BG-4</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'uebersichtRechnungsuebersicht'">
        <label>Gesamtbeträge der Rechnung (BG-22)</label>
        <nummer>BG-22</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'uebersichtUmsatzsteuer'">
        <label>Aufschlüsselung der Umsatzsteuer auf Ebene der Rechnung (BG-23)</label>
        <nummer>BG-23</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'uebersichtNachlass'">
        <label>Nachlässe auf Ebene der Rechnung (BG-20)</label>
        <nummer>BG-20</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'uebersichtZuschlaege'">
        <label>Zuschläge auf Ebene der Rechnung (BG-21)</label>
        <nummer>BG-21</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'uebersichtRechnungAbrechnungszeitraum'">
        <label>Abrechnungszeitraum</label>
      </xsl:when>
      <xsl:when test="$identifier = 'uebersichtRechnungVorausgegangeneRechnungen'">
        <label>Vorausgegangene Rechnungen</label>
      </xsl:when>
      <xsl:when test="$identifier = 'uebersichtZahlungInfo'">
        <label>Zahlungsdaten (BG-4)</label>
        <nummer>BG-4</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'uebersichtZahlungKarte'">
        <label>Karteninformationen (BG-18)</label>
        <nummer>BG-18</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'uebersichtZahlungLastschrift'">
        <label>Lastschrift (BG-19)</label>
        <nummer>BG-19</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'uebersichtZahlungUeberweisung'">
        <label>Überweisung (BG-17)</label>
        <nummer>BG-17</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'uebersichtBemerkungen'">
        <label>Bemerkungen zur Rechnung (BG-1)</label>
        <nummer>BG-1</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'details'">
        <label>Details</label>
        <nummer></nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'detailsPositionAbrechnungszeitraum'">
        <label>Abrechnungszeitraum (BG-26)</label>
        <nummer>BG-26</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'detailsPositionPreiseinzelheiten'">
        <label>Preiseinzelheiten (BG-29)</label>
        <nummer>BG-29</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'detailsPositionNachlaesse'">
        <label>Nachlässe auf Ebene der Rechnungsposition (BG-27)</label>
        <nummer>BG-27</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'detailsPositionZuschlaege'">
        <label>Zuschläge auf Ebene der Rechnungsposition (BG-28)</label>
        <nummer>BG-28</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'detailsPositionArtikelinformationen'">
        <label>Artikelinformationen (BG-31)</label>
        <nummer>BG-31</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'detailsPositionArtikeleigenschaften'">
        <label>Eigenschaften des Artikels (BG-32)</label>
        <nummer>BG-32</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'zusaetze'">
        <label>Zusätze</label>
        <nummer></nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'zusaetzeVerkaeufer'">
        <label>Informationen zum Verkäufer (BG-4)</label>
        <nummer>BG-4</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'zusaetzeSteuervertreter'">
        <label>Steuervertreter des Verkäufers (BG-11)</label>
        <nummer>BG-11</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'zusaetzeKaeufer'">
        <label>Informationen zum Käufer (BG-7)</label>
        <nummer>BG-7</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'zusaetzeLieferung'">
        <label>Lieferinformationen (BG-13)</label>
        <nummer>BG-13</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'zusaetzeVertrag'">
        <label>Informationen zum Vertrag</label>
        <nummer></nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'zusaetzeZahlungsempfaenger'">
        <label>Vom Verkäufer abweichender Zahlungsempfänger (BG-10)</label>
        <nummer>BG-10</nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'laufzettel'">
        <label>Laufzettel</label>
        <nummer></nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'laufzettelHistorie'">
        <label>Bearbeitungshistorie</label>
        <nummer></nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'anlagen'">
        <label>Anlagen</label>
        <nummer></nummer>
      </xsl:when>
      <xsl:when test="$identifier = 'anlagenListe'">
        <label>Rechnungsbegründende Unterlagen</label>
        <nummer></nummer>
      </xsl:when>
      

      <xsl:otherwise>
        <label>Unbekannt</label>
        <nummer>unknown</nummer>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

</xsl:stylesheet>
