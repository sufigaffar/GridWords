//
//  GridWords.swift
//  GridWords
//
//  Created by Sufi Gaffar on 29/06/2021.
//

import Foundation

struct GridWords {
    private(set) var boxes: [Box] = []
    
    init(numberOfBoxes: Int) {
        for _ in 0..<numberOfBoxes {
            boxes.append(Box())
        }
    }
    
    mutating func setLetter(_ letter: String, box: Box) {
        if let index = boxes.firstIndex(where: {$0.id == box.id}) {
            boxes[index].contents = letter
        }
    }
}
