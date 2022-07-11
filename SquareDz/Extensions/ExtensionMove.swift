//
//  Extension.swift
//  SquareDz
//
//  Created by Даниэл Лабецкий on 11.07.22.
//

import Foundation
import UIKit

extension ViewController {
    
    //Move func
    @objc func moveSquareOne(recognizer: UIPanGestureRecognizer) {
        if recognizer.state == .changed {
            let translation = recognizer.translation(in: self.view)
            let xsquareOne = squareOne.center.x + translation.x
            let ysquareOne = squareOne.center.y  + translation.y
            squareOne.center = CGPoint(x: xsquareOne, y: ysquareOne)
            recognizer.setTranslation(CGPoint.zero, in: self.view)
        } else if recognizer.state == .ended {}
    }
    
    @objc func moveSquareTwo(recognizer: UIPanGestureRecognizer) {
        if recognizer.state == .changed {
            let translation = recognizer.translation(in: self.view)
            let xsquareTwo = squareTwo.center.x + translation.x
            let ysquareTwo = squareTwo.center.y  + translation.y
            squareTwo.center = CGPoint(x: xsquareTwo, y: ysquareTwo)
            recognizer.setTranslation(CGPoint.zero, in: self.view)
        } else if recognizer.state == .ended {}
    }
    
    @objc func moveSquareThree(recognizer: UIPanGestureRecognizer) {
        if recognizer.state == .changed {
            let translation = recognizer.translation(in: self.view)
            let xsquareThree = squareThree.center.x + translation.x
            let ysquareThree = squareThree.center.y  + translation.y
            squareThree.center = CGPoint(x: xsquareThree, y: ysquareThree)
            recognizer.setTranslation(CGPoint.zero, in: self.view)
        } else if recognizer.state == .ended {}
    }
    
    @objc func moveSquareFour(recognizer: UIPanGestureRecognizer) {
        if recognizer.state == .changed {
            let translation = recognizer.translation(in: self.view)
            let xsquareFour = squareFour.center.x + translation.x
            let ysquareFour = squareFour.center.y  + translation.y
            squareFour.center = CGPoint(x: xsquareFour, y: ysquareFour)
            recognizer.setTranslation(CGPoint.zero, in: self.view)
        } else if recognizer.state == .ended {}
    }
}
