//
//  FooterView.swift
//  ios-widgets
//
//  Created by Max Chrétien on 30/01/2023.
//

import SwiftUI

struct FooterSectionView: View {
    let productName: String
    let importedAt: String
    
    var body: some View {
        VStack {
            Image(packageResource: "ClearFashionLogo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 15)
                .padding(.vertical, 2)
            Text(String(key: "FooterDescription %@", arguments: productName))
                .padding(.vertical, 2)
                .font(.headlineCustom)
                .multilineTextAlignment(.center)
                .foregroundColor(.gray200)
                .fixedSize(horizontal: false, vertical: true)
            Text(String(key: "FooterUpdate %@", arguments: importedAt))
                .padding(.vertical, 2)
                .font(.headlineCustom)
                .multilineTextAlignment(.center)
                .foregroundColor(.gray200)
        }
        .padding(.horizontal, 24)
        .padding(.vertical, 32)
    }
}

struct FooterSectionView_Previews: PreviewProvider {
    static var previews: some View {
        
        FooterSectionView(productName: "A Nice Shirt", importedAt: "02/22/2022")
    }
}
