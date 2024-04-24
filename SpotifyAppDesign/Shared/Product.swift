//
//  Product.swift
//  SpotifyAppDesign
//
//  Created by Ahmed Dana Mohammed on 4/21/24.
//

import Foundation


struct ProductArray: Codable {
    let products: [Product]
    let total, skip, limit: Int
}

struct Product: Codable, Identifiable {
    let id: Int
    let title, description: String
    let price: Int
    let discountPercentage, rating: Double
    let stock: Int
    let brand, category: String
    let thumbnail: String
    let images: [String]
    
    var firstImage: String {
        images.first ?? Constans.randomImage
    }
    static var mock: Product {
        Product(
            id: 123,
            title: "Example product title",
            description: "This is some mock product desciption that goes here.",
            price: 999,
            discountPercentage: 15,
            rating: 4.5,
            stock: 50,
            brand: "Apple",
            category: "Electronic Devices",
            thumbnail: Constans.randomImage,
            images: [Constans.randomImage,Constans.randomImage,Constans.randomImage]
        )
    }
}


struct ProductRow: Identifiable {
    let id = UUID().uuidString
    let title: String
    let products: [Product]
    
}
