# Validator Configuration for Peppol Billing BIS 3.0

This is a special configuration of the [KoSIT Validator](https://github.com/itplr-kosit/validator).

If you think you have found a bug, please [contact us](https://xeinkauf.de/peppol/).

Existing issues can be found at [our issue tracker](https://projekte.kosit.org/peppol/validator-configuration-bis/-/issues).

You can find packaged releases on [our GitLab project](https://projekte.kosit.org/peppol/validator-configuration-bis/-/releases).


This validator uses the latest Peppol BIS 2024-05 rules.

This is the "May 2024" release announced on 2024-05-27.

It is valid per 2024-08-27 00:00 CEST.

The next Peppol update is foreseen in November 2024.

**Please note: this configuration uses validation artefacts published by OpenPeppol ([OpenPeppol - GitHub](https://github.com/OpenPEPPOL)). Please use the [Peppol Service desk](https://openpeppol.atlassian.net/servicedesk/customer/portal/1) to report any issues related to the validation. KoSIT is offering this configuration of the [KoSIT Validator](https://github.com/itplr-kosit/validator), but excludes any liability.**

## Getting started

### Prerequisites

Required tools:
* curl
* unzip

As a prerequisite you need the KoSIT Validator to run it.

```shell
# download validator
curl -L "https://github.com/itplr-kosit/validator/releases/download/v1.4.2/validator-1.4.2-distribution.zip" --output validator.zip

# unzip the validator (ensure the target directory "bin" is empty before unzipping)
unzip validator.zip -d bin/
```

### Running the validator

Required tools:
* Java 1.8 or Java 11 - Java 17 does not seem to work

Verify all examples files (`test-files/good/*.xml`) and produced HTML output to directory `result-reports/` - all of them should be valid:

```shell
java -jar bin/validationtool-1.4.2-java8-standalone.jar -s scenarios.xml -h -o result-reports/ test-files/good/ubl/*.xml
```

Note: eventually you need to explicitly use `"%JAVA_HOME%\bin\java"` on Windows

Validator 1.4.2 help:

```
usage: check-tool  -s <scenario-config-file> [OPTIONS] [FILE]...
 -?,--help                                 Displays this help
 -c,--check-assertions <assertions-file>   Check the result using defined
                                           assertions
 -D,--daemon                               Starts a daemon listing for
                                           validation requests
 -d,--debug                                Prints some more debug
                                           information
 -G,--disable-gui                          Disables the GUI of the daemon
                                           mode
 -H,--host <arg>                           The hostname / IP address to
                                           bind the daemon. Default is
                                           localhost
 -h,--html                                 Extract and save any html
                                           content within  result as a
                          separate file
 -l,--log-level <arg>                      Enables a certain log level for
                                           debugging purposes
  -m, --memory-stats    Prints some memory stats
 -o,--output-directory <arg>               Defines the out directory for
                                           results. Defaults to cwd
 -P,--port <arg>                           The port to bind the daemon.
                                           Default is 8080
 -p,--print                                Prints the check result to
                                           stdout
 -r,--repository <arg>                     Directory containing scenario
                                           content
    --report-postfix <arg>                 Postfix of the generated report
                                           name
    --report-prefix <arg>                  Prefix of the generated report
                                           name
 -s,--scenarios <arg>                      Location of scenarios.xml e.g.
 -T,--threads <arg>                        Number of threads processing
                                           validation requests
 -X,--debug-logging                        Enables full debug log. Alias
                                           for -l debug
```

## Building a release

Required tools:
* zip

```shell
zip -r -9 validation-configuration-bis-3.0.17.zip README.md scenarios.xml resources/*
```
