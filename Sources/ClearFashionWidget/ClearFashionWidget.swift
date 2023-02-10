//
//  ClearFashionWidgetView.swift
//  ios-widgets
//
//  Created by Max Chrétien on 30/01/2023.
//

import Foundation
import SwiftUI

public struct ClearFashionWidget: View {
    let brandId: String
    let productId: String
    let lang: String
    @State var product: ClearFashionProduct?
    
    public init(brandId: String, productId: String, lang: String) {
        self.brandId = brandId
        self.productId = productId
        self.lang = lang
        Bundle.setLanguage(lang: lang)
        FontBlaster.blast(bundle: Bundle.getBundle())
    }
    
    public var body: some View {
        let fetchUrl: String = "https://cdn.clear-fashion.com/api/partners/v1/brands/\(brandId)/agec/products/\(productId)?locale=\(lang)"
        
        MainSectionView(product: product)
            .onAppear {
                let url = URL(string: fetchUrl)!
                  URLSession.shared.fetchData(for: url) { (result: Result<APIResult, Error>) in
                    switch result {
                    case .success(let apiResult):
                        self.product = apiResult.data.attributes
                      break
                    case .failure(let error):
                      print("Error: \(error)")
                      break
                  }
                }
            }
    }
}

struct ClearFashionWidget_Previews: PreviewProvider {
    
    static var previews: some View {
        ClearFashionWidget(brandId: "clear-fashion", productId: "test-product", lang: "fr")
    }
}
