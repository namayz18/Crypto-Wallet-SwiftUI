//
//  CryptumApp.swift
//  Cryptum
//
//  Created by Bikash Tamang on 4/7/2022.
//

import SwiftUI

@main
struct CryptumApp: App {
    var body: some Scene {
        WindowGroup {
            MainView(viewModel: MainViewModel( routingState: MainViewModel.Routing()))
        }
    }
}
