//
//  CameraController.swift
//  Plugin
//
//  Created by Ariel Hernandez Musa on 7/14/19.
//  Copyright © 2019 Max Lynch. All rights reserved.
//

import AVFoundation
import UIKit

extension CapacitorUtilities {
     
    func setTorchMode() throws {

        ProcessInfo.processInfo.physicalMemory;
        var currentCamera: AVCaptureDevice?
        switch currentCameraPosition {
        case .front:
            currentCamera = self.frontCamera!
        case .rear:
            currentCamera = self.rearCamera!
        default: break
        }

        guard
            let device = currentCamera,
            device.hasTorch,
            device.isTorchAvailable
        else {
            throw CameraControllerError.invalidOperation
        }

        do {
            try device.lockForConfiguration()
            if device.isTorchModeSupported(AVCaptureDevice.TorchMode.on) {
                device.torchMode = AVCaptureDevice.TorchMode.on
            } else if device.isTorchModeSupported(AVCaptureDevice.TorchMode.auto) {
                device.torchMode = AVCaptureDevice.TorchMode.auto
            } else {
                device.torchMode = AVCaptureDevice.TorchMode.off
            }
            device.unlockForConfiguration()
        } catch {
            throw CameraControllerError.invalidOperation
        }

    }

    func focus() throws {
        guard let device = self.currentCameraPosition == .rear ? rearCamera : frontCamera else { return }

        do {
            try device.lockForConfiguration()

            let focusMode = AVCaptureDevice.FocusMode.autoFocus
            let exposureMode = AVCaptureDevice.ExposureMode.autoExpose

            if device.isFocusPointOfInterestSupported  && device.isFocusModeSupported(focusMode) {
                device.focusPointOfInterest = CGPoint(x: 0.5, y: 0.5)
                device.focusMode = focusMode
            }

            if (device.isExposurePointOfInterestSupported && device.isExposureModeSupported(exposureMode)) {
                device.exposurePointOfInterest = CGPoint(x: 0.5, y: 0.5)
                device.exposureMode = exposureMode
            }

            device.unlockForConfiguration()
        } catch {
            debugPrint(error)
        }
    }
}