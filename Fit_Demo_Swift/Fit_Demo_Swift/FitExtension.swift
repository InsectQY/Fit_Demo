//
//  LabelExtension.swift
//  Demo
//
//  Created by insect_qy on 2018/7/18.
//  Copyright © 2018年 insect_qy. All rights reserved.
//

import UIKit

private var horizontal_key = 100
private var vertical_key = 200
private var fitFontSizeKey = 300

public extension UILabel {

    @IBInspectable var fitFontSize: CGFloat {

        set {

            font = UIFont(name: font.fontName, size: KScaleH(fitFontSize))
            objc_setAssociatedObject(self, &fitFontSizeKey, newValue, .OBJC_ASSOCIATION_ASSIGN)
        }
        get {

            if let fs = objc_getAssociatedObject(self, &fitFontSizeKey) as? CGFloat {
                return fs
            }
            return font.pointSize
        }
    }
}

public extension NSLayoutConstraint {
    
    /// 水平方向约束
    @IBInspectable var verticalConstant: CGFloat {
        
        set {
            
            constant = KScaleV(verticalConstant)
            objc_setAssociatedObject(self, &vertical_key, newValue, .OBJC_ASSOCIATION_ASSIGN)
        }
        get {
            
            if let vc = objc_getAssociatedObject(self, &vertical_key) as? CGFloat {
                return vc
            }
            return constant
        }
    }
    
    /// 竖直方向约束
    @IBInspectable var horizontalConstant: CGFloat {
        
        set {
            
            constant = KScaleH(horizontalConstant)
            objc_setAssociatedObject(self, &horizontal_key, newValue, .OBJC_ASSOCIATION_ASSIGN)
        }
        get {
            
            if let hc = objc_getAssociatedObject(self, &horizontal_key) as? CGFloat {
                return hc
            }
            return constant
        }
    }
}

private func KScaleH(_ c: CGFloat) -> CGFloat {
    return UIScreen.main.bounds.width / 414 * c
}

private func KScaleV(_ c: CGFloat) -> CGFloat {
    return UIScreen.main.bounds.width / 736 * c
}
