//
//  Project.swift
//
//
//  Created by Lilian Grasset on 14/03/2024.
//

struct Project: Decodable {

    let id: Int
    let title: String
    let image: String
    let link: String
    let description: String
    let stack: [String]
}
