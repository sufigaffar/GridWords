//
//  GridView.swift
//  GridWords
//
//  Created by Sufi Gaffar on 29/06/2021.
//

import Foundation
import SwiftUI

struct Grid: View {
    @ObservedObject var viewModel: GridViewModel
    @State private var opened: String? = nil

    var body: some View {
        let columns: [GridItem] = Array(repeating: .init(.flexible(), spacing: 5), count: 5)
        
        NavigationView {
            VStack(alignment: .leading) {
                LazyVGrid(
                    columns: columns,
                    spacing: 5
                ) {
                    ForEach(viewModel.boxes) { box in
                        if (box.contents == "") {
                            NavigationLink(
                                destination: LetterInput(box: box, onSetLetter: viewModel.setLetter)
                            ) {
                                ZStack {
                                    Rectangle()
                                        .fill(Color.blue)
                                        .cornerRadius(10)
                                        .aspectRatio(1, contentMode: .fit)
                                    Circle()
                                        .fill(Color.white)
                                        .frame(width: 2, height: 2)
                                }
                            }
                        } else {
                            ZStack {
                                RoundedRectangle(cornerRadius: 10)
                                    .strokeBorder(Color.blue, lineWidth: 5)
                                    .aspectRatio(1, contentMode: .fit)
                                Text(box.contents.uppercased())
                                    .font(.system(size: 42))
                                    .foregroundColor(.blue)
                                    .fontWeight(.bold)
                                    .aspectRatio(1, contentMode: .fit)
                            }
                        }
                    }
                }
                .padding(15)
                .padding(.top, 0)
                
                Spacer()
            }
            .navigationTitle("Select a box")
        }
    }
}


struct Grid_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Grid(viewModel: GridViewModel())
        }
    }
}
