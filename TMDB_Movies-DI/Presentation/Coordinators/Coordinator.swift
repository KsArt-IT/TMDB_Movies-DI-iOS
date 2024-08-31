//
//  Coordinator.swift
//  TMDB_Movies-DI
//
//  Created by KsArT on 31.08.2024.
//

import Foundation

protocol Coordinator: AnyObject {
    var childCoordinators: [Coordinator] { get set }
    func navigation(with params: [String: String]?)
}

extension Coordinator {

    func add(coordinator: Coordinator) {
        childCoordinators.append(coordinator)
    }

    func remove(coordinator: Coordinator) {
        for (index, childCoordinator) in childCoordinators.enumerated() {
            if childCoordinator === coordinator {
                childCoordinators.remove(at: index)
                break
            }
        }
    }
}
