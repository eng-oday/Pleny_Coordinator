//
//  HomeViewModel.swift
//  MVVM-C TabBar
//
//  Created by 3rabApp-oday on 19/09/2023.
//

import Foundation
@MainActor
class HomeViewModel:ObservableObject {
    
    unowned let homeCoordinator:HomeCoordinator
    
    init(HomeCoordinator:HomeCoordinator){
        self.homeCoordinator = HomeCoordinator
    }
    
}
