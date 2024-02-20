//
//  MainView.swift
//  TestExample
//
//  Created by Satyam Tripathi on 20/02/24.
//

import SwiftUI
import MobileQuickLaunchKit
import MQLCoreUI

struct  MainView: View {
    @EnvironmentObject  var  theme : Theme
    @State  private var  selectedTab = 0
    @State public var isLoginModalPresented = !MQLAppState.shared.isUserLoggedIn()

    var  body: some  View {
        NavigationView {
            TabView(selection: $selectedTab) {
                HomeView()
                    .tabItem {
                        Label("Home", systemImage: "house")
                    }
                    .tag(0)
                // Defined inside the MobileQuickLaunchKit package
                MQLSettingsView(isLoginModalPresented: $isLoginModalPresented)
                    .tabItem {
                        Label("Settings", systemImage: "gearshape")
                    }
                    .tag(1)
                }
                .accentColor(theme.colors.primary) // Setting the color fro theme
                .onAppear {
                    UITabBar.appearance().backgroundColor = UIColor(theme.colors.backGroundPrimary)
                }
            }
            .navigationBarBackButtonHidden()
            .fullScreenCover(isPresented: $isLoginModalPresented) {
                /// Defined inside the MobileQuickLaunchKit package
                /// Used to Authenticate the user
                MQLSignInView(isModalPresented: $isLoginModalPresented)
            }
        }
    }
