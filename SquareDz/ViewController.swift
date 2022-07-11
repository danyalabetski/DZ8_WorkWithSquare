//
//  ViewController.swift
//  SquareDz
//
//  Created by Даниэл Лабецкий on 11.07.22.
//

import UIKit

class ViewController: UIViewController {
    
    var squareOne = UIView()
    var squareTwo = UIView()
    var squareThree = UIView()
    var squareFour = UIView()
    
    let plusButton = UIButton()
    let minusButton = UIButton()
    let HomePlaсeButton = UIButton()
    let HideButton = UIButton()
    let OpenButton = UIButton()
    let widthBtn = 80
    let heightBtn = 80
    
    var squareHeight: NSLayoutConstraint!
    var squareWidth: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let distance : CGFloat = 10
        let widhSquare = view.frame.width / 4
        let heightSquare = view.frame.height / 8
        
        // MARK: - Squares
        squareWidth = squareOne.widthAnchor.constraint(equalToConstant: view.frame.width / 4)
        squareHeight = squareOne.heightAnchor.constraint(equalToConstant: view.frame.height / 8)

        squareWidth.isActive = true
        squareHeight.isActive = true
        
        squareOne.translatesAutoresizingMaskIntoConstraints = false
        squareOne.backgroundColor = .black
        view.addSubview(squareOne)
        
        let xsquareTwo = (view.frame.width / 2) + distance
        let ysquareTwo = (view.frame.height / 2) - heightSquare - distance
        squareTwo.frame = CGRect(x: xsquareTwo, y: ysquareTwo, width: widhSquare, height: heightSquare)
        squareTwo.backgroundColor = .black
        view.addSubview(squareTwo)
        
        let xsquareThree = (view.frame.width / 2) - widhSquare - distance
        let ysquareThree = (view.frame.height / 2) + distance
        squareThree.frame = CGRect(x: xsquareThree, y: ysquareThree, width: widhSquare, height: heightSquare)
        squareThree.backgroundColor = .black
        view.addSubview(squareThree)
        
        let xsquareFour = (view.frame.width / 2) + distance
        let ysquareFour = (view.frame.height / 2) + distance
        squareFour.frame = CGRect(x: xsquareFour, y: ysquareFour, width: widhSquare, height: heightSquare)
        squareFour.backgroundColor = .black
        view.addSubview(squareFour)
        
        //MARK: Buttons
        let xCentrBtn = (Int(view.bounds.width) / 2) - (widthBtn / 2)
        let yCentrBtn = Int(view.bounds.height) - (heightBtn * 2)
        HideButton.buttonExtension(butX: xCentrBtn, butY: yCentrBtn, butWidht: widthBtn, butHeight: heightBtn, title: "Hide")
        HideButton.addTarget(self, action: #selector(hideSquare), for: .touchUpInside)
        view.addSubview(HideButton)
        
        let xdownBtn = (Int(view.bounds.width) / 2) - (widthBtn / 2)
        let ydownBtn = Int(view.bounds.height) - (heightBtn * 10) / 3
        OpenButton.buttonExtension(butX: xdownBtn, butY: ydownBtn, butWidht: widthBtn, butHeight: heightBtn, title: "Open")
        OpenButton.addTarget(self, action: #selector(openSquare), for: .touchUpInside)
        view.addSubview(OpenButton)
        
//        let xLeftBtn = (Int(view.bounds.width) / 2) - widthBtn - (widthBtn)
//        let yLeftBtn = Int(view.bounds.height) - (heightBtn * 2)
//        minusButton.buttonExtension(butX: xLeftBtn, butY: yLeftBtn, butWidht: widthBtn, butHeight: heightBtn, title: "-")
//        minusButton.addTarget(self, action: #selector(addMinus), for: .touchUpInside)
//        view.addSubview(minusButton)
        
        let xLeftTwoBtn = (Int(view.bounds.width) / 2) - widthBtn - (widthBtn)
        let yLeftTwoBtn = Int(view.bounds.height) - (heightBtn * 10) / 3
        plusButton.buttonExtension(butX: xLeftTwoBtn, butY: yLeftTwoBtn, butWidht: widthBtn, butHeight: heightBtn, title: "+")
        plusButton.addTarget(self, action: #selector(addPlus), for: .touchUpInside)
        view.addSubview(plusButton)
        
        let xRightBtn = (Int(view.bounds.width) / 2) + widthBtn
        let yRightBtn = Int(view.bounds.height) - (heightBtn * 2)
        HomePlaсeButton.buttonExtension(butX: xRightBtn, butY: yRightBtn, butWidht: widthBtn, butHeight: heightBtn, title: "Home")
        HomePlaсeButton.addTarget(self, action: #selector(homePlace), for: .touchUpInside)
        view.addSubview(HomePlaсeButton)
        
        let moveSquareOne = UIPanGestureRecognizer(target: self, action: #selector(moveSquareOne))
        squareOne.addGestureRecognizer(moveSquareOne)
        let moveSquareTwo = UIPanGestureRecognizer(target: self, action: #selector(moveSquareTwo))
        squareTwo.addGestureRecognizer(moveSquareTwo)
        let moveSquareThree = UIPanGestureRecognizer(target: self, action: #selector(moveSquareThree))
        squareThree.addGestureRecognizer(moveSquareThree)
        let moveSquareFour = UIPanGestureRecognizer(target: self, action: #selector(moveSquareFour))
        squareFour.addGestureRecognizer(moveSquareFour)
        
        constraintSquare()
    }
    
    @objc func addPlus() {
    
        
        squareWidth.constant = squareWidth.constant == view.frame.width / 4 ? 200 : view.frame.width / 4
        squareHeight.constant = squareHeight.constant == view.frame.height / 8 ? 200 : view.frame.height / 8

        
    }
    
//    @objc func addMinus() {
//    }
}



