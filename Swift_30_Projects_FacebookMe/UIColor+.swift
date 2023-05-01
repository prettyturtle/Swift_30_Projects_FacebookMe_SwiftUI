//
//  UIColor+.swift
//  Swift_30_Projects_FacebookMe
//
//  Created by yc on 2023/05/01.
//

import UIKit

extension UIColor {
    static var mainColor: UIColor {
        return UIColor(hex: 0x3b5998)
    }
    
    convenience init(r: Int, g: Int, b: Int, a: CGFloat? = 1.0) {
        self.init(red: CGFloat(r) / 255, green: CGFloat(g) / 255, blue: CGFloat(b) / 255, alpha: a ?? 1.0)
    }
    
    convenience init(hex: Int) {
        self.init(r: (hex & 0xff0000) >> 16, g: (hex & 0xff00) >> 8, b: (hex & 0xff), a: 1)
    }
}
