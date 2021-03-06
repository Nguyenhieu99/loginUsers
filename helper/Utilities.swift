//
//  Utilities.swift
//  loginUsers
//
//  Created by Nguyễn Hiếu on 08/07/2021.
//

import UIKit
import Foundation

class Utilities {
    
    static func styleTextField(_ textField: UITextField) {
        //Create the bottom line
        let bottomLine = CALayer()
        
        bottomLine.frame = CGRect(x: 0, y: textField.frame.height - 2, width: textField.frame.width, height: 2)
        
        bottomLine.backgroundColor = UIColor.init(red: 38/255, green: 173/255, blue: 99/255, alpha: 1).cgColor
        
        //Remove border on text field
        textField.borderStyle = .none
        
        //Add the line to the text field
        textField.layer.addSublayer(bottomLine)
    }
    
    static func styleFilledButton(_ button: UIButton) {
        //Filled rounded corner style
        button.backgroundColor = UIColor.init(red: 37/255, green: 173/255, blue: 99/255, alpha: 1)
        button.layer.cornerRadius = 25.0
        button.tintColor = UIColor.white
        }
    
    
    static func styleHollowButton(_ button: UIButton) {
        //Hollow rounded corner style
        button.layer.borderWidth = 2
        button.layer.borderColor = UIColor.black.cgColor
        button.layer.cornerRadius = 25.0
        button.tintColor = UIColor.black
        
    }
    
    static func isPassWordValid(_ password: String) -> Bool {
        let passwordTest = NSPredicate(format: "SELF MATCHES %@" , "^(?=.*[a-z])(?=.*[[$@$#!%*?&])[A-Za-z\\d$@$#!%*?&]{8,}")
        return passwordTest.evaluate(with: password)
        
    }
    
}
