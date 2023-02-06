//
//  CountryDescriptionView.swift
//  ios-widgets
//
//  Created by Max Chrétien on 30/01/2023.
//

import SwiftUI

struct CountryDescriptionView: View {
    let imageName: String
    let title: String
    let country: String
    
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
                Text(country)
                    .foregroundColor(.gray600)
                    .font(.titleCustom)
            }.padding(.horizontal, 16)
            Spacer()
        }
        .padding(.horizontal, 16)
        .frame(height: 70)
    }
}

struct CountryDescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        CountryDescriptionView(imageName: "Weaving", title: "Weaving", country: "Espagne")
    }
}
