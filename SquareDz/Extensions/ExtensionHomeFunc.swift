//
//  HomeFunc.swift
//  SquareDz
//
//  Created by Даниэл Лабецкий on 11.07.22.
//

import Foundation
import UIKit

extension ViewController {
    
    //Home func
    @objc func homePlace(){
        let distance : CGFloat = 10
        let widhSquare = view.frame.width / 4
        let heightSquare = view.frame.height / 8
        
        let xsquareOne = (view.frame.width / 2) - widhSquare - distance
        let ysquareOne = (view.frame.height / 2) - heightSquare - distance
        squareOne.frame = CGRect(x: xsquareOne, y: ysquareOne, width: widhSquare, height: heightSquare)
        view.addSubview(squareOne)
        
        let xsquareTwo = (view.frame.width / 2) + distance
        let ysquareTwo = (view.frame.height / 2) - heightSquare - distance
        squareTwo.frame = CGRect(x: xsquareTwo, y: ysquareTwo, width: widhSquare, height: heightSquare)
        view.addSubview(squareTwo)
        
        let xsquareThree = (view.frame.width / 2) - widhSquare - distance
        let ysquareThree = (view.frame.height / 2) + distance
        squareThree.frame = CGRect(x: xsquareThree, y: ysquareThree, width: widhSquare, height: heightSquare)
        view.addSubview(squareThree)
        
        let xsquareFour = (view.frame.width / 2) + distance
        let ysquareFour = (view.frame.height / 2) + distance
        squareFour.frame = CGRect(x: xsquareFour, y: ysquareFour, width: widhSquare, height: heightSquare)
        view.addSubview(squareFour)
    }
}
