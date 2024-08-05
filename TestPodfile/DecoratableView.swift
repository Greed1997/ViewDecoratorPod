//
//  DecoratableView.swift
//  TestPodfile
//
//  Created by Александр on 04.07.2024.
//

import UIKit

public protocol DecoratableView: UIView {}

extension UIView: DecoratableView {}

public extension DecoratableView {
    
    public init(decorator: ViewDecorator<Self>) {
        self.init(frame: .zero)
        decorate(with: decorator)
    }
    
    @discardableResult
    func decorated(with decorator: ViewDecorator<Self>) -> Self {
        decorate(with: decorator)
        return self
    }
    
    func decorate(with decorator: ViewDecorator<Self>) {
        decorator.decorate(self)
        currentDecorators.append(decorator)
    }
    
    func redecorate() {
        currentDecorators.forEach {
            $0.decorate(self)
        }
    }
    
}

private extension DecoratableView {
    
    var currentDecorators: [ViewDecorator<Self>] {
        get {
            objc_getAssociatedObject(self, &AssociatedKeys.decorator) as? [ViewDecorator<Self>] ?? [ViewDecorator<Self>]()
        }
        set {
            objc_setAssociatedObject(
                self,
                &AssociatedKeys.decorator,
                newValue,
                objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
    }
    
}

private enum AssociatedKeys {
    
    static var decorator = "AssociatedKeys.decorator"
    
}
