//
//  ProjectsPage.swift
//  
//
//  Created by Lilian Grasset on 07/03/2024.
//

import Foundation
import Plot

class ProjectsPage: Content {
    private var projects: [Project]

    var body: Component {
        Div {
            H1("Mes projects")
                .id("projects-page-title")
            List(self.projects) { project in
                ListItem {
                    ProjectCard(project: project)
                }.id("projects-item")
            }.id("projects-list")
        }.id("projects-wrapper")
    }

    init(projects: [Project] = []) {
        self.projects = projects
    }
}

class ProjectCard: Content {
    private var project: Project

    var body: Component {
        Div {
            Div {
                if FileManager.default.fileExists(atPath: "Public/images/projects/" + self.project.image) {
                    Image("/images/projects/" + self.project.image)
                        .class("project-mockup")
                } else {
                    Image("images/projects/placeholder.png")
                        .class("project-mockup")
                }
                Link(url: self.project.link) {
                    Button {
                        Image("https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/github/github-original.svg")
                            .class("project-button-image")
                    }
                    .class("project-button")
                }
                .linkTarget(.blank)
            }.class("project-left-wrapper")

            Div {
                H2(self.project.title)
                    .class("project-title")
                Paragraph(self.project.description)
                    .class("project-description")
                H4("Stack")  
                    .class("project-stack-title") 
                List(self.project.stack) { element in
                    ListItem {
                        Text(element)
                    }.class("project-stack-item")
                }.class("project-stack-list")
            }.class("project-right-wrapper")
        }.class("project-wrapper")
    }

    init(project: Project) {
        self.project = project
    }
}