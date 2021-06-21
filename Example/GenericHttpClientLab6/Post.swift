//
//  Post.swift
//  GenericHttpClientLab6_Example
//
//  Created by Mauricio Fernandez Mora on 20/6/21.
//  Copyright © 2021 CocoaPods. All rights reserved.
//

import Foundation

struct Post: Codable {
    var id: Int
    var userId: Int
    var title: String
    var body: String
}
