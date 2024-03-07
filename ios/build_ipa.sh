#!/bin/bash
xcodebuild -workspace cicd.xcworkspace -scheme cicd -configuration Debug -destination 'generic/platform=iOS' archive -archivePath build/cicd.xcarchive CODE_SIGN_STYLE=Automatic CODE_SIGNING_REQUIRED=NO CODE_SIGN_IDENTITY= PROVISIONING_PROFILE=
xcodebuild -exportArchive -archivePath build/cicd.xcarchive -exportOptionsPlist exportOptions.plist -exportPath build/cicd
mv build/cicd/*.ipa ../debug-ios.ipa
chmod +x build_ipa.sh
./build_ipa.sh
