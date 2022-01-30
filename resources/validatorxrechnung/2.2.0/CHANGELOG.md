# Changelog

All notable changes to the Validator Configuration for XRechnung and this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/).
<!--
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).
-->

## UNRELEASED
This release is compatible with XRechnung ?
Because of new CEN Rules version ? and XRechnung Schematron ? it might break your validation and business workflow. Please evaluate impact!


## 2022-01-31

This release is compatible with XRechnung 2.2.0
Because of new CEN Rules version 1.3.7 and XRechnung Schematron 1.7.0 it might break your validation and business workflow. Please evaluate impact!

### Added

* Scenario for CII Extension
* Set custom rule levels of `BR-CL-10`, `BR-CL-11`, `BR-CL-25`, and `BR-CL-26`to "information" in Extension scenarios
* Integration tests for the custom levels of the Extension scenarios

### Changed

* Using [CEN Schematron Rules 1.3.7](https://github.com/ConnectingEurope/eInvoicing-EN16931/releases/tag/validation-1.3.7)
* Using [XRechnung Schematron 1.7.0](https://github.com/itplr-kosit/xrechnung-schematron/releases/tag/release-1.7.0)
* Using [XRechnung Testsuite 2022-01-31](https://github.com/itplr-kosit/xrechnung-testsuite/releases/tag/release-2022-01-31) 

## 2021-11-15

This release is compatible to XRechnung 2.1.1.

### Changed

* Using [XRechnung Schematron 1.6.1](https://github.com/itplr-kosit/xrechnung-schematron/releases/tag/release-1.6.1)
* Using [XRechnung Testsuite 2021-11-15](https://github.com/itplr-kosit/xrechnung-testsuite/releases/tag/release-2021-11-15)

## 2021-07-31

This release is compatible to XRechnung 2.1.1.
Because of new and custom fixed CEN Rules version 1.3.6a and XRechnung Schematron 1.6.0 it might break your validation and business workflow. Please evaluate impact!

### Changed

* Using KoSIT Validator v1.4.2
* Using [CEN Schematron Rules 1.3.6a](https://github.com/phax/eInvoicing-EN16931/releases/tag/validation-1.3.6a) from a fork fixing Rule BR-CO-15 
* Using [XRechnung Schematron 1.6.0](https://github.com/itplr-kosit/xrechnung-schematron/releases/tag/release-1.6.0)
* Using [XRechnung Testsuite 2021-07-31](https://github.com/itplr-kosit/xrechnung-testsuite/releases/tag/release-2021-07-31)
* Enhanced `development.md` documentation (thx to phax)

### Added

* Release HowTo section in development.md

## 2020-12-31

This release is compatible to XRechnung 2.0.1.

Because of new CEN Rules version 1.3.3 and XRechnung Schematron 1.5.0 it might break your validation and business workflow. Please evaluate impact!

### Changed

* Using [CEN Schematron Rules 1.3.3](https://github.com/ConnectingEurope/eInvoicing-EN16931/releases/tag/validation-1.3.3)
* Using [XRechnung Schematron 1.5.0](https://github.com/itplr-kosit/xrechnung-schematron/releases/tag/release-1.5.0)
* Using [XRechnung Testsuite 2020-12-31](https://github.com/itplr-kosit/xrechnung-testsuite/releases/tag/release-2020-12-31)
* More documentation on testing and build infrastructure

### Added

* Integration testing to avoid configuration errors

### FIXED

* Custom error levels also for CreditNote and CII

<!-- Older releases -->

## 2020-07-31

This release is compatible to XRechnung 2.0.0.

Because of new CEN Rules version 1.3.2 it might break your validation and business workflow. Please evaluate impact!

### Changed

* Build assumes a java runtime version > 8
* Build and test with validator version 1.4.0

### Added

* Scenarios for matching general EN 16931 invoices
* Full automatic test against xrechnung-testsuite
* Introduced development.build.properties for local developers of xrechnung configuration

### Changed

* Now include XRechnung [Schematron Rules 1.4.0](https://github.com/itplr-kosit/xrechnung-schematron/releases/tag/release-1.4.0)
* Include [CEN Rules 1.3.2](https://github.com/ConnectingEurope/eInvoicing-EN16931/releases/tag/validation-1.3.2)

## v2019-12-30

This release is compatible to XRechnung 1.2.2.

Because of new CEN Rules version 1.3.0 and several commits since then it might break your validation and business workflow. Please evaluate impact!

### Added

* Use of xml-mutate for integration tests of CEN rules in build script

### Changed

* Now include XRechnung [Schematron Rules 1.3.0](https://github.com/itplr-kosit/xrechnung-schematron/releases/tag/release-1.3.0)
* Include [CEN Rules 1.3.0](https://github.com/ConnectingEurope/eInvoicing-EN16931/releases/tag/validation-1.3.0) and commits [until 2019-12-23](https://github.com/ConnectingEurope/eInvoicing-EN16931/tree/618ae95f35d4f2a1187eee5e0f63695fde87fbd6)

## v2019-06-24

This release is compatible to XRechnung 1.2.1.

Because of new CEN Rules 1.2.1 it might break your validation and business workflow. Please evaluate impact!

### Changed

* Now include XRechnung Schematron Rules 1.2.1
* Include CEN Rules 1.2.1

## v2018-12-19

This release is compatible to XRechnung 1.2.0.

Because of new XRechnung Schematron Rules 1.2.0 it might break your validation and business workflow. Please evaluate impact!

### Added

* Changelog

### Changed

* Now include XRechnung Schematron Rules 1.2.0
* Made Scenario match only new XRechnung Version 1.2.0 Specification Identifier BT-24 (see #6)
