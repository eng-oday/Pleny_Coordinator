//
//  HomeView.swift
//  MVVM-C TabBar
//
//  Created by 3rabApp-oday on 19/09/2023.
//

import SwiftUI

struct HomeView: View {
    @ObservedObject var viewModel:HomeViewModel
    var body: some View {
        VStack {
                    Button {
                        
                    } label: {
                        Text("Show alert")
                    }
                    .padding()
                    
                    Button {
                        viewModel.homeCoordinator.openSecondView()
                    } label: {
                        Text("Navigate to second")
                    }
                }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        let mainCoordinator = MainCoordinator()
        let homeCoordinator = HomeCoordinator(parentCoordinator: mainCoordinator)
        let homeViewModel = HomeViewModel(HomeCoordinator: homeCoordinator)
        HomeView(viewModel: homeViewModel)
    }
}
