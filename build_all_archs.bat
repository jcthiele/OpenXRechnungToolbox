call mvn clean
REM call mvn install -P windows_32bit_excl_java
call mvn install -P windows_32bit_excl_java
call mvn install -P windows_64bit_excl_java
call mvn install -P windows_64bit_incl_java

REM call mvn install -P linux_32bit
call mvn install -P linux_64bit

REM call mvn install -P mac_32bit
call mvn install -P mac_64bit
call mvn install -P mac_arm64
