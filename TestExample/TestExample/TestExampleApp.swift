//
//  TestExampleApp.swift
//  TestExample
//
//  Created by Satyam Tripathi on 20/02/24.
//

import SwiftUI
import GoogleSignIn
import MobileQuickLaunchKit
import MQLCore

@main
struct TestExampleApp: App {
    
    @StateObject public var themes = ThemeManager()
    
    init() {
        //Set the local storage value to the AppState
        MQLAppState.shared.setValues()
        
        //Set you App Base URL
        MQLConstants.baseURL = "http://localhost:3001/api/v1/" // Your App's Base URL
        
        //Set your Setting page webview url's
        SettingsLinks.privacy = "https://www.google.co.in"
        SettingsLinks.aboutUs = "https://www.google.co.in"
        SettingsLinks.help = "https://www.google.co.in"
    }
    
    var body: some Scene {
        WindowGroup {
            MQLContentView(
                mainView: MainView()
            )
            //This will help us to access the members of current theme
                .environmentObject(themes.current)
                .onOpenURL { url in
                    GIDSignIn.sharedInstance.handle(url)
                }
        }
    }
}

