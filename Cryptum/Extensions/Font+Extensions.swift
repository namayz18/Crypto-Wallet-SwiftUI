//
//  Font+Extensions.swift
//  Cryptum
//
//  Created by Bikash Tamang on 4/7/2022.
//

import SwiftUI

extension Font {

    static func extraBold(_ size: Int) -> Font {
        return Font.custom("Poppins-ExtraBold", size: CGFloat(size))
    }

    static func bold(_ size: Int) -> Font {
        return Font.custom("Poppins-Bold", size: CGFloat(size))
    }

    static func semiBold(_ size: Int) -> Font {
        return Font.custom("Poppins-SemiBold", size: CGFloat(size))
    }
    
    static func medium(_ size: Int) -> Font {
        return Font.custom("Poppins-Medium", size: CGFloat(size))
    }

    static func regular(_ size: Int) -> Font {
        return Font.custom("Poppins-Regular", size: CGFloat(size))
    }

    static func italic(_ size: Int) -> Font {
        return Font.custom("Poppins-Italic", size: CGFloat(size))
    }

    static func light(_ size: Int) -> Font {
        return Font.custom("Poppins-Light", size: CGFloat(size))
    }

}
