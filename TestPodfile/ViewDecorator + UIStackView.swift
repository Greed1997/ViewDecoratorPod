//
//  ViewDecorator + UIStackView.swift
//  TestPodfile
//
//  Created by Александр on 31.07.2024.
//

import UIKit

public extension ViewDecorator where View: UIStackView {
    
    static func vertical(_ spacing: CGFloat) -> ViewDecorator<View> {
        ViewDecorator<View> {
            $0.axis         = .vertical
            $0.distribution = .fill
            $0.spacing      = spacing
        }
    }
    
    static func horizontal(_ spacing: CGFloat) -> ViewDecorator<View> {
        ViewDecorator<View> {
            $0.axis         = .horizontal
            $0.distribution = .fill
            $0.spacing      = spacing
        }
    }
    
    static func distribution(_ distribution: UIStackView.Distribution) -> ViewDecorator<View> {
        ViewDecorator<View> { $0.distribution = distribution }
    }
    
    static func alignment(_ alignment: UIStackView.Alignment) -> ViewDecorator<View> {
        ViewDecorator<View> { $0.alignment = alignment }
    }
    
}
