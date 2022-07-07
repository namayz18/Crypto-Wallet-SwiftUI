//
//  MarketView.swift
//  Cryptum
//
//  Created by Bikash Tamang on 5/7/2022.
//

import SwiftUI


struct MarketView: View {
    let prices = getHistoricalStocks().map { Int($0.price) }
    let labels = getYearlyLabels()
    
    var body: some View {
        VStack {
            Text("Stocks")
                .font(.largeTitle)
            LineChartView(values: prices)
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(#colorLiteral(red: 0.1777154505, green: 0.799169898, blue: 0.4448577166, alpha: 1)))
        .foregroundColor(.white)
    }
}

struct MarketView_Previews: PreviewProvider {
    static var previews: some View {
        MarketView()
    }
}


struct Stock {
    let price: Double
}

private func getHistoricalStocks() -> [Stock] {
    
    var stocks = [Stock]()
    
    for _ in 1...20 {
        let stock = Stock(price: Double.random(in: 100...300))
        stocks.append(stock)
        
    }
    
    return stocks
}

private func getYearlyLabels() -> [String] {
    return (2015...2021).map { String($0) }
}

struct LineChartView: View {
    
    let values: [Int]

    
    let screenWidth = UIScreen.main.bounds.width
    
    private var path: Path {
        
        if values.isEmpty {
            return Path()
        }
        
        var offsetX: Int = Int(screenWidth/CGFloat(values.count))
        var path = Path()
        path.move(to: CGPoint(x: offsetX, y: values[0]))
        
        for value in values {
            offsetX += Int(screenWidth/CGFloat(values.count))
            path.addLine(to: CGPoint(x: offsetX, y: value))
        }
        
        return path
        
    }
    
    var body: some View {
        VStack {
            path.stroke(Color.white, lineWidth: 2.0)
                .rotationEffect(.degrees(180), anchor: .center)
                .rotation3DEffect(.degrees(180), axis: (x: 0, y: 1, z: 0))
                .frame(maxWidth: .infinity, maxHeight: 100)
            
            
//            HStack {
//                ForEach(labels, id: \.self) { label in
//                    Text(label)
//                        .frame(width: screenWidth/CGFloat(labels.count) - 10)
//                }
//            }
            
        }
    }
    
}

