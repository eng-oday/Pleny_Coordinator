//
//  ExploreViewModel.swift
//  MVVM-C TabBar
//
//  Created by 3rabApp-oday on 19/09/2023.
//

import Foundation

@MainActor
class ExploreViewModel:ObservableObject{
    
    unowned let exploreCoordinator:ExploreCoordinator
    private let willChangeTabTo: MainTab
    init(exploreCoordinator:ExploreCoordinator, willChangeTabTo: MainTab){
        self.exploreCoordinator = exploreCoordinator
        self.willChangeTabTo = willChangeTabTo
    }
    
    func changeTab() {
        exploreCoordinator.changeTab(with: willChangeTabTo)
    }
}
