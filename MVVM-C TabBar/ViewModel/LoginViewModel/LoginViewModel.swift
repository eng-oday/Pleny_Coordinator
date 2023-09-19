//
//  LoginViewModel.swift
//  MVVM-C TabBar
//
//  Created by user on 19/09/2023.
//

import Foundation
import SwiftUI
import Combine

@MainActor
class LoginViewModel:ObservableObject {
    
    //USER DEFAULT KEY FOR LOGIN
    @AppStorage("isLoggedIn") var isLoggedIn: Bool  = false
    
    // COORDINATOR FOR LOGIN
    unowned let loginCoordinator:LoginCoordinator
    
    // BINDING VARIABLES
    @Published var userName:String = ""
    @Published var password:String = ""
    @Published var loginButtonEnabled = false
    
    init(loginCoordinator:LoginCoordinator) {
        self.loginCoordinator = loginCoordinator
        makeDescisionAboutLoginButton()
    }
    
    // IF FIELDS IS EMPTY DISABLE BUTTON
    private func makeDescisionAboutLoginButton(){
        Publishers.CombineLatest($userName, $password)
            .map { userName,password in
                return !userName.isEmpty && !password.isEmpty
            }
            .assign(to: &$loginButtonEnabled)
    }
    
    func login (){
        isLoggedIn = true
        print("i logged in succefully")
    }
    
}
