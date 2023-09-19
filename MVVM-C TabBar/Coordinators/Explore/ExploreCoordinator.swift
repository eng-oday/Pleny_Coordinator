//
//  ExploreCoordinator.swift
//  MVVM-C TabBar
//
//  Created by 3rabApp-oday on 19/09/2023.
//

import Foundation

@MainActor
class ExploreCoordinator:ObservableObject {
    
    unowned let parentCoordinator:MainCoordinator
    @Published var exploreViewModel:ExploreViewModel?
    
    init(parentCoordinator: MainCoordinator, willChangeTabTo: MainTab ){
        self.parentCoordinator = parentCoordinator
        self.exploreViewModel = ExploreViewModel(exploreCoordinator: self, willChangeTabTo: .home)
    }
    
    func changeTab(with tab: MainTab) {
        parentCoordinator.tab = tab
        }
}
