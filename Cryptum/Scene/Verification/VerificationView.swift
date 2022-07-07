//
//  VerificationView.swift
//  Cryptum
//
//  Created by Bikash Tamang on 5/7/2022.
//

import SwiftUI

struct VerificationView: View {
    var body: some View {
        VStack {
            Text("Verification code")
                .font(.medium(32))
                .padding(.top, 80)
            
            Text("We have sent the code verification to your email address")
                .font(.light(13))
                .foregroundColor(.init(hex: "BBBFC7"))
                .padding(.horizontal)
            
            OTPView(maxDigits: 4)
                .padding(.vertical)
            
            Button {

            } label: {
                Text("Resend Code")
                    .font(.light(13))
                    .foregroundColor(.init(hex: "1472FF"))
                    .padding()
            }
            
            Spacer()
        }
    }
}

struct VerificationView_Previews: PreviewProvider {
    static var previews: some View {
        VerificationView()
    }
}
