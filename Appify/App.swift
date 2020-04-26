//
//  App.swift
//  Appify
//
//  Created by Javier Calderon Jr. on 4/25/20.
//  Copyright © 2020 Javier Calderon Jr. All rights reserved.
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
