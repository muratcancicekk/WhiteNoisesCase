//
//  HomePageComponents.swift
//  WhiteNoises
//
//  Created by Murat on 12.11.2022.
//

import SwiftUI

struct HomePageComponents: View {
    let data: HomePageAllDataModel
    let rows: [GridItem] = Array(repeating: GridItem(.fixed(180), spacing: 1), count: 2)
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(data.header)
                    .makePrimaryLabel(size: 25, fontName: FontsManager.Tajawal.regular)
                Text(data.subtitle)
                    .makePrimaryLabel(fontName: FontsManager.Tajawal.regular)
            }
            Spacer()
        }
        ScrollView(.horizontal) {
            LazyHGrid(rows: rows, spacing: 15) {
                ForEach(data.model, id: \.self) {
                    model in
                    HomePageCustomCell(title: model.header, imageName: model.imageName)
                }
            }
        }.scrollIndicators(.hidden)
    }
}
