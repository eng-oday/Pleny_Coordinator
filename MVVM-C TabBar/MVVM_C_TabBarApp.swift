//
//  MVVM_C_TabBarApp.swift
//  MVVM-C TabBar
//
//  Created by 3rabApp-oday on 19/09/2023.
//

import SwiftUI

@main
struct MVVM_C_TabBarApp: App {
    @AppStorage("isLoggedIn") var isLoggedIn: Bool = false
    @StateObject var mainCoordinator = MainCoordinator()
    var body: some Scene {
        WindowGroup {
            AppCoordinator(mainCoordinator: mainCoordinator).start()
        }
    }
}
