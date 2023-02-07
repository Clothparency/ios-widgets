//
//  ButtonView.swift
//  ios-playground
//
//  Created by Max Chrétien on 30/01/2023.
//

import SwiftUI

struct ButtonView: View {
    let introKeyText: String
    
    public init(hasMaterialImpacts: Bool) {
        self.introKeyText = hasMaterialImpacts ? "ButtonIntroText" : "ButtonIntroTextWithoutMaterialImpacts"
    }
    
    var body: some View {
            VStack (
                alignment: HorizontalAlignment.leading
            ) {
                HStack {
                    Text(String(key: introKeyText))
                        .font(.bodyCustom)
                        .foregroundColor(.gray600)
                        .multilineTextAlignment(.leading)
                    Spacer()
                    Image(packageResource: "Arrow")
                        .frame(width: 14.0, height: 18.0)
                }
                HStack  {
                    Text(String(key: "ButtonVerifedBy"))
                        .foregroundColor(.gray300)
                        .font(.subheadlineCustom)
                    Image(packageResource: "ClearFashionLogoGray")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 100.0)
                }
                
            }
            .frame(maxWidth: .infinity, alignment: .topLeading)
            .padding(16)
            .overlay(
                RoundedRectangle(cornerRadius: 4)
                    .stroke(Color.gray30, lineWidth: 1)
            )
            .frame(maxWidth: .infinity, minHeight: 70, alignment: .topLeading)
            .background(Color.white)
            .padding(16)
    }
}

struct ButtonView_Previews: PreviewProvider {    
    static var previews: some View {
        ButtonView(hasMaterialImpacts: false)
    }
}
