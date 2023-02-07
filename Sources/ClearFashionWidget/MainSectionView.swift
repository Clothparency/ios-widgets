//
//  MainSectionView.swift
//  ios-widgets
//
//  Created by Max Chrétien on 30/01/2023.
//

import SwiftUI

struct MainSectionView: View {
    @State private var isDisplayFullScreen: Bool = false
    var product: ClearFashionProduct?

    init(product: ClearFashionProduct?) {
        self.product = product
    }
    
    var body: some View {
        if (product == nil) {
            LoadingView()
        } else {
            ZStack {
                Button(action: toggleFullScreenWidget) {
                    ButtonView(hasMaterialImpacts: product!.hasMaterialImpacts)
                }
                .buttonStyle(.borderless)
                .popover(
                    isPresented: $isDisplayFullScreen,
                    arrowEdge: .bottom
                ) { FullScreenView(isDisplayFullScreen: $isDisplayFullScreen, product: product!).background(Color.white) }

            }
        }
    }
    
    private func toggleFullScreenWidget() -> Void {
        isDisplayFullScreen.toggle()
    }
}

struct MainSectionView_Previews: PreviewProvider {
    @State static var isDisplayFullScreen = false
    
    static var previews: some View {
        let product = ClearFashionProduct(name: "280395902A09", brandName: "ClearFashion", brandId: "clear-fahsion", readableRecyclability: "Recyclable", shouldDisplayRecyclability: true, productCategory: "clothing", emittingMicroFiber: true, recycledPercentage: 55, syntheticPercentage: 100, productionStepOrigins: [ProductionStepOrigin(step: "Weaving", countryName: "France")], dangerousSubstances: ["wine", "bone"], concerningSubstances: ["bear's hair", "oil"], hasMaterialImpacts: true, importedAt: "22/02/2022")
        
        MainSectionView(product: product)
    }
}
