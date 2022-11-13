//
//  HomePageView.swift
//  WhiteNoises
//
//  Created by Murat on 11.11.2022.
//

import SwiftUI

struct HomePageView: View {
    @Binding var select: Int
    var body: some View {
        ZStack {
            Color.blue.ignoresSafeArea()
            ScrollView {
                VStack {
                    HStack {
                        Text(Constants.homeHeader)
                            .makePrimaryLabel(size: 45, fontName: FontsManager.LeckerliOne.regular)
                        Spacer()
                        Image("playIcon")
                            .padding(.trailing)
                    }
                    ForEach(HomePageModel.homePageAllData, id: \.self) {
                        data in
                        HomePageComponents(data: data)
                    }
                }.padding(.leading)
            }
        }
    }
}
