//
//  HomeCoordinator.swift
//  MVVM-C TabBar
//
//  Created by 3rabApp-oday on 19/09/2023.
//

import Foundation

@MainActor
class HomeCoordinator:ObservableObject {
    
    private unowned let parentCoordinator:MainCoordinator
    @Published var homeViewModel:HomeViewModel?
    @Published var exploreCoordinator:ExploreCoordinator?
    
    init(parentCoordinator: MainCoordinator) {
        self.parentCoordinator  = parentCoordinator
        self.homeViewModel      = HomeViewModel(HomeCoordinator: self)
    }
    
    func openSecondView(){
        exploreCoordinator = ExploreCoordinator(parentCoordinator: parentCoordinator, willChangeTabTo: .explore )
    }
}
