//
//  Bundle.swift
//  
//
//  Created by Max Chrétien on 02/02/2023.
//

import Foundation

extension Bundle {
    private static var bundle: Bundle!
    
    static func getBundle() -> Bundle {
        #if SWIFT_PACKAGE
        let bundle = Bundle.module
        #else
        let moduleName = "ClearFashionWidget"
        let candidates = [
            // Bundle should be present here when the package is linked into an App.
            Bundle.main.resourceURL,

            // Bundle should be present here when the package is linked into a framework.
            Bundle(for: self).resourceURL,

            // For command-line tools.
            Bundle.main.bundleURL,
        ]
        for candidate in candidates {
            let bundlePath = candidate?.appendingPathComponent(moduleName + ".bundle")
            if let bundle = bundlePath.flatMap(Bundle.init(url:)) {
                return bundle
            }
        }
        #endif
        
        return bundle
    }

    public static func localizedBundle() -> Bundle! {
        if bundle == nil {
            let appLang = UserDefaults.standard.string(forKey: "app_lang") ?? "fr"
            let path = getBundle().path(forResource: appLang, ofType: "lproj")
            bundle = Bundle(path: path!)
        }

        return bundle;
    }

    public static func setLanguage(lang: String) {
        UserDefaults.standard.set(lang, forKey: "app_lang")
        let path = getBundle().path(forResource: lang, ofType: "lproj")
        bundle = Bundle(path: path!)
    }
}
