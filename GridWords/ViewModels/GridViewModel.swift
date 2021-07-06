//
//  GridViewModel.swift
//  GridWords
//
//  Created by Sufi Gaffar on 29/06/2021.
//

import Foundation

class GridViewModel: ObservableObject {
    @Published var grid: BoxGrid = BoxGrid(numberOfBoxes: 25)
    
    var boxes: [Box] {
        grid.boxes
    }
    
    func setLetter(letter: String, box: Box) {
        grid.setLetter(letter, box: box)
    }
}
