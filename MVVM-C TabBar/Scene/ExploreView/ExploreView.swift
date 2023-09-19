//
//  ExploreView.swift
//  MVVM-C TabBar
//
//  Created by 3rabApp-oday on 19/09/2023.
//

import SwiftUI

struct ExploreView: View {
    
    @ObservedObject var exploreViewModel:ExploreViewModel
    var body: some View {
        NavigationView {
            VStack {
                Text("Hello World")
                    .padding()
                
                Button {
                    exploreViewModel.exploreCoordinator.changeTab(with: .home)
                } label: {
                    Text("Change tab")
                }
                .padding()
            }
            
        }
    }
}

struct ExploreView_Previews: PreviewProvider {
    static var previews: some View {
        let mainCoordinator = MainCoordinator()
        let exploreCoordinator = ExploreCoordinator(parentCoordinator: mainCoordinator, willChangeTabTo: .home)
        let exploreViewModel = ExploreViewModel(exploreCoordinator: exploreCoordinator, willChangeTabTo: .home)
        ExploreView(exploreViewModel: exploreViewModel)
    }
}
