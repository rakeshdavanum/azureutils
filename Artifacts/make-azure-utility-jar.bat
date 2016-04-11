REM Extract azure-blob-storage-utils.jar
REM Add azure_credentials.properties
REM Add contents of uber.jar
REM Create a new jar called azure-utility.jar containing both the above

rmdir /S /Q azure-utility
mkdir azure-utility
cd azure-utility
jar -xvf ../azure-utility.jar
copy ..\azure_credentials.properties .
jar -cvf ../azure-utility.jar *
cd .. 
rmdir /S /Q azure-utility

REM java -classpath azure-utility.jar com.microsoft.analytics.UnzipUtility