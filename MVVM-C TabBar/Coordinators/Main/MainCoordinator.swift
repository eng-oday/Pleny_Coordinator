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
    @AppStorage("isLoggedIn") var isLoggedIn: Bool  = false
    @Published var tab:MainTab = .home
    @Published var homeCoordinator:HomeCoordinator!
    @Published var exploreCoordinator:ExploreCoordinator!
    @Published var loginCoordinator:LoginCoordinator!
    
    init(){
        homeCoordinator         = .init(parentCoordinator: self)
        exploreCoordinator      = .init(parentCoordinator: self, willChangeTabTo: .home)
        loginCoordinator        = .init(parentCoordinator: self)
    }
    
}


enum MainTab{
    case home
    case explore
}
