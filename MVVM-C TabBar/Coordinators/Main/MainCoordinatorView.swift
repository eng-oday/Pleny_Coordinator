//
//  MainCoordinatorView.swift
//  MVVM-C TabBar
//
//  Created by 3rabApp-oday on 19/09/2023.
//

import SwiftUI

struct MainCoordinatorView: View {
    
    @ObservedObject var coordinator:MainCoordinator
    
    var body: some View {

        TabView(selection: $coordinator.tab) {
            HomeCoordinatorView(homeCoordinator: coordinator.homeCoordinator)
                .tabItem {
                    Label("Home", systemImage: "homekit")
                }
                .tag(MainTab.home)
            ExploreCoordinatorView(exploreCoordinator: coordinator.exploreCoordinator)
                .tabItem {
                    Label("explore", systemImage: "magnifyingglass")
                }
                .tag(MainTab.explore)
        }}
}

struct MainCoordinatorView_Previews: PreviewProvider {
    static var previews: some View {
        MainCoordinatorView(coordinator: MainCoordinator())
    }
}
