//
//  AYSwizzleMethod.swift
//  AYEmptyDataView
//
//  Created by amg on 2021/3/31.
//

import Foundation

class AYSwizzleMethod {
    
   static func swizzleMethod(_ cls: AnyClass,originalSelector: Selector, swizzledSelector: Selector) {
        
        let originalMethod = class_getInstanceMethod(cls, originalSelector)
        let swizzledMethod = class_getInstanceMethod(cls, swizzledSelector)
        
        let didAddMethod = class_addMethod(cls, originalSelector, method_getImplementation(swizzledMethod!), method_getTypeEncoding(swizzledMethod!))
        
        
        if didAddMethod {
            class_replaceMethod(cls, swizzledSelector, method_getImplementation(originalMethod!), method_getTypeEncoding(originalMethod!))
        } else {
            method_exchangeImplementations(originalMethod!, swizzledMethod!);
        }
        
    }
    
}
