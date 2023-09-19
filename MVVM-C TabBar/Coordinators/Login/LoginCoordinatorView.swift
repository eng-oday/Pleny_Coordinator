//
//  LoginCoordinatorView.swift
//  MVVM-C TabBar
//
//  Created by user on 19/09/2023.
//

import SwiftUI

struct LoginCoordinatorView: View {
    
    @ObservedObject var loginCoordinator:LoginCoordinator
    var body: some View {
        LoginView(viewModel: loginCoordinator.loginViewModel)
    }
}

struct LoginCoordinatorView_Previews: PreviewProvider {
    static var previews: some View {
        let parentCoordinator = MainCoordinator()
        let loginCoordinator  = LoginCoordinator(parentCoordinator: parentCoordinator)
        LoginCoordinatorView(loginCoordinator: loginCoordinator)
    }
}
