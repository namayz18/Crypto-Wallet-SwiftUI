//
//  MainViewModel.swift
//  Cryptum
//
//  Created by Bikash Tamang on 5/7/2022.
//

import Foundation

class MainViewModel: ObservableObject {
    // State
    @Published var routingState: Routing
    @Published var isTabBarActive: Bool? = true

    init(routingState: Routing = Routing()) {
        self.routingState = routingState
        print("INIT. MainViewModel")
    }

    deinit {
        print("DEINIT. MainViewModel")
    }

}

// MARK: - Routing

enum MainTabSelection {
    case home
    case market
    case trade
    case history
    case account
}

extension MainTabSelection: Identifiable {
    var id: Self { self }
}

extension MainViewModel {

    struct Routing {

        var tabSelection: MainTabSelection = .home {
            didSet {
                print(tabSelection)
            }
        }

    }

}
