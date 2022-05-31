//
//  SelfConfiguringCell.swift
//  TapStore
//
//  Created by Decagon on 31/05/2022.
//

import Foundation

protocol SelfConfiguringCell {
    static var reuseIdentifier: String { get }
    func configure(with app: App)
}
