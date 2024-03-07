#!/bin/bash
xcodebuild -workspace YourProjectName.xcworkspace -scheme cicd -configuration Debug -destination 'generic/platform=iOS' archive -archivePath build/YourProjectName.xcarchive CODE_SIGN_STYLE=Automatic CODE_SIGNING_REQUIRED=NO CODE_SIGN_IDENTITY= PROVISIONING_PROFILE=
xcodebuild -exportArchive -archivePath build/YourProjectName.xcarchive -exportOptionsPlist exportOptions.plist -exportPath build/YourProjectName
mv build/YourProjectName/*.ipa ../debug-ios.ipa
chmod +x build_ipa.sh
./build_ipa.sh
