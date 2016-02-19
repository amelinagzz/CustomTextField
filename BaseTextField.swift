//
//  BaseTextField.swift
//  TextFieldTest
//
//  Created by Adriana Gonzalez on 2/18/16.
//  Copyright © 2016 Adriana Gonzalez. All rights reserved.
//


// Still in progress
// Height should always be 60px (it shouldn't)
// Having trouble adjusting top padding (overlap by 12px to avoid too much separation between textfields)

import UIKit

class BaseTextField: UITextField {
    
    private var lineView : CALayer!
    private var messageLbl : UILabel!
    
    
    override func textRectForBounds(bounds: CGRect) -> CGRect {
        return CGRectInset(bounds, 0, -8)
    }
    
    override func placeholderRectForBounds(bounds: CGRect) -> CGRect {
        return CGRectInset(bounds, 0, -8)
    }
    
    override func editingRectForBounds(bounds: CGRect) -> CGRect {
        return CGRectInset(bounds, 0, -8)
        
    }
    
    override func drawRect(rect: CGRect) {
        
        
        lineView = CALayer()
        lineView.frame = CGRectMake(0,self.frame.size.height-15, self.frame.size.width,1)
        lineView.backgroundColor = LIGHT_WHITE.CGColor
        self.layer.addSublayer(lineView)
        
        self.font = UIFont(name: "Quicksand-Regular", size: 18)
        self.tintColor = GREEN_COLOR
        self.textColor = UIColor.whiteColor()
        
        if let placeholder = self.placeholder {
            let ph = NSAttributedString(string: placeholder, attributes: [NSForegroundColorAttributeName : UIColor(white: 1, alpha: 0.6)])
            self.attributedPlaceholder = ph
        }
        
        messageLbl = UILabel(frame: CGRectMake(0,self.frame.size.height-14,self.frame.size.width, 14))
        messageLbl.font = UIFont(name: "Quicksand-Regular", size: 13)
        messageLbl.textColor = RED_COLOR
        messageLbl.hidden = true
        self.addSubview(messageLbl)
        
    }
    
    
    func validate() -> Bool {
        
        if self.text == nil || self.text == "" {
            messageLbl.text = "Required"
            messageLbl.hidden = false
            
            return false
        }
        
        lineView.backgroundColor = LIGHT_WHITE.CGColor
        messageLbl.hidden = true
        
        return true
        
    }
    
    override func resignFirstResponder() -> Bool {
        
        if validate() {
            
            
        } else {
            lineView.backgroundColor = RED_COLOR.CGColor
            
        }
        
        return true
    }
    
}
