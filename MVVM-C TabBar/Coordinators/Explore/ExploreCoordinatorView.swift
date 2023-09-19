//
//  ExploreCoordinatorView.swift
//  MVVM-C TabBar
//
//  Created by 3rabApp-oday on 19/09/2023.
//

import SwiftUI

struct ExploreCoordinatorView: View {
    @ObservedObject var exploreCoordinator:ExploreCoordinator
    var body: some View {
        ExploreView(exploreViewModel: exploreCoordinator.exploreViewModel!)
    }
}

struct ExploreCoordinatorView_Previews: PreviewProvider {
    static var previews: some View {
        let parentCoordinator = MainCoordinator()
        let exploreCoordinator = ExploreCoordinator(parentCoordinator: parentCoordinator, willChangeTabTo: .home)
        ExploreCoordinatorView(exploreCoordinator: exploreCoordinator)
    }
}
