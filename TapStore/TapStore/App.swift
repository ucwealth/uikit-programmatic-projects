//
//  App.swift
//  TapStore
//
//  Created by Decagon on 31/05/2022.
//

import Foundation

struct App: Decodable, Hashable {
    let id: Int
    let tagline: String
    let name: String
    let subheading: String
    let image: String
    let iap: Bool
}
