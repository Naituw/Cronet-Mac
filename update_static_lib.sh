#!/bin/bash

BASE_DIR=`dirname $0`
FRAMEWORK_PROJECT_PATH="${BASE_DIR}/Example/CronetFramework/"
DERIVED_DATA_PATH="${FRAMEWORK_PROJECT_PATH}/DerivedData"
XCODE_OUTPUT_LIB_PATH="${DERIVED_DATA_PATH}/Build/Products/Release/CronetNetworking/libCronetNetworking.a"
RESULT_LIB_PATH="${BASE_DIR}/libCronetNetworking.a"

rm -f $RESULT_LIB_PATH || true
rm -f $XCODE_OUTPUT_LIB_PATH || true

xcodebuild -workspace "${FRAMEWORK_PROJECT_PATH}/CronetFramework.xcworkspace" -scheme CronetFramework -configuration Release -derivedDataPath "$DERIVED_DATA_PATH"

if [ -e $XCODE_OUTPUT_LIB_PATH ]
then
    strip -S -x -o $RESULT_LIB_PATH -r $XCODE_OUTPUT_LIB_PATH
    echo "Completed!"
else
    echo "Can't find output lib file: $XCODE_OUTPUT_LIB_PATH"
fi