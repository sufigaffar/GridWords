//
//  MenuViewModel.swift
//  GridWords
//
//  Created by Sufi Gaffar on 04/07/2021.
//

import Foundation
import UIKit

class MenuViewModel: ObservableObject {
    var gcHelper: GameCenterHelper = GameCenterHelper.instance
    
    @Published var loginView: UIViewController?
    
    init() {
        gcHelper.authenticatePlayer(viewModel: self)
    }
}
