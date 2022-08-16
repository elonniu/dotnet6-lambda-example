#!/bin/bash
WD=$PWD
cd dotnet6-lambda-example
rm -rf bin
dotnet restore
dotnet publish
cd bin/Debug/net6.0/publish && zip -r package.zip *
cd $WD
