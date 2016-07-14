Batmobile
=========

Batmobile is a sample project that implements ride requests using the `Intents` framework (aka SiriKit). Rides can be “requested”* using both Siri, and within the Maps app.

![Siri screenshot](https://raw.githubusercontent.com/Buglife/Batmobile/acf1ce38d3ea96a22a7079482957f62d44ad22fa/Batmobile/Screenshots/Screenshot1.png) ![Maps screenshot](https://raw.githubusercontent.com/Buglife/Batmobile/acf1ce38d3ea96a22a7079482957f62d44ad22fa/Batmobile/Screenshots/Screenshot2.png)

\* Rides are never *actually* requested, though it would be trivial to plug in the Lyft or Uber API.

## Usage

1. First, we need to create a new app ID with the SiriKit entitlement. Log into the developer portal, and head to Certificates, Identifiers & Profiles. Select "App IDs", and click the create button (+).
	* App ID Description: This can be anything.
	* Bundle ID: com.buglife.sirikitapp
	* Make sure that "SiriKit" is checked under App Services
2. Open the project in Xcode 8.0. For each target (Batmobile, BatmobileIntentsExtension, BatmobileIntentsExtensionUI), select your Team under the General > Signing panel. Let Xcode auto-generate provisioning profiles for these targets when asked.
3. Build & run the app on your device. Confirm when prompted w/ the Siri permissions dialog.
4. Once you have authorized the app to use Siri, there are two ways to request a ride:
	* Ask Siri "Request a ride in the Batmobile"
	* Open the Maps app, get directions to a location, and select the **Ride** tab

## License

Batmobile is released under the MIT license. See LICENSE.txt for details.
