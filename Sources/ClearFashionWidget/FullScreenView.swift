//
//  FullScreenView.swift
//  ios-widgets
//
//  Created by Max Chrétien on 30/01/2023.
//

import SwiftUI

struct FullScreenView: View {
    @Binding var isDisplayFullScreen: Bool
    let product: ClearFashionProduct
    
    var body: some View {
        HStack {
            Text(String(key: product.hasMaterialImpacts ? "OriginAndImpactTitle" : "CountriesOfProductionTitle"))
                .foregroundColor(.gray600)
                .font(.bodyCustom)
                .frame(maxWidth: .infinity, alignment: .center)
            
            Spacer()
            Button(action: toggleFullScreenWidget) {
                Image(packageResource: "Cross")
                    .frame(width: 14.0, height: 14.0)
            }.buttonStyle(.borderless)
        }.padding(16)
         .frame(height: 50)
        ScrollView {
            VStack {
                    HeaderSectionView(brandName: product.brandName)
                CountriesSectionView(productionStepOrigins: product.productionStepOrigins, hasMaterialImpacts: product.hasMaterialImpacts)
                    if (product.hasMaterialImpacts) {
                        MaterialsImpactSectionView(product: product)
                    }
                    FooterSectionView(productName: product.name, importedAt: product.importedAt)
                }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
    }
    
    private func toggleFullScreenWidget() -> Void {
        isDisplayFullScreen.toggle()
    }
}

struct FullScreenView_Previews: PreviewProvider {
    @State static var isDisplayFullScreen = false
    
    static var previews: some View {
        let product = ClearFashionProduct(name: "280395902A09", brandName: "ClearFashion", brandId: "clear-fahsion", readableRecyclability: "Recyclable", shouldDisplayRecyclability: true, productCategory: "clothing", emittingMicroFiber: true, recycledPercentage: 55, syntheticPercentage: 100, productionStepOrigins: [ProductionStepOrigin(step: "Weaving", countryName: "France")], dangerousSubstances: ["wine", "bone"], concerningSubstances: ["bear's hair", "oil"], hasMaterialImpacts: true, importedAt: "22/02/2022")
        
        FullScreenView(isDisplayFullScreen: $isDisplayFullScreen, product: product)
    }
}
