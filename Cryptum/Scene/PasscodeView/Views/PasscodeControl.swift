//
//  PasscodeControl.swift
//  Cryptum
//
//  Created by Bikash Tamang on 5/7/2022.
//

import SwiftUI

struct PasscodeControl: View {
    
    var pinCount: Int
    let maxIndex: Int
    
    var body: some View {
        HStack(spacing: 8) {
            ForEach(0...maxIndex, id: \.self) { index in
                Circle()
                    .fill(index < pinCount ? Color(hex: "0569FF") : Color(hex: "0569FF").opacity(0.3))
                    .frame(width: 12, height: 12)
            }
        }
        .padding(15)
    }
}

struct PasscodeControl_Previews: PreviewProvider {
    static var previews: some View {
        PasscodeControl(pinCount: 2, maxIndex: 3)
    }
}
