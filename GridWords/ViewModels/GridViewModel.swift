//
//  GridViewModel.swift
//  GridWords
//
//  Created by Sufi Gaffar on 29/06/2021.
//

import Foundation

class GridViewModel: ObservableObject {
    @Published var game: GridWords = GridWords(numberOfBoxes: 25)
    
    var boxes: [Box] {
        game.boxes
    }
    
    func setLetter(letter: String, box: Box) {
        game.setLetter(letter, box: box)
    }
}
