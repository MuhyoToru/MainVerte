//
//  CustomTextFieldCoordinator.swift
//  MainVerte_V002
//
//  Created by Apprenant 166 on 06/08/2024.
//

import UIKit

class CustomCursorTextField: UITextField {
    var customCursorHeight: CGFloat = 36
    var cursorYOffset: CGFloat = 36

    override func caretRect(for position: UITextPosition) -> CGRect {
        var originalRect = super.caretRect(for: position)
        originalRect.size.height = customCursorHeight
        
        // Adjust the cursor's vertical position
        originalRect.origin.y += cursorYOffset
        
        return originalRect
    }
}

class CustomTextFieldCoordinator: NSObject, UITextFieldDelegate {
    var parent: CustomTextFieldUIView

    init(parent: CustomTextFieldUIView) {
        self.parent = parent
    }

    func textFieldDidChangeSelection(_ textField: UITextField) {
        parent.text = textField.text ?? ""
    }
}


