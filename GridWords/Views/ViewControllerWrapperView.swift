//
//  ViewControllerWrapperView.swift
//  GridWords
//
//  Created by Sufi Gaffar on 06/07/2021.
//

import Foundation
import SwiftUI

struct ViewControllerWrapperView: UIViewControllerRepresentable {
    let viewController: UIViewController
    
    func makeUIViewController(context: Context) -> some UIViewController {
        return viewController
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
    }
}
