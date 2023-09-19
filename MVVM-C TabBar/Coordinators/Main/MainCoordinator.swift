//
//  MainCoordinator.swift
//  MVVM-C TabBar
//
//  Created by 3rabApp-oday on 19/09/2023.
//

import Foundation
import SwiftUI

@MainActor
class MainCoordinator:ObservableObject {
    @Published var tab:MainTab = .home
    @Published var homeCoordinator:HomeCoordinator!
    @Published var exploreCoordinator:ExploreCoordinator!
    
    init(){
        homeCoordinator        = .init(parentCoordinator: self)
        exploreCoordinator     = .init(parentCoordinator: self, willChangeTabTo: .home)
    }
}


enum MainTab{
    case home
    case explore
}
