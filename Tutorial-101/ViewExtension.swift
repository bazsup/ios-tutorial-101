//
//  ViewExtension.swift
//  Tutorial-101
//
//  Created by Supawit Ruen on 17/12/2563 BE.
//

import UIKit
import Foundation

extension UIView {
    @IBInspectable var borderWidth: CGFloat {
        set {
            layer.borderWidth = newValue
        }
        get {
            return layer.borderWidth
        }
    }
    
    @IBInspectable var cornerRadius: CGFloat {
        set {
            layer.cornerRadius = newValue
        }
        get {
            return layer.cornerRadius
        }
    }
}
