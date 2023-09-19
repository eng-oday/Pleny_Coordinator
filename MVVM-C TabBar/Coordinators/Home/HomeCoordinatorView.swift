//
//  HomeCoordinatorView.swift
//  MVVM-C TabBar
//
//  Created by 3rabApp-oday on 19/09/2023.
//

import SwiftUI

struct HomeCoordinatorView: View {
    
    @ObservedObject var homeCoordinator:HomeCoordinator
    
    var body: some View {
        
        NavigationView {
            HomeView(viewModel: homeCoordinator.homeViewModel!)
                .navigation(item: $homeCoordinator.exploreCoordinator) { exploreCoordinator in
                    ExploreCoordinatorView(exploreCoordinator: exploreCoordinator)
                }
        }
    }
}


struct HomeCoordinatorView_Previews: PreviewProvider {
    static var previews: some View {
        let parentCoordinator = MainCoordinator()
        let homeCoordinator = HomeCoordinator(parentCoordinator: parentCoordinator)
        HomeCoordinatorView(homeCoordinator: homeCoordinator)
    }
}
