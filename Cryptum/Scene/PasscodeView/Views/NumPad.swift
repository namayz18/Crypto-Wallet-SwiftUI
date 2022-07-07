//
//  NumPad.swift
//  Cryptum
//
//  Created by Bikash Tamang on 5/7/2022.
//

import SwiftUI

struct NumPad: View {
    @Binding var pin: String
    
    func addPin(_ digit: String) {
        if self.pin.digits.count < 4 {
            self.pin += digit
        }
        
    }
    
    func forgetPin() {
        
    }
    
    func deletePin() {
        self.pin = String(self.pin.dropLast())
    }
    
    var body: some View {
        HStack {
            Button {
                self.addPin("1")
            } label: {
                Circle()
                    .strokeBorder(Color.init(hex: "0066FF"), lineWidth: 1)
                    .frame(width: 58, height: 58, alignment: .center)
                    .overlay(
                        Text("1")
                            .font(.medium(24))
                            .foregroundColor(.black)
                    )
            }
            
            Spacer()
            
            Button {
                self.addPin("2")
            } label: {
                Circle()
                    .strokeBorder(Color.init(hex: "0066FF"), lineWidth: 1)
                    .frame(width: 58, height: 58, alignment: .center)
                    .overlay(
                        Text("2")
                            .font(.medium(24))
                            .foregroundColor(.black)
                    )
            }
            
            Spacer()
            
            Button {
                self.addPin("3")
            } label: {
                Circle()
                    .strokeBorder(Color.init(hex: "0066FF"), lineWidth: 1)
                    .frame(width: 58, height: 58, alignment: .center)
                    .overlay(
                        Text("3")
                            .font(.medium(24))
                            .foregroundColor(.black)
                    )
            }
            

        }
        .padding(.horizontal, 50)
        .padding(.bottom, 30)
        
        HStack {
            Button {
                self.addPin("4")
            } label: {
                Circle()
                    .strokeBorder(Color.init(hex: "0066FF"), lineWidth: 1)
                    .frame(width: 58, height: 58, alignment: .center)
                    .overlay(
                        Text("4")
                            .font(.medium(24))
                            .foregroundColor(.black)
                    )
            }
            
            Spacer()
            
            Button {
                self.addPin("5")
            } label: {
                Circle()
                    .strokeBorder(Color.init(hex: "0066FF"), lineWidth: 1)
                    .frame(width: 58, height: 58, alignment: .center)
                    .overlay(
                        Text("5")
                            .font(.medium(24))
                            .foregroundColor(.black)
                    )
            }
            
            Spacer()
            
            Button {
                self.addPin("6")
            } label: {
                Circle()
                    .strokeBorder(Color.init(hex: "0066FF"), lineWidth: 1)
                    .frame(width: 58, height: 58, alignment: .center)
                    .overlay(
                        Text("6")
                            .font(.medium(24))
                            .foregroundColor(.black)
                    )
            }
            

        }
        .padding(.horizontal, 50)
        .padding(.bottom, 30)
        
        HStack {
            Button {
                self.addPin("7")
            } label: {
                Circle()
                    .strokeBorder(Color.init(hex: "0066FF"), lineWidth: 1)
                    .frame(width: 58, height: 58, alignment: .center)
                    .overlay(
                        Text("7")
                            .font(.medium(24))
                            .foregroundColor(.black)
                    )
            }
            
            Spacer()
            
            Button {
                self.addPin("8")
            } label: {
                Circle()
                    .strokeBorder(Color.init(hex: "0066FF"), lineWidth: 1)
                    .frame(width: 58, height: 58, alignment: .center)
                    .overlay(
                        Text("8")
                            .font(.medium(24))
                            .foregroundColor(.black)
                    )
            }
            
            Spacer()
            
            Button {
                self.addPin("9")
            } label: {
                Circle()
                    .strokeBorder(Color.init(hex: "0066FF"), lineWidth: 1)
                    .frame(width: 58, height: 58, alignment: .center)
                    .overlay(
                        Text("9")
                            .font(.medium(24))
                            .foregroundColor(.black)
                    )
            }
            

        }
        .padding(.horizontal, 50)
        .padding(.bottom, 30)
        
        HStack {
            Button {
                self.forgetPin()
            } label: {
                Text("FORGOT?")
                    .font(.medium(12))
                    .foregroundColor(.black)
                    .frame(width: 58, height: 58, alignment: .center)
            }
            
            Spacer()
            
            Button {
                self.addPin("0")
            } label: {
                Circle()
                    .strokeBorder(Color.init(hex: "0066FF"), lineWidth: 1)
                    .frame(width: 58, height: 58, alignment: .center)
                    .overlay(
                        Text("0")
                            .font(.medium(24))
                            .foregroundColor(.black)
                    )
            }
            
            Spacer()
            
            Button {
                self.deletePin()
            } label: {
                Text("Delete")
                    .font(.medium(12))
                    .foregroundColor(.black)
                    .frame(width: 58, height: 58, alignment: .center)
            }
            

        }
        .padding(.horizontal, 50)
        .padding(.bottom, 30)

    }
}

struct NumPad_Previews: PreviewProvider {
    static var previews: some View {
        NumPad(pin: .constant(""))
    }
}
