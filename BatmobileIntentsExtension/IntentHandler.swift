//
//    IntentHandler.swift
//
//    Copyright (c) 2016 Buglife, Inc. (https://www.buglife.com/)
//
//    MIT License
//
//    Permission is hereby granted, free of charge, to any person obtaining
//    a copy of this software and associated documentation files (the
//    "Software"), to deal in the Software without restriction, including
//    without limitation the rights to use, copy, modify, merge, publish,
//    distribute, sublicense, and/or sell copies of the Software, and to
//    permit persons to whom the Software is furnished to do so, subject to
//    the following conditions:
//
//    The above copyright notice and this permission notice shall be
//    included in all copies or substantial portions of the Software.
//
//    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
//    EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
//    MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
//    NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
//    LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
//    OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
//    WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.


import Intents

// As an example, this class is set up to handle the Ride intents.

// You can test your example integration by saying things to Siri like:
// "Request a ride using Batmobile"

class IntentHandler: INExtension, INRidesharingDomainHandling {
    
    override func handler(for intent: INIntent) -> AnyObject {
        // This is the default implementation.  If you want different objects to handle different intents,
        // you can override this and return the handler you want for that particular intent.
        
        return self
    }
    
    // MARK: - INRequestRideIntentHandling
    
    func handle(requestRide intent: INRequestRideIntent, completion: (INRequestRideIntentResponse) -> Swift.Void) {
        let response = INRequestRideIntentResponse(code: .inProgress, userActivity: nil)
        completion(response)
    }
    
    // MARK: - INListRideOptionsIntentHandling
    
    func handle(listRideOptions intent: INListRideOptionsIntent, completion: (INListRideOptionsIntentResponse) -> Void) {
        let response = INListRideOptionsIntentResponse(code: .success, userActivity: nil)
        
        let pickupDate = Date(timeIntervalSinceNow: 240)
        let rideOption = INRideOption(name: "Batmobile LINE", estimatedPickupDate: pickupDate)
        
        rideOption.priceRange = INPriceRange(minimumPrice: 42.0, currencyCode: "USD")
        rideOption.disclaimerMessage = "This ride is cray cray."
        
        response.rideOptions = [rideOption]
        response.supportsApplePayForPayment = true
        
        completion(response)
    }
    
    // MARK: - INGetRideStatusIntentHandling
    
    func handle(getRideStatus intent: INGetRideStatusIntent, completion: (INGetRideStatusIntentResponse) -> Void) {
        let response = INGetRideStatusIntentResponse(code: .inProgress, userActivity: nil)
        completion(response)
    }
    
    func startSendingUpdates(forGetRideStatus intent: INGetRideStatusIntent, to observer: INGetRideStatusIntentResponseObserver) {
        
    }
    
    
    func stopSendingUpdates(forGetRideStatus intent: INGetRideStatusIntent) {
        
    }
}

