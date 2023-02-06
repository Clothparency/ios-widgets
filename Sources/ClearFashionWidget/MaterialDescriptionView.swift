//
//  MaterialDescriptionView.swift
//  ios-widgets
//
//  Created by Max Chrétien on 30/01/2023.
//

import Foundation
import SwiftUI

struct MaterialDescriptionView: View {
    let imageName: String
    let title: String
    let productInfo: String
    let description: String
    
    var body: some View {
        HStack {
            Image(packageResource: imageName)
                .resizable()
                .frame(width: 25, height: 25)
                .padding(15)
                .overlay(Circle()
                    .stroke(Color.gray80, lineWidth: 2))
            VStack (alignment: .leading) {
                Text(String(key: title))
                    .foregroundColor(.gray600)
                    .font(.headlineCustom)
                    .padding(.vertical, 2)
                Text(String(key: productInfo))
                    .foregroundColor(.gray600)
                    .font(.titleCustom)
                    .padding(.vertical, 2)
                Text(String(key: description))
                    .font(.headlineCustom)
                    .foregroundColor(.gray200)
                    .padding(.vertical, 2)
            }.padding(.horizontal, 16)
            Spacer()
        }
        .padding(.horizontal, 16)
        .frame(minHeight: 70)
    }
}

struct MaterialDescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        MaterialDescriptionView(imageName: "RawMaterial", title: "RawMaterial", productInfo: "Comporte au moins 95% de matières recyclées", description: "RawMaterialDescription")
    }
}
