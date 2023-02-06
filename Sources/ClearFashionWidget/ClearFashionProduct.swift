//
//  ClearFashionProduct.swift
//  ios-widgets
//
//  Created by Max Chrétien on 30/01/2023.
//

import Foundation

struct APIResult: Decodable {
    let data: DataResult
}

struct DataResult: Decodable {
    let id: String
    let type:String
    let attributes: ClearFashionProduct
}

struct ClearFashionProduct: Decodable {
    let name: String
    let brandName: String
    let brandId: String
    let readableRecyclability: String
    let shouldDisplayRecyclability: Bool
    let productCategory: String
    let emittingMicroFiber: Bool
    let recycledPercentage: Int
    let syntheticPercentage: Int
    let productionStepOrigins: [ProductionStepOrigin]
    let dangerousSubstances: [String]
    let concerningSubstances: [String]
    let hasMaterialImpacts: Bool
    let importedAt: String
}


struct ProductionStepOrigin: Decodable {
    let step: String
    let countryName: String
}
