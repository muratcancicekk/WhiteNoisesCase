//
//  HomePageCustomCell.swift
//  WhiteNoises
//
//  Created by Murat on 12.11.2022.
//

import SwiftUI

struct HomePageCustomCell: View {
    let title: String
    let imageName: String
    var body: some View {
        VStack {
            ZStack {
                Circle()
                    .stroke()
                    .frame(width: 89, height: 89)
                    .background(Circle().foregroundColor(Color.blue))
                Image(imageName)
            }
            Ellipse()
                .frame(width: 67, height: 7)
                .foregroundColor(.gray.opacity(0.7))
            Text(title)
                .makePrimaryLabel(size: 13, color: .black, fontName: FontsManager.Tajawal.regular)
        }
            .frame(width: UIScreen.screenWidth * 0.33, height: UIScreen.screenHeight * 0.2)
            .background(.white)
            .cornerRadius(20)
            .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(.blue, lineWidth: 5)
        )
    }
}
