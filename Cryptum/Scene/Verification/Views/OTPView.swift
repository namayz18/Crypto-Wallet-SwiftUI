//
// OTPView.swift
// Voly
//
// Created by Anthony Rey on 11/8/21
// Copyright © 2021 MILKO GROCERY PTY LTD. All rights reserved.
//

import SwiftUI
import Introspect

private struct PinCircle: View {
    var text: String

    var body: some View {
        Text(text)
            .font(.bold(28))
            .foregroundColor(Color.black)
            .frame(width: 15, height: 15, alignment: .center)
            .padding(10)
            .overlay(
                Circle()
                .stroke(Color.black, lineWidth: 1)
            )
    }
}

private struct PinSquare: View {
    var text: String
    var focused: Bool
    var body: some View {
        if (text !=  "") {
            RoundedRectangle(cornerRadius: 16.0, style: .continuous)
                .fill(Color.init(hex: "F4F6F9"))
            .frame(width: 57.0, height: 57.0)
            .overlay(
                Text(text)
                    .font(.semiBold(24))
                    .foregroundColor(Color.black)
                    .frame(width: 15, height: 15, alignment: .center)
            )
        } else {
            if focused {
                RoundedRectangle(cornerRadius: 16.0, style: .continuous)
                .stroke(Color.init(hex: "0066FF"), lineWidth: 1)
                .frame(width: 57.0, height: 57.0)
                .overlay(
                    VStack {
                        Spacer()
                        Rectangle()
                            .fill(Color.init(hex: "0066FF"))
                            .foregroundColor(Color.init(hex: "0066FF"))
                            .frame(height: 2)
                            .padding(16)
                    }
                )
            } else {
                RoundedRectangle(cornerRadius: 16.0, style: .continuous)
                .stroke(Color.init(hex: "F4F6F9"), lineWidth: 1)
                .frame(width: 57.0, height: 57.0)
                .overlay(
                    Text(text)
                        .font(.semiBold(24))
                        .foregroundColor(Color.black)
                        .frame(width: 15, height: 15, alignment: .center)
                )
            }
        }
    }
}

public struct OTPView: View {

    var maxDigits: Int = 4
    @State var pin: String = ""
    @State var showPin = true


    public var body: some View {
        VStack {
            ZStack {
                pinDots
                backgroundField
               // showPinButton
            }
        }
    }

    private var pinDots: some View {
        HStack {

            Spacer()

            ForEach(0 ..< maxDigits, id: \.self) { index in

                if index < pin.count {
                    PinSquare(text: String(self.pin.digits[index]), focused: false)
                } else {
                    PinSquare(text: "", focused: index == pin.count ? true : false)
                }

                Spacer()
            }
        }.frame(height: 130)
    }

    private var backgroundField: some View {
        let boundPin = Binding<String>(get: {self.pin }, set: { newValue in
            self.pin = newValue
            self.submitPin()
        })

        return TextField("", text: boundPin, onCommit: submitPin)
            .accentColor(.clear)
            .foregroundColor(.clear)
            .keyboardType(.numberPad)
            .font(.regular(45))
            .introspectTextField { textField in
                DispatchQueue.main.asyncAfter(deadline: .now()) {
                    textField.becomeFirstResponder()
                }
            }

    }

    private var showPinButton: some View {
        Button(action: {
            self.showPin.toggle()
        }, label: {
            self.showPin ?
                Image(systemName: "eye.slash.fill").foregroundColor(.primary) :
                Image(systemName: "eye.fill").foregroundColor(.primary)
        })
    }

    private func submitPin() {
        if pin.count == maxDigits {
           
        }
    }

}

struct OTPView_Previews: PreviewProvider {
    static var previews: some View {
        VerificationView()
    }
}

extension String {
    var digits: [Int] {
        var result = [Int]()
        for char in self {
            if let number = Int(String(char)) {
                result.append(number)
            }
        }

    return result
    }
}

extension Int {

    var numberString: String {

        guard self < 10 else { return "0" }

        return String(self)
   }
}
