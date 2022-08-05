#  Apple TV Renamer - Client

This is a test project for me to refresh my Swift knowledge, learn SwiftUI, and think through a challenging project idea.

## What it's supposed to do

With a proper Jamf Pro setup...

1. Plug in Apple TV that's enrolled in your Apple Business Manager account
2. Wait for it to complete Automated Setup Assistant
3. This client app appears to ask you what the Apple TV will be used for and where
4. The Apple TV gets the correct name in your naming convention, which prepares it for digital signage, conference room display, or whatever else you have cooking.

This repository contains the client application, which (I imagine) will use Managed App Config to determine how to contact and authenticate to the ATR coordinator, retrieve the configuration for the user-facing form, and send back the user's choices.

## License

Copyright 2022 Dalton Durst

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
