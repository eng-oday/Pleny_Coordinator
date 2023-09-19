//
//  AppCoordinator.swift
//  MVVM-C TabBar
//
//  Created by user on 19/09/2023.
//

import Foundation
import SwiftUI

@MainActor
class AppCoordinator:ObservableObject {
    @AppStorage("isLoggedIn") var isLoggedIn: Bool = false
    
    @Published var mainCoordinator:MainCoordinator!
    init(mainCoordinator: MainCoordinator) {
        self.mainCoordinator = mainCoordinator
    }
    
    @ViewBuilder
    func start() -> some View {
        if userIsLoggedIn() {
            goToHomeScreen()
        }else{
            goToLoginScreen()
        }
    }
    
    private func userIsLoggedIn() -> Bool {
        return isLoggedIn
    }

    @ViewBuilder
    func goToLoginScreen() -> some View {
        LoginView(viewModel: mainCoordinator.loginCoordinator.loginViewModel)
    }
    
    @ViewBuilder
    func goToHomeScreen() -> some View {
        MainCoordinatorView(coordinator: mainCoordinator)
    }
    
}

