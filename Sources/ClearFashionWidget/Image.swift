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
            self.init(name, bundle: Bundle.getBundle())
            return
        }
        self.init(uiImage: image)
        #else
        self.init(name, bundle: Bundle.getBundle())
        #endif
    }
}
