//
//  UILabel.swift
//  App Store
//
//  Created by Joel de Almeida Souza on 10/04/21.
//

import UIKit

extension UILabel {
    static func textlabel(text: String, fontSize: CGFloat, numberOfLines: Int = 1) -> UILabel {
        let label = UILabel()
        
        label.font = UIFont.systemFont(ofSize: fontSize)
        label.numberOfLines = numberOfLines
        label.text = text
        
        return label
    }
}
