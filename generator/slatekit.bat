@if "%DEBUG%" == "" @echo off
@rem ##########################################################################
@rem
@rem  slatekit startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

set DIRNAME=%~dp0
if "%DIRNAME%" == "" set DIRNAME=.
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%..

@rem Add default JVM options here. You can also use JAVA_OPTS and SLATEKIT_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS=

@rem Find java.exe
if defined JAVA_HOME goto findJavaFromJavaHome

set JAVA_EXE=java.exe
%JAVA_EXE% -version >NUL 2>&1
if "%ERRORLEVEL%" == "0" goto init

echo.
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:findJavaFromJavaHome
set JAVA_HOME=%JAVA_HOME:"=%
set JAVA_EXE=%JAVA_HOME%/bin/java.exe

if exist "%JAVA_EXE%" goto init

echo.
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:init
@rem Get command-line arguments, handling Windows variants

if not "%OS%" == "Windows_NT" goto win9xME_args

:win9xME_args
@rem Slurp the command line arguments.
set CMD_LINE_ARGS=
set _SKIP=2

:win9xME_args_slurp
if "x%~1" == "x" goto execute

set CMD_LINE_ARGS=%*

:execute
@rem Setup the command line

set CLASSPATH=%APP_HOME%\lib\slatekit.jar;%APP_HOME%\lib\slatekit-server.jar;%APP_HOME%\lib\slatekit-integration.jar;%APP_HOME%\lib\slatekit-orm.jar;%APP_HOME%\lib\slatekit-db.jar;%APP_HOME%\lib\slatekit-entities.jar;%APP_HOME%\lib\slatekit-generator.jar;%APP_HOME%\lib\slatekit-apis.jar;%APP_HOME%\lib\slatekit-meta.jar;%APP_HOME%\lib\slatekit-cloud.jar;%APP_HOME%\lib\slatekit-providers.jar;%APP_HOME%\lib\ktor-server-netty-1.1.1.jar;%APP_HOME%\lib\ktor-metrics-1.1.1.jar;%APP_HOME%\lib\ktor-server-host-common-1.1.1.jar;%APP_HOME%\lib\ktor-server-core-1.1.1.jar;%APP_HOME%\lib\ktor-http-cio-1.1.1.jar;%APP_HOME%\lib\ktor-http-jvm-1.1.1.jar;%APP_HOME%\lib\ktor-network-1.1.1.jar;%APP_HOME%\lib\ktor-utils-jvm-1.1.1.jar;%APP_HOME%\lib\kotlin-reflect-1.3.21.jar;%APP_HOME%\lib\slatekit-app.jar;%APP_HOME%\lib\slatekit-cli.jar;%APP_HOME%\lib\slatekit-cmds.jar;%APP_HOME%\lib\slatekit-jobs.jar;%APP_HOME%\lib\slatekit-functions.jar;%APP_HOME%\lib\slatekit-cache.jar;%APP_HOME%\lib\slatekit-core.jar;%APP_HOME%\lib\slatekit-tracking.jar;%APP_HOME%\lib\slatekit-query.jar;%APP_HOME%\lib\slatekit-notifications.jar;%APP_HOME%\lib\slatekit-common.jar;%APP_HOME%\lib\slatekit-result.jar;%APP_HOME%\lib\kotlin-stdlib-jdk8-1.3.21.jar;%APP_HOME%\lib\kotlinx-coroutines-jdk8-1.1.0.jar;%APP_HOME%\lib\kotlinx-coroutines-io-jvm-0.1.3.jar;%APP_HOME%\lib\kotlinx-coroutines-core-1.1.0.jar;%APP_HOME%\lib\kotlin-stdlib-jdk7-1.3.21.jar;%APP_HOME%\lib\kotlinx-io-jvm-0.1.3.jar;%APP_HOME%\lib\atomicfu-0.12.0.jar;%APP_HOME%\lib\kotlin-stdlib-1.3.21.jar;%APP_HOME%\lib\mysql-connector-java-5.1.13.jar;%APP_HOME%\lib\okhttp-3.9.0.jar;%APP_HOME%\lib\threetenbp-1.3.8.jar;%APP_HOME%\lib\kotlinx-coroutines-io-0.1.3.jar;%APP_HOME%\lib\kotlinx-coroutines-core-common-1.1.0.jar;%APP_HOME%\lib\kotlinx-io-0.1.3.jar;%APP_HOME%\lib\kotlin-stdlib-common-1.3.21.jar;%APP_HOME%\lib\annotations-13.0.jar;%APP_HOME%\lib\okio-1.13.0.jar;%APP_HOME%\lib\aws-java-sdk-dynamodb-1.11.100.jar;%APP_HOME%\lib\aws-java-sdk-s3-1.11.100.jar;%APP_HOME%\lib\aws-java-sdk-sqs-1.11.100.jar;%APP_HOME%\lib\aws-java-sdk-kms-1.11.100.jar;%APP_HOME%\lib\aws-java-sdk-core-1.11.100.jar;%APP_HOME%\lib\json-simple-1.1.jar;%APP_HOME%\lib\logback-ext-loggly-0.1.2.jar;%APP_HOME%\lib\logback-classic-1.1.2.jar;%APP_HOME%\lib\logback-core-1.1.2.jar;%APP_HOME%\lib\micrometer-registry-datadog-1.3.2.jar;%APP_HOME%\lib\httpclient-4.5.2.jar;%APP_HOME%\lib\commons-logging-1.2.jar;%APP_HOME%\lib\ion-java-1.0.2.jar;%APP_HOME%\lib\jmespath-java-1.11.100.jar;%APP_HOME%\lib\jackson-databind-2.6.6.jar;%APP_HOME%\lib\jackson-dataformat-cbor-2.6.6.jar;%APP_HOME%\lib\joda-time-2.8.1.jar;%APP_HOME%\lib\metrics-jvm-3.2.4.jar;%APP_HOME%\lib\metrics-core-3.2.4.jar;%APP_HOME%\lib\slf4j-api-1.7.28.jar;%APP_HOME%\lib\config-1.3.1.jar;%APP_HOME%\lib\netty-codec-http2-4.1.24.Final.jar;%APP_HOME%\lib\alpn-api-1.1.3.v20160715.jar;%APP_HOME%\lib\micrometer-core-1.3.2.jar;%APP_HOME%\lib\commons-text-1.8.jar;%APP_HOME%\lib\httpcore-4.4.4.jar;%APP_HOME%\lib\commons-codec-1.9.jar;%APP_HOME%\lib\jackson-annotations-2.6.0.jar;%APP_HOME%\lib\jackson-core-2.6.6.jar;%APP_HOME%\lib\atomicfu-common-0.12.0.jar;%APP_HOME%\lib\netty-codec-http-4.1.24.Final.jar;%APP_HOME%\lib\netty-handler-4.1.24.Final.jar;%APP_HOME%\lib\HdrHistogram-2.1.11.jar;%APP_HOME%\lib\LatencyUtils-2.0.3.jar;%APP_HOME%\lib\commons-lang3-3.9.jar;%APP_HOME%\lib\netty-codec-4.1.24.Final.jar;%APP_HOME%\lib\netty-transport-4.1.24.Final.jar;%APP_HOME%\lib\netty-buffer-4.1.24.Final.jar;%APP_HOME%\lib\netty-resolver-4.1.24.Final.jar;%APP_HOME%\lib\netty-common-4.1.24.Final.jar

@rem Execute slatekit
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %SLATEKIT_OPTS%  -classpath "%CLASSPATH%" slatekit.RunKt %CMD_LINE_ARGS%

:end
@rem End local scope for the variables with windows NT shell
if "%ERRORLEVEL%"=="0" goto mainEnd

:fail
rem Set variable SLATEKIT_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
if  not "" == "%SLATEKIT_EXIT_CONSOLE%" exit 1
exit /b 1

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega
