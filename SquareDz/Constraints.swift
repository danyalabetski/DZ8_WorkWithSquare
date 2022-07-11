//
//  Constraints.swift
//  SquareDz
//
//  Created by Даниэл Лабецкий on 11.07.22.
//

import Foundation
import UIKit

extension ViewController {
    
    func constraintSquare() {
        
        let constraintsOne = [
            
            squareOne.bottomAnchor.constraint(equalTo: squareTwo.bottomAnchor, constant: 0),
            squareOne.leadingAnchor.constraint(equalTo: squareThree.leadingAnchor, constant: 0),

        ]

        NSLayoutConstraint.activate(constraintsOne)
    }
    
}

