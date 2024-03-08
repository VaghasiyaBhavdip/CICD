#!/bin/bash

# Path to the generated AAB file
AAB_FILE="./android/app/build/outputs/bundle/release/app-release.aab"

# Command to build the AAB using bundletool
bundletool='bundletool-all-1.10.0.jar' # Adjust this to your bundletool version
java -jar $bundletool build-apks --bundle=./android/app/build/outputs/bundle/release/app-release.aab --output=$AAB_FILE --overwrite
