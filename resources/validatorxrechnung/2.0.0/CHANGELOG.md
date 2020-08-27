# Changelog

All notable changes to the Validator Configuration for XRechnung and this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/).
<!--
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).
-->

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

- Now include XRechnung Schematron Rules 1.2.1
- Include CEN Rules 1.2.1


## v2018-12-19

This release is compatible to XRechnung 1.2.0.

Because of new XRechnung Schematron Rules 1.2.0 it might break your validation and business workflow. Please evaluate impact!

### Added

- Changelog

### Changed

- Now include XRechnung Schematron Rules 1.2.0
- Made Scenario match only new XRechnung Version 1.2.0 Specification Identifier BT-24 (see #6)
