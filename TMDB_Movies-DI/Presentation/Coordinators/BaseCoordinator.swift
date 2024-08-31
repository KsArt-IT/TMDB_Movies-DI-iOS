//
//  BaseCoordinator.swift
//  TMDB_Movies-DI
//
//  Created by KsArT on 31.08.2024.
//

import Foundation

open class BaseCoordinator: Coordinator {

    var childCoordinators: [Coordinator] = []
    
    func navigation(with params: [String : String]? = nil) {
        fatalError("Child should implements")
    }
}
