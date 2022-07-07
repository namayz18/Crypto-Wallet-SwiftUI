//
//  SignUpView.swift
//  Cryptum
//
//  Created by Bikash Tamang on 5/7/2022.
//

import SwiftUI

struct SignUpView: View {
    
    @State var userName: String = ""
    @State var userEmail: String = ""
    @State var userPassword: String = ""
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 30) {
                Image("LogoBackground")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 260, height: 150, alignment: .center)
                    .padding()
                    
                Text("Let’s sign you Up!")
                    .font(.medium(32))
                    .frame(maxWidth: .infinity, alignment: .leading)

                VStack(alignment: .leading, spacing: 20) {

                    VStack(alignment: .leading, spacing: 8) {
                        Text("Your full name")
                            .font(.medium(13))
                            .foregroundColor(Color.init(hex: "969AA0"))
                        
                        TextField("", text: $userName)
                            .font(.semiBold(16))
                            .foregroundColor(.black)
                            .keyboardType(.emailAddress)
                            .autocapitalization(.none)
                        Rectangle()
                            .frame(height: 1.0)
                            .foregroundColor(.init(hex: "F4F6F9"))
                    }
                    
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Your email address")
                            .font(.medium(13))
                            .foregroundColor(Color.init(hex: "969AA0"))
                        
                        TextField("", text: $userEmail)
                            .font(.semiBold(16))
                            .foregroundColor(.black)
                            .keyboardType(.emailAddress)
                            .autocapitalization(.none)
                        Rectangle()
                            .frame(height: 1.0)
                            .foregroundColor(.init(hex: "F4F6F9"))
                    }
                    
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Your password")
                            .font(.medium(13))
                            .foregroundColor(Color.init(hex: "969AA0"))
                        
                        SecureField("", text: $userPassword)
                            .font(.semiBold(16))
                            .foregroundColor(.black)
                            .keyboardType(.emailAddress)
                            .autocapitalization(.none)
                        
                        Rectangle()
                            .frame(height: 1.0)
                            .foregroundColor(.init(hex: "F4F6F9"))
                    }
                    
                }
                
                FullButton(
                    text: "Create Account",
                    onTap: {
                    }
                )
                
                HStack {
                    Rectangle()
                        .frame(height: 2.0)
                        .foregroundColor(.init(hex: "F4F6F9"))
                    Text("Or sign in with")
                        .font(.semiBold(12))
                        .lineLimit(1)
                        .foregroundColor(.init(hex: "969AA0"))
                    Rectangle()
                        .frame(height: 2.0)
                        .foregroundColor(.init(hex: "F4F6F9"))
                }
                
                HStack {
                    Button {

                    } label: {
                        RoundedRectangle(cornerRadius: 16.0)
                            .stroke(Color.init(hex: "F4F6F9"), lineWidth: 2)
                            .frame(height: 50.0)
                            .overlay(
                                Image("GoogleIcon"), alignment: .center
                            )
                    }
                    
                    Button {

                    } label: {
                        RoundedRectangle(cornerRadius: 16.0)
                            .stroke(Color.init(hex: "F4F6F9"), lineWidth: 2)
                            .frame(height: 50.0)
                            .overlay(
                                Image("AppleIcon"), alignment: .center
                            )
                    }
                }
                
            }
            .padding()
        }
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}


