# Validator Configuration for XRechnung

[Validator](https://github.com/itplr-kosit/validator) configuration for Universal Business Language (UBL) and UN/CEFACT Invoice and CreditNote documents against EN16931:2017 and the German [Core Invoice Usage Specification (CIUS) XRechnung](https://www.xoev.de/die_standards/xrechnung-14741).

It contains all necessary XML Schema and Schematron rules to validate UBL and CII invoice XML documents for conformity with [CIUS XRechnung](https://www.xoev.de/die_standards/xrechnung-14741).

In particular:

* [Schematron of EN16931:2017](https://github.com/CenPC434/validation)
* [Schematron of CIUS XRechnung](https://github.com/itplr-kosit/xrechnung-schematron/)
* [XML Schema of UBL Invoice and CreditNote version 2.1](http://docs.oasis-open.org/ubl/os-UBL-2.1/)
* [XML Schema of UN/CEFACT uncoupled version 16b](http://www.unece.org/cefact/xml_schemas/index.html)

## Usage

Change according to your environment.

In an empty directory:

1. Downloads:

```shell
# download validator
curl -L 'https://github.com/itplr-kosit/validator/releases/download/validationtool-1_0_1/validationtool-dist-1.0.1-standalone.zip' --output validator.zip

# download configuration
curl -L 'https://github.com/itplr-kosit/validator-configuration-xrechnung/releases/download/release-2018-12-19/validator-configuration-xrechnung_1.2.0_2018-12-19.zip' --output validator-configuration.zip

# download a test document
curl -L 'https://raw.githubusercontent.com/itplr-kosit/xrechnung-testsuite/master/instances/01.01a-INVOICE_ubl.xml' --output ubl.xml
# show content of directory
ls
# should show something like this:
ubl.xml validator.zip  validator-configuration.zip
```

2. Unzip

```shell
unzip validator.zip
unzip validator-configuration.zip
```

3. Run Validator

```shell
java -jar validationtool-1.0.1-standalone.jar -s scenarios.xml  -h ubl.xml
```

Validation reports are then written to `${test-document-file-name}-report.xml` and `${test-document-file-name}-report.html` e.g. `ubl-report.xml` and `ubl-report.html` according to above example.

## Versioning

The git master branch always has the latest code. Since March 2018 new releases have the following naming and versioning scheme:

The source code gets tagged with `release-${release-date}` and distributions get the name `validator-configuration-xrechnung_${xrechnung-version}_${release-date}` e.g. `validator-configuration-xrechnung_1.2.0_2018-12-19.zip`

## Releases

The release only contains the XML Schema and Schematron Rules for the validator configuration for XRechnung.

It is always recommended to update to the latest release.

Here you can [download the latest release](https://github.com/itplr-kosit/validator-configuration-xrechnung/releases/latest).

## Build from Scratch

This repository contains an ANT `build.xml` which allows downloading all necessary tools and artefacts for creating this validator configuration for XRechnung. It also allows testing the configuration against a few UBL and UN/CEFACT documents and creates a release zip file.
