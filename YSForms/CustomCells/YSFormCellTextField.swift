//
//  YSFormCellTextField.swift
//  
//
//  Created by Cem Olcay on 25/06/15.
//
//

import UIKit

class YSFormCellTextField: JVFloatLabeledTextField, UITextFieldDelegate {

    init (height: CGFloat, title: String, value: String?) {
        super.init(frame: CGRect(x: 20, y: 0, width: YSFormWidth - 40, height: height))
        delegate = self
        
        // content
        
        if let v = value {
            text = v
            placeholderYPadding = 10
        }
        
        // style
        
        textColor = YSFormCellAppearanceDefault.textColor
        font = YSFormCellAppearanceDefault.textFont
        
        attributedPlaceholder = NSAttributedString(
            text: title,
            color: YSFormCellAppearanceDefault.placeholderColor,
            font: YSFormCellAppearanceDefault.placeholderFont)
        
        floatingLabelYPadding = 8
        
        floatingLabelTextColor = YSFormCellAppearanceDefault.floatingPlaceholderColor
        floatingLabelActiveTextColor = YSFormCellAppearanceDefault.floatingPlaceholderActiveColor
        floatingLabelFont = YSFormCellAppearanceDefault.floatingPlaceholderFont
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func textFieldDidBeginEditing(textField: UITextField) {
        placeholderYPadding = 0
    }
    
}
