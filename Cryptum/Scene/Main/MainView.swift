//
//  MainView.swift
//  Cryptum
//
//  Created by Bikash Tamang on 5/7/2022.
//

import SwiftUI

struct MainView: View {
    // MARK: Stored Properties
    @ObservedObject private(set) var viewModel: MainViewModel
    
    var selectedTab: MainTabSelection {
        return viewModel.routingState.tabSelection
    }
    
    // MARK: -
    
    let tabs = [
        MainTabSelection.home,
        MainTabSelection.market,
        MainTabSelection.trade,
        MainTabSelection.history,
        MainTabSelection.account
    ]
    
    func getTabBarImageName(tab: MainTabSelection) -> String {
        switch tab {
        case .home: return (selectedTab == tab) ? "Category.fill" : "Category"
        case .market: return (selectedTab == tab) ? "Graph.fill" : "Graph"
        case .trade: return "Trade"
        case .history: return (selectedTab == tab) ? "Time.fill" : "Time"
        case .account: return (selectedTab == tab) ? "Profile.fill" : "Profile"
        }
    }
    
    // MARK: Initialiser
    
    init(viewModel: MainViewModel) {
        self.viewModel = viewModel
        print("INIT. MainView")
    }
    
    var body: some View {
        VStack(spacing: 0) {
            ZStack {
                switch selectedTab {
                    case .home:
                        HomeView()
                    case .market:
                        MarketView()
                    case .trade:
                        HomeView()
                    case .history:
                        HistoryView()
                    case .account:
                        AccountView()
                }
            }
            // End ZStack
            Spacer()

            tabbar
        } // End VStack
        .ignoresSafeArea(.keyboard)
    }
    
    var tabbar: some View {
        HStack {
            ForEach(tabs) { tab in
                Button(action: {
                    let impact = UIImpactFeedbackGenerator(style: .soft)
                    impact.impactOccurred()
                    viewModel.routingState.tabSelection = tab
                }, label: {
                    Spacer()

                    VStack {
                        Image(getTabBarImageName(tab: tab))
                    }
                    .padding(.top)

                    Spacer()
                })
            }
        } // End HStack
        .padding(.bottom, 10)
        .background(
            RoundedCorners(
                topLeft: 20,
                topRight: 20,
                bottomLeft: 0,
                bottomRight: 0
            )
            .fill(Color.white)
            .shadow(color: .init(hex: "ECEDF1"), radius: 3, x: 0, y: -4)
        )
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView(viewModel: MainViewModel())
    }
}
