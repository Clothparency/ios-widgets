//
//  NSLocalizedString.swift
//  
//
//  Created by Max Chrétien on 02/02/2023.
//

import Foundation

extension String {
    init(key: String, arguments: CVarArg...) {
        self.init(format: NSLocalizedString(key, bundle: Bundle.localizedBundle(), comment: ""), arguments)
    }
}
