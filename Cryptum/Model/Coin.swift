//
//  Coin.swift
//  Cryptum
//
//  Created by Bikash Tamang on 7/7/2022.
//

import Foundation

struct Coin: Identifiable {
    let id = UUID()
    let name: String
    let symbol: String
    let image: String
    let graphImage: String
    let growth: String
    let price: String
}

let CoinData: [Coin] = [
    Coin(name: "Bitcoin", symbol: "BTC", image: "Bitcoin", graphImage: "LineGraph", growth: "+1.6%", price: "$29,850.15"),
    Coin(name: "Ethereum", symbol: "ETH", image: "Ethereum", graphImage: "LineGraph-1", growth: "+1.6%", price: "$29,850.15"),
    Coin(name: "Litecoin", symbol: "LTC", image: "Litecoin", graphImage: "LineGraph-2", growth: "+1.6%", price: "$29,850.15"),
    Coin(name: "XRP", symbol: "XRP", image: "XRP", graphImage: "LineGraph-3", growth: "+1.6%", price: "$29,850.15"),
    Coin(name: "Bitcoin", symbol: "BTC", image: "Bitcoin", graphImage: "LineGraph", growth: "+1.6%", price: "$29,850.15"),
    Coin(name: "Ethereum", symbol: "ETH", image: "Ethereum", graphImage: "LineGraph-1", growth: "+1.6%", price: "$29,850.15"),
    Coin(name: "Litecoin", symbol: "LTC", image: "Litecoin", graphImage: "LineGraph-2", growth: "+1.6%", price: "$29,850.15"),
    Coin(name: "XRP", symbol: "XRP", image: "XRP", graphImage: "LineGraph-3", growth: "+1.6%", price: "$29,850.15"),
]
