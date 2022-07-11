//
//  ExtensionOpenAndClose.swift
//  SquareDz
//
//  Created by Даниэл Лабецкий on 11.07.22.
//

import Foundation

extension ViewController {
    
    // Open and close func
    @objc func hideSquare() {
        squareOne.isHidden = true
        squareTwo.isHidden = true
        squareThree.isHidden = true
        squareFour.isHidden = true
    }
    @objc func openSquare() {
        squareOne.isHidden = false
        squareTwo.isHidden = false
        squareThree.isHidden = false
        squareFour.isHidden = false
    }
}
