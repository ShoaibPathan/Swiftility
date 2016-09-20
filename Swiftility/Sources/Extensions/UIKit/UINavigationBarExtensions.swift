//
//  UINavigationBarExtensions.swift
//  Swiftility
//
//  Created by Allan Barbato on 10/16/15.
//  Copyright © 2015 Allan Barbato. All rights reserved.
//

import Foundation

extension UINavigationBar
{
    /**
     Make the navigation bar transparant and translucent by default
     
     - parameter transparent: Is transparent
     - parameter translucent: =`transparent`; Is translucent, default is value of `transparent`
     */
    public func setTransparent(_ transparent: Bool, translucent: Bool? = nil)
    {
        self.setBackgroundImage((transparent ? UIImage() : nil), for: .default)
        self.shadowImage = (transparent ? UIImage() : nil)
        self.isTranslucent = translucent ?? transparent
    }
}
