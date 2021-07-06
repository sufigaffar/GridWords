//
//  MenuView.swift
//  GridWords
//
//  Created by Sufi Gaffar on 04/07/2021.
//

import Foundation
import SwiftUI

struct MenuView: View {
    var gcHelper: GameCenterHelper = GameCenterHelper.instance
    
    @ObservedObject var viewModel: MenuViewModel
    
    var body: some View {
        if viewModel.loginView != nil {
            ViewControllerWrapperView(viewController: viewModel.loginView!)
        } else {
            VStack {
                Button(action: {
                }) {
                    Text("Play")
                }
            }
        }
    }
}
