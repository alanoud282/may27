//
//  Models.swift
//  JSON
//
//  Created by ساره المرشد on 28/05/2023.
//

import Foundation
struct Result: Codable{
    let data: [ResultItem]
}
struct ResultItem: Codable{
    let title: String
    let item: [String]
}
  
