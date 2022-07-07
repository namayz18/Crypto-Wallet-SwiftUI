//
//  AccountView.swift
//  Cryptum
//
//  Created by Bikash Tamang on 5/7/2022.
//

import SwiftUI

struct AccountView: View {
    
    let menuList: [String] = ["View Profile",
                              "Push Notification",
                              "Pass code lock",
                              "Auto Sale",
                              "Privacy policy",
                              "Data Recovery & Transfer",
                              "Language"]
    var body: some View {
        VStack {
            HStack {
                Spacer()
                
                Text("Account")
                    .font(.semiBold(18))
                
                Spacer()
                
                Image("Setting")
                    .resizable()
                    .frame(width: 25, height: 25, alignment: .center)
            }
            .padding(.horizontal)
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    HStack {
                        Image("Avatar")
                            .resizable()
                        .frame(width: 76, height: 76, alignment: .center)
                        
                        VStack(alignment: .leading, spacing: 6) {
                            Text("Alex Saman")
                                .font(.semiBold(22))
                            
                            Text("Male   .  Joined 2021")
                                .font(.medium(16))
                                .foregroundColor(.init(hex: "#969AA0"))
                            
                        }
                        
                        Spacer()
                    }
                    .padding(.bottom, 20)
                    
                    VStack(spacing: 16) {
                        ForEach(menuList, id: \.self) { item in
                            VStack(alignment: .leading, spacing: 16) {
                                HStack(alignment: .center, spacing: 14) {
                                
                                    Text(item)
                                        .font(.medium(16))
                                    
                                    Spacer()
                                    
                                    Image("Next")
                                        .resizable()
                                        .frame(width: 7, height: 12, alignment: .center)
                                    
                                }
                                .padding(.horizontal)
                                .frame(height: 55.0)
                                .background(
                                    RoundedRectangle(cornerRadius: 16.0)
                                        .stroke(Color.init(hex: "F4F6F9"), lineWidth: 1)
                                    
                                )
                            }
                        }
                    }
                    
                    Button {
                        
                    } label: {
                        RoundedRectangle(cornerRadius: 16.0)
                            .stroke(Color.init(hex: "0066FF"), lineWidth: 1)
                            .frame(height: 55.0)
                            .overlay(
                                Text("Log Out")
                                    .font(.medium(16))
                                    .foregroundColor(.init(hex: "0066FF"))
                            )
                        
                    }

                }
                .padding()
            } //: ScrollView
        }
        .padding(.top, 10)
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
