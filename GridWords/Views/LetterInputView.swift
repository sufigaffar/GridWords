//
//  LetterInputView.swift
//  GridWords
//
//  Created by Sufi Gaffar on 29/06/2021.
//

import Foundation
import SwiftUI

struct LetterInput: View {
    let box: Box
    let onSetLetter: (String, Box) -> Void
    private let rows = [
        ["q", "w", "e", "r", "t", "y", "u", "i", "o", "p"],
        ["a", "s", "d", "f", "g", "h", "j", "k", "l"],
        ["z", "x", "c", "v", "b", "n", "m"]
    ]
    
    @State private var selectedLetter = ""
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        VStack {
            Spacer()
            
            VStack(spacing: 10) {
                Text("\(selectedLetter != "" ? selectedLetter.uppercased() : " ")")
                    .foregroundColor(.blue)
                    .font(.system(size: 72))
                    .fontWeight(.bold)
                    .padding(.top, 50)
                
                Rectangle()
                    .fill(Color.blue)
                    .cornerRadius(2)
                    .frame(width: 48, height: 5)
            }
            
            Button(action: {
                onSetLetter(selectedLetter, box)
                self.presentationMode.wrappedValue.dismiss()
            }) {
                Text("✓")
                    .foregroundColor(Color.white)
                    .padding(7)
                    .padding(.leading, 15)
                    .padding(.trailing, 15)
                    .font(.system(size: 24))
            }
            .background(Color.green)
            .cornerRadius(10)
            .padding(.top, 50)
            .opacity(selectedLetter == "" ? 0 : 1)
            
            Spacer()
            
            GeometryReader { geometry in
                VStack {
                    ForEach (rows, id: \.self) { row in
                        HStack {
                            ForEach (row, id: \.self) { letter in
                                ZStack {
                                    Rectangle()
                                        .fill(Color.blue)
                                        .cornerRadius(5)
                                        .onTapGesture {
                                            selectedLetter = letter
                                        }
                                    
                                    Text(letter.uppercased())
                                        .font(.system(size: 24))
                                        .foregroundColor(.white)
                                        .fontWeight(.bold)
                                }
                                .frame(width: geometry.size.width * 0.081, height: 50)
                            }
                        }
                    }
                }
            }
            .frame(height: 165)
        }
        .padding(.leading, 15)
        .padding(.trailing, 15)
        .navigationTitle("Enter letter")
    }
}



struct LetterInput_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            NavigationView {
                LetterInput(box: Box()) { box, string in
                }
            }
        }
    }
}
