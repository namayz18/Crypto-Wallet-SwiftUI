//
//  WelcomeView.swift
//  Cryptum
//
//  Created by Bikash Tamang on 5/7/2022.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        VStack(spacing: 0) {
            Image("LogoBackground")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 260, height: 300, alignment: .center)
                .padding()
            Text("Hello, Saman!👋")
                .font(.medium(32))
            Text("Welcome to Сryptum")
                .font(.medium(32))
            Text("It’s great to have you here")
                .font(.medium(13))
                .foregroundColor(Color.init(hex: "969AA0"))
                .padding(.vertical, 20)

            Spacer()
            
            FullButton(text: "I’m ready to start!")
                .padding(.vertical)
        }
        .padding(.horizontal)
        
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
