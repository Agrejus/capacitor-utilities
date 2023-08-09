import Foundation
import Capacitor
import AVFoundation

/**
* Please read the Capacitor iOS Plugin Development Guide
* here: https://capacitor.ionicframework.com/docs/plugins/ios
*/

@objc(CapacitorUtilities)
public class CapacitorUtilitiesPlugin: CAPPlugin {

    let capacitorUtilities = CapacitorUtilities()

    @objc func getDeviceSpecifications(_ call: CAPPluginCall) {
        let physicalMemory = self.capacitorUtilities.getDevicePhysicalMemory()
        call.resolve(["physicalMemory": physicalMemory])
    }
}