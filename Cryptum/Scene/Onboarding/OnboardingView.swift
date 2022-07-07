//
//  OnboardingView.swift
//  Cryptum
//
//  Created by Bikash Tamang on 4/7/2022.
//

import SwiftUI

struct OnboardingView: View {
    
    @State private var selectedItem = 0
    
    var body: some View {
        VStack {
            TabView(selection: $selectedItem) {
                PageView(
                    title: "The most Trusted Crypto Wallet?",
                    subtitle: "We help our users to make the right financial decisions",
                    imageName: "Onboarding.PageOne"
                ).tag(0)

                PageView(
                    title: "Receive & Send Money to Friends",
                    subtitle: "There are 10+ best sequrity service and smart way to eaming money from trading for you.",
                    imageName: "Onboarding.PageTwo"
                ).tag(1)

                PageView(
                    title: "Your safety is our top priority",
                    subtitle: "Get rid of your debt monthly debt payments are the biggest obstacle",
                    imageName: "Onboarding.PageThree"
                ).tag(2)

            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
            .frame(
                width: UIScreen.main.bounds.width
            )
            
            PageControl(index: $selectedItem, maxIndex: 2)
                .frame(width: UIScreen.main.bounds.width, alignment: .center)
                .padding()
                .edgesIgnoringSafeArea(.bottom)
            
            FullButton(
                text: "Create a new account",
                onTap: {
                }
            ).padding(.horizontal)
            
            FullButton(
                text: "I already have an account",
                onTap: {
                },
                backgroundColor: .clear,
                textColor: .blue
            ).padding(.horizontal)
        }
    }
}

struct PageView: View {
    let title: String
    let subtitle: String
    let imageName: String
    init(
        title: String,
        subtitle: String,
        imageName: String) {
        self.title = title
        self.subtitle = subtitle
        self.imageName = imageName
    }

    var body: some View {
        VStack(alignment: .center, spacing: nil) {

            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding()
            
            Spacer()
            
            VStack(alignment: .center, spacing: 10) {
                Text(title)
                    .font(.bold(38))
                    .multilineTextAlignment(.leading)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.top)
                Text(subtitle)
                    .font(.medium(14))
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.leading)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
    }
}

struct PageControl: View {
    
    @Binding var index: Int
    let maxIndex: Int
    
    var body: some View {
        HStack(spacing: 8) {
            ForEach(0...maxIndex, id: \.self) { index in
                Circle()
                    .fill(index == self.index ? Color(hex: "0569FF") : Color(hex: "0569FF").opacity(0.3))
                    .frame(width: 5, height: 5)
            }
        }
        .padding(15)
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
