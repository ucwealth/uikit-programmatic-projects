//
//  Section.swift
//  TapStore
//
//  Created by Decagon on 31/05/2022.
//

import Foundation

struct Section: Decodable, Hashable {
    let id: Int
    let type: String
    let title: String
    let subtitle: String
    let items: [App]
}
