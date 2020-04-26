//
//  SelfConfiguringCell.swift
//  Appify
//
//  Created by Javier Calderon Jr. on 4/25/20.
//  Copyright © 2020 Javier Calderon Jr. All rights reserved.
//

import Foundation

protocol SelfConfiguringCell {
    static var reusableIdentifier: String { get }
    func configure(with app: App);
}
