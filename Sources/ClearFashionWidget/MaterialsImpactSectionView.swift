//
//  MaterialsImpactSectionView.swift
//  ios-widgets
//
//  Created by Max Chrétien on 30/01/2023.
//

import SwiftUI

struct MaterialsImpactSectionView: View {
    let product: ClearFashionProduct
    
    var body: some View {
        HStack {
            Text(String(key: "ImpactOfMaterialsTitle"))
                .foregroundColor(.gray600)
                .font(.titleCustom)
                .frame(maxWidth: .infinity, alignment: .leading)
        }
        .padding(.horizontal, 16)
        .frame(height: 70)
        
        Divider().padding(.horizontal, 16).foregroundColor(.gray30)
        if (product.recycledPercentage > 0) {
            MaterialDescriptionView(imageName: "RawMaterial", title: "RawMaterial", productInfo: String(key: "RawMaterialProductInfo %lld", arguments: product.recycledPercentage), description: "RawMaterialDescription")
            Divider().padding(.horizontal, 16).foregroundColor(.gray30)
        }
        if (product.shouldDisplayRecyclability) {
            MaterialDescriptionView(imageName: "Recyclability", title: "Recyclability", productInfo: String(key: product.readableRecyclability), description: "RecyclabilityDescription")
            Divider().padding(.horizontal, 16).foregroundColor(.gray30)
        }
        if (product.emittingMicroFiber) {
            MaterialDescriptionView(imageName: "Usage", title: "Usage", productInfo: "UsageProductInfo", description: String(key: "UsageDescription %lld", arguments: product.syntheticPercentage))
            Divider().padding(.horizontal, 16).foregroundColor(.gray30)
        }
        if (!product.concerningSubstances.isEmpty || !product.dangerousSubstances.isEmpty) {
            MaterialDescriptionView(imageName: "Danger", title: "Danger", productInfo: getDangerousSubstances() , description: "DangerDescription")
            Divider().padding(.horizontal, 16).foregroundColor(.gray30)
        }
    }
    
    private func getDangerousSubstances() -> String {
        let dangerousSubstancesStr = product.dangerousSubstances.joined(separator: ", ")
        let concerningSubstancesStr = product.concerningSubstances.joined(separator: ", ")
        
        if (!product.dangerousSubstances.isEmpty && !product.concerningSubstances.isEmpty) {
            return String(key: "DangerAndConcerningSubstancesProductInfo %@ %@", arguments: dangerousSubstancesStr, concerningSubstancesStr)
        }
        else if (!product.concerningSubstances.isEmpty) {
            return String(key: "ConcerningSubstancesProductInfo %@", arguments: concerningSubstancesStr)
        } else {
            return String(key: "DangerProductInfo %@", arguments: dangerousSubstancesStr)
        }
    }
}

struct MaterialsImpactSectionView_Previews: PreviewProvider {
    static var previews: some View {
        let product = ClearFashionProduct(name: "280395902A09", brandName: "ClearFashion", brandId: "clear-fahsion", readableRecyclability: "Recyclable", shouldDisplayRecyclability: true, productCategory: "clothing", emittingMicroFiber: true, recycledPercentage: 55, syntheticPercentage: 100, productionStepOrigins: [ProductionStepOrigin(step: "Weaving", countryName: "France")], dangerousSubstances: ["wine", "bone"], concerningSubstances: ["bear's hair", "oil"], hasMaterialImpacts: true, importedAt: "22/02/2022")
        
        MaterialsImpactSectionView(product: product)
    }
}
