//
//  renting.swift
//  mini project 1
//
//  Created by bibi on 05/01/2021.
//

import Foundation
struct Renting: Identifiable {
    
    let price: Int
    let bic: String

    
    let id = UUID()
}


let info = [
    Renting(price: 1, bic: "bic1"),
    Renting(price: 2, bic: "bic2"),
    Renting(price: 3, bic: "bic3"),
    Renting(price: 4, bic: "bic4"),
    Renting(price: 5, bic: "bic5"),
    Renting(price: 6, bic: "bic6"),
    Renting(price: 7, bic: "bic7"),
    ]
