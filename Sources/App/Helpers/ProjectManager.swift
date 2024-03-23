//
//  ProjectManager.swift
//
//
//  Created by Lilian Grasset on 14/03/2024.
//

import Foundation
import CSV

class ProjectManager {
    static let shared = ProjectManager()

    private init() {}

    func fetch() -> [Project] {
        let data = try! Data(contentsOf: URL(fileURLWithPath: "Public/data/projects.json"))
        let projects = try! JSONDecoder().decode([Project].self, from: data)
        return projects
    } 
}
