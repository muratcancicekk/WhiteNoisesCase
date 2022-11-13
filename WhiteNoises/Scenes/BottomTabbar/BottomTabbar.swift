//
//  BottomTabbar.swift
//  WhiteNoises
//
//  Created by Murat on 12.11.2022.
//

import SwiftUI

struct TabBarView: View {
    @State var select = 0
    init() {
        if #available(iOS 15, *) {
            let tabBarAppearance: UITabBarAppearance = UITabBarAppearance()
               tabBarAppearance.configureWithOpaqueBackground()
                UITabBar.appearance().standardAppearance = tabBarAppearance
                UITabBar.appearance().scrollEdgeAppearance = tabBarAppearance
        }
    }
    var body: some View {
        TabView(selection: $select) {
            HomePageView(select: $select)
                .tabItem {
                select == 0 ? Image("homeFillIcon") : Image("homeIcon")
                Text(Constants.navHome)
            }.tag(0).navigationBarHidden(true)

            HomePageView(select: $select)
                .tabItem {
                select == 1 ? Image("aboutUsFillIcon") : Image("aboutIcon")
                Text(Constants.navMyMix)
            }.tag(1).navigationBarHidden(true)
            HomePageView(select: $select)
                .tabItem {
                select == 2 ? Image("myMixFillIcon") : Image("myMixIcon")
                Text(Constants.navAbout)
            }.tag(2).navigationBarHidden(true)
            HomePageView(select: $select)
                .tabItem {
                select == 3 ? Image("settingFillIcon") : Image("settingsIcon")
                Text(Constants.navSetting)
            }.tag(3).navigationBarHidden(true)
        }.opacity(1)
            .navigationBarBackButtonHidden(true)
            .navigationBarHidden(true)
            .accentColor(.blue)

    }
}
