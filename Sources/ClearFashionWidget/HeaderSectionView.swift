//
//  HeaderView.swift
//  ios-widgets
//
//  Created by Max Chrétien on 30/01/2023.
//

import SwiftUI

struct HeaderSectionView: View {
    let brandName: String
    
    var body: some View {
            HStack {
                Text(String(key: "ProductDescription %@", arguments: brandName))
                    .foregroundColor(.gray600)
                    .frame(maxWidth: .infinity, alignment: .center)
                    .multilineTextAlignment(.center)
                    .font(.subheadlineCustom)
            }
            .padding(.horizontal, 32)
            .padding(.vertical, 24)
            .background(Color.gray20)
        }
}

struct HeaderSectionView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderSectionView(brandName: "ClearFashion Test")
    }
}
