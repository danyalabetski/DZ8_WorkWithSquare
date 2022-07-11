//
//  ExtensionButtonOne.swift
//  SquareDz
//
//  Created by Даниэл Лабецкий on 11.07.22.
//

import Foundation
import UIKit


//HideButton.frame = CGRect(x: xCentrBtn, y: yCentrBtn, width: widthBtn, height: heightBtn)
//HideButton.backgroundColor = .black
//HideButton.layer.cornerRadius = HideButton.bounds.height / 2
//HideButton.addTarget(self, action: #selector(hideSquare), for: .touchUpInside)
//HideButton.setTitle("HIDE", for: .normal)
//view.addSubview(HideButton)

extension UIButton {
        
    func buttonExtension(butX: Int, butY: Int, butWidht: Int, butHeight: Int, title: String) {
        self.frame = CGRect(x: butX, y: butY, width: butWidht, height: butHeight)
        self.backgroundColor = .black
        self.layer.cornerRadius = self.bounds.height / 2
        self.setTitle(title, for: .normal)
        
    }
    
}
