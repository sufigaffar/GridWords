//
//  GridWordsApp.swift
//  GridWords
//
//  Created by Sufi Gaffar on 29/06/2021.
//

import SwiftUI

@main
struct GridWordsApp: App {
    let persistenceController = PersistenceController.shared
    let game = GridViewModel()

    var body: some Scene {
        WindowGroup<Grid> {
            Grid(viewModel: game)
        }
    }
}
