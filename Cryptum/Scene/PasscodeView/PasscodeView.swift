//
//  PasscodeView.swift
//  Cryptum
//
//  Created by Bikash Tamang on 5/7/2022.
//

import SwiftUI

struct PasscodeView: View {
    @State var pin: String = ""
    @State var confirmedPin: String = ""
    @State var pinAdded: Bool = false
    
    func addPin(_ digit: String) {
        self.pin += digit
    }
    
    func forgetPin() {
        
    }
    
    func deletePin() {
        self.pin = String(self.pin.dropLast())
    }
    
    var body: some View {
        VStack {
            Spacer()
            
            Text(self.pinAdded ? "Confirm Your Pin Code" : "Your Pin Code")
                .font(.medium(22))
                .padding(.bottom, 20)
            
            PasscodeControl(pinCount: self.pinAdded ? confirmedPin.digits.count : pin.digits.count, maxIndex: 3)
            
            Spacer()
            
            NumPad(pin: self.pinAdded ? $confirmedPin : $pin)
            
            Spacer()
            
        }
        .onChange(of: pin) { value in
            if value.digits.count == 4 {
                self.pinAdded = true
            }
        }
        .onChange(of: confirmedPin) { value in
            if value.digits.count == 4 {
                //Navigate
            }
        }
    }
}

struct PasscodeView_Previews: PreviewProvider {
    static var previews: some View {
        PasscodeView()
    }
}
