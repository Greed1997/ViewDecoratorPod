//
//  ViewDecorator.swift
//  TestPodfile
//
//  Created by Александр on 04.07.2024.
//

import UIKit

public struct ViewDecorator<View: UIView> {
    
    let decoration: (View) -> Void
    
    func decorate(_ view: View) {
        decoration(view)
    }
    
}
