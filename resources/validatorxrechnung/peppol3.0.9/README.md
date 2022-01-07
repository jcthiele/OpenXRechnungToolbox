# Validator Configuration for Peppol BIS

This validator uses the latest Peppol BIS 3.0.9 rules.
This is the Fall 2020 release hotfix from 2020-11-12.
It is valid per November 16th, 2020.

The next update is foreseen in May 2021.

## Getting started

### Prerequisites

Required tools:
* curl
* unzip

As a prerequisite you need the KoSIT Validator to run it.

```shell
# download validator
curl -L "https://github.com/itplr-kosit/validator/releases/download/v1.4.1/validationtool-1.4.1.zip" --output validator.zip

# unzip the validator (ensure the target directory "bin" is empty before unzipping)
unzip validator.zip -d bin/
```

### Running the validator

Required tools:
* Java 1.8 or newer

Verify all examples files (`test-files/3.0.9/*.xml`) and produced HTML output to directory `result-reports/` - all of them should be valid:

```shell
java -jar bin/validationtool-1.4.1-java8-standalone.jar -s scenarios.xml -h -o result-reports/ test-files/good/*.xml
```

Validator 1.4.1 help:

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
 -m,--memory-stats                         Prints some memory stats
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
zip -r -9 dist/validation-configuration-bis-3.0.9.zip README.md scenarios.xml resources/*
```
