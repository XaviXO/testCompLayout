//
//  Sections.swift
//  Appify
//
//  Created by Javier Calderon Jr. on 4/25/20.
//  Copyright © 2020 Javier Calderon Jr. All rights reserved.
//

import Foundation

struct Section: Decodable, Hashable {
    let id: Int
    let type: String
    let title: String
    let subtitle: String
    let items: [App]
}
