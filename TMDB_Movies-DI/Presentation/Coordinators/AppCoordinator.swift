//
//  AppCoordinator.swift
//  TMDB_Movies-DI
//
//  Created by KsArT on 31.08.2024.
//

import UIKit

final class AppCoordinator: BaseCoordinator {

    private var window: UIWindow

    private var navController = UINavigationController()

    init(window: UIWindow) {
        self.window = window
        self.window.rootViewController = navController
        self.window.makeKeyAndVisible()
    }

    override func navigation(with params: [String : String]? = nil) {
        print("\(self)-\(#function)")
    }

    deinit {
        print("\(self)-\(#function)")
    }
}
