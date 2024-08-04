//
//  ViewDecorator + UIButton.swift
//  TestPodfile
//
//  Created by Александр on 31.07.2024.
//

import UIKit

public extension ViewDecorator where View: UIButton {
    
    static func text(_ text: String) -> ViewDecorator<View> {
        ViewDecorator<View> { $0.setTitle(text, for: .normal) }
    }
    
    static func textColor(_ textColor: UIColor) -> ViewDecorator<View> {
        ViewDecorator<View> { $0.setTitleColor(textColor, for: .normal) }
    }
    
    static func backgroundColor(_ color: UIColor) -> ViewDecorator<View> {
        ViewDecorator<View> { $0.backgroundColor = color }
    }
    
    static func rounded(_ radius: CGFloat) -> ViewDecorator<View> {
        ViewDecorator<View> {
            $0.layer.cornerRadius = radius
            $0.clipsToBounds      = true
        }
    }
    
    static func alignment(_ alignment: NSTextAlignment) -> ViewDecorator<View> {
        ViewDecorator<View> { $0.titleLabel?.textAlignment = alignment }
    }

    static func font(_ font: UIFont) -> ViewDecorator<View> {
        ViewDecorator<View> { $0.titleLabel?.font = font }
    }
    
    static func numberOfLines(_ numberOfLines: Int) -> ViewDecorator<View> {
        ViewDecorator<View> { $0.titleLabel?.numberOfLines = numberOfLines }
    }
    
}
