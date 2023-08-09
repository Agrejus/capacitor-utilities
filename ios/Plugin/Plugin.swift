import Foundation
import Capacitor
import AVFoundation
/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitor.ionicframework.com/docs/plugins/ios
 */
@objc(CapacitorUtilities)
public class CapacitorUtilities: CAPPlugin {

    let capacitorUtilities = CapacitorUtilities()

    @objc func getDeviceSpecifications(_ call: CAPPluginCall) {
        do {
            let physicalMemory = self.capacitorUtilities.getDevicePhysicalMemory()
            call.resolve(["physicalMemory": physicalMemory])
        } catch {
            call.reject("Failed to get device specifications")
        }
    }
}
