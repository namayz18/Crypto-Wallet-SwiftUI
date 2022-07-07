//
//  HomeView.swift
//  Cryptum
//
//  Created by Bikash Tamang on 5/7/2022.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(alignment: .leading, spacing: 0.0) {
                HStack {
                    Image("Avatar")
                        .resizable()
                        .frame(width: 48, height: 48, alignment: .center)
                    Spacer()
                    Image("Search")
                        .resizable()
                        .frame(width: 25, height: 25, alignment: .center)
                        .padding(.trailing)
                    Image("Scan")
                        .resizable()
                        .frame(width: 25, height: 25, alignment: .center)
                }
                .padding(.bottom, 16)
                
                Text("Hello,")
                    .font(.semiBold(36))
                Text("Alex Saman 👋")
                    .font(.semiBold(36))
                    .padding(.bottom, 16)
                Image("Balance.background")
                    .resizable()
                    .frame(height: 120)
                    .overlay(
                        HStack {
                            VStack(alignment: .leading, spacing: 10) {
                                Text("Total balance")
                                    .font(.semiBold(18))
                                .foregroundColor(.white)
                                Text("Cash available")
                                    .font(.medium(12))
                                .foregroundColor(.white)
                            }
                            
                            Spacer()
                            
                            Text("$ 415,38")
                                .font(.semiBold(24))
                                .foregroundColor(.white)
                        }
                        .padding()
                    )
                HStack {
                    Text("Markets")
                        .font(.semiBold(20))
                        .foregroundColor(.black)
                    
                    Spacer()
                    
                    Text("See All")
                        .font(.medium(14))
                        .foregroundColor(.init(hex: "0A6CFF"))
                    
                }
                .padding(.top, 30)
                .padding(.bottom, 20)
                
                VStack(spacing: 16) {
                    ForEach(CoinData) { item in
                        VStack(alignment: .leading, spacing: 16) {
                            HStack(alignment: .center, spacing: 14) {
                                Image(item.image)
                                    .resizable()
                                    .frame(width: 50, height: 50, alignment: .center)
                                
                                VStack(alignment: .leading, spacing: 6) {
                                    Text(item.name)
                                        .font(.semiBold(14))
                                    Text(item.symbol)
                                        .font(.medium(12))
                                        .foregroundColor(.init(hex: "969AA0"))
                                }
                                .frame(width: 70,alignment: .leading)
                                
                                Spacer()
                                
                                Image(item.graphImage)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    
                                Spacer()
                                
                                VStack(alignment: .leading, spacing: 6) {
                                    Text(item.price)
                                        .font(.semiBold(14))
                                        .lineLimit(1)
                                    Text(item.growth)
                                        .font(.medium(12))
                                        .foregroundColor(.green)
                                }
                                .frame(width: 80,alignment: .trailing)
                            }
                            
                            Rectangle()
                                .fill(Color.init(hex: "F4F6F9"))
                                .frame(height: 1)
                        }
                    }
                }
                Spacer()
            }
            .padding()
        }
    }
}

private func getHistoricalStocks() -> [Stock] {
    
    var stocks = [Stock]()
    
    for _ in 1...20 {
        let stock = Stock(price: Double.random(in: 100...300))
        stocks.append(stock)
        
    }
    
    return stocks
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
