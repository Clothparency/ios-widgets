//
//  File.swift
//  
//
//  Created by Max Chrétien on 01/02/2023.
//

import Foundation
import SwiftUI

extension Image {
    init(packageResource name: String) {
        #if canImport(UIKit)
        guard let image = UIImage(named: name, in: Bundle.getBundle(), with: nil) else {
            self.init(name)
            return
        }
        self.init(uiImage: image)
        #elseif canImport(AppKit)
        guard let path = Bundle.getBundle().path(forResource: name, ofType: ".png"),
              let image = NSImage(contentsOfFile: path) else {
            self.init(name)
            return
        }
        self.init(nsImage: image)
        #else
        self.init(name)
        #endif
    }
}
