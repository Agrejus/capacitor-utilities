import Foundation
import Capacitor
import AVFoundation
/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitor.ionicframework.com/docs/plugins/ios
 */
@objc(CapacitorUtilities)
public class CapacitorUtilities: CAPPlugin {

    var previewView: UIView!
    var cameraPosition = String()
    let cameraController = CameraController()
    var x: CGFloat?
    var y: CGFloat?
    var width: CGFloat?
    var height: CGFloat?
    var paddingBottom: CGFloat?
    var rotateWhenOrientationChanged: Bool?
    var toBack: Bool?
    var storeToFile: Bool?
    var enableZoom: Bool?
    var highResolutionOutput: Bool = false
    var disableAudio: Bool = false
    var onTap = "onTap"


    @objc func getDeviceSpecifications(_ call: CAPPluginCall) {
        do {
            try self.cameraController.
            call.resolve(["value": imageBase64!])
        } catch {
            call.reject("failed to set focus")
        }
    }
}
