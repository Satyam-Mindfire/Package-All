//
//  HomeView.swift
//  TestExample
//
//  Created by Satyam Tripathi on 20/02/24.
//

import SwiftUI
  import MobileQuickLaunchKit
  import MQLCoreUI

  struct  HomeView: View {
      // To get the current theme data
      @EnvironmentObject  var  theme : Theme

      var body: some View {
          ZStack {
              // View Background
              theme.colors.backGroundPrimary
                  .ignoresSafeArea()
                  
              Text("Welcome")
                  .font(theme.typography.h2)
                  .foregroundColor(theme.colors.secondary)
          }
      }
  }
