//
//  CountriesOfProductionView.swift
//  ios-widgets
//
//  Created by Max Chrétien on 30/01/2023.
//

import SwiftUI

struct CountriesSectionView: View {
    let productionStepOrigins: [ProductionStepOrigin]
    let hasMaterialImpacts: Bool
    
    var body: some View {
        if (hasMaterialImpacts) {
            HStack {
                Text(String(key: "CountriesOfProductionTitle"))
                    .foregroundColor(.gray600)
                    .font(.titleCustom)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal, 16)
            .frame(height: 70)
        Divider().padding(.horizontal, 16).foregroundColor(.gray30)
        }
        ForEach(productionStepOrigins, id: \.step) { productionStep in
            CountryDescriptionView(imageName: productionStep.step.capitalized, title: productionStep.step.capitalized, country: productionStep.countryName)
            Divider().padding(.horizontal, 16).foregroundColor(.gray30)
        }

    }
}

struct CountriesSectionView_Previews: PreviewProvider {
    static var previews: some View {
        CountriesSectionView(productionStepOrigins: [ProductionStepOrigin(step: "Weaving", countryName: "France")
            
        ], hasMaterialImpacts: true)
    }
}
