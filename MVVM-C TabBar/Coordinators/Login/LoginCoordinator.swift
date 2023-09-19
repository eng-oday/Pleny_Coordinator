//
//  LoginCoordinator.swift
//  MVVM-C TabBar
//
//  Created by user on 19/09/2023.
//

import Foundation

@MainActor
class LoginCoordinator:ObservableObject {
    unowned let parentCoordinator:MainCoordinator
    @Published var loginViewModel:LoginViewModel!
    
    init(parentCoordinator:MainCoordinator){
        self.parentCoordinator  = parentCoordinator
        loginViewModel          = LoginViewModel(loginCoordinator: self)
    }
}
