//
//  ViewDecorator + UIView.swift
//  TestPodfile
//
//  Created by Александр on 31.07.2024.
//

import UIKit

public extension ViewDecorator where View: UIView {
    
    static func backgroundColor(_ color: UIColor) -> ViewDecorator<View> {
        ViewDecorator<View> { $0.backgroundColor = color }
    }
    
    static func rounded(_ radius: CGFloat) -> ViewDecorator<View> {
        ViewDecorator<View> {
            $0.layer.cornerRadius = radius
            $0.clipsToBounds      = true
        }
    }
    
    static func borderColor(_ color: CGColor) -> ViewDecorator<View> {
        ViewDecorator<View> { $0.layer.borderColor = color }
    }
    
    static func borderWidth(_ width: CGFloat) -> ViewDecorator<View> {
        ViewDecorator<View> { $0.layer.borderWidth = width }
    }
    
}
