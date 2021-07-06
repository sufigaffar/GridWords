//
//  GameCenterHelper.swift
//  GridWords
//
//  Created by Sufi Gaffar on 04/07/2021.
//

import Foundation
import GameKit

class GameCenterHelper {
    static let instance = GameCenterHelper()
    
    var loginViewController: UIViewController?
    
    private init() {}
    
    var isAuthenticated: Bool {
        GKLocalPlayer.local.isAuthenticated
    }
    
    func authenticatePlayer(viewModel: MenuViewModel) {
        GKLocalPlayer.local.authenticateHandler = { viewController, error in
            guard error == nil else {
                print(error.debugDescription)
                return
            }
            
            viewModel.loginView = viewController
        }
    }
}
