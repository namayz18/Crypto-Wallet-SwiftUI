//
//  FullButton.swift
//  Cryptum
//
//  Created by Bikash Tamang on 4/7/2022.
//

import SwiftUI

struct FullButton: View {
    var text: String
    var backgroundColor: Color
    var textColor: Color
    var onTap: (() -> Void)?

    init(text: String,
         onTap: @escaping () -> Void = {},
         backgroundColor: Color = .blue,
         textColor: Color = .white
         ) {
        self.text = text
        self.onTap = onTap
        self.backgroundColor = backgroundColor
        self.textColor = textColor
    }

    var body: some View {
        Button {
            self.onTap?()
        } label: {
            Text(text)
                .frame(minWidth: 0, maxWidth: .infinity, maxHeight: 25.0)
                .font(.medium(16))
                .padding()
                .foregroundColor(textColor)
                .background(Rectangle().foregroundColor(backgroundColor).cornerRadius(16.0))
        }
    }
}
