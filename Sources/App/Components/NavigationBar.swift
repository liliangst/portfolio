//
//  NavigationBar.swift
//
//
//  Created by Lilian Grasset on 07/03/2024.
//

import Foundation
import Plot

enum NavigationPageID {
    case home, projects, cv, contact
}

extension EnvironmentKey where Value == NavigationPageID? {
    static var selectedPageID: Self { Self(defaultValue: .home) }
}

class NavigationBar: Component {
    
    @EnvironmentValue(.selectedPageID) private var selectedPageID
    
    var body: Component {
        Navigation {
            Div {
                Div {
                    Link(url: "/") {
                        Text("Accueil")
                    }.class("element")
                }
                .class("element-wrapper")
                .class(self.classForElement(withID: .home))
                
                Div {
                    Link(url: "/projects") {
                        Text("Projets")
                    }.class("element")
                }
                .class("element-wrapper")
                .class(self.classForElement(withID: .projects))
                
                Div {
                    Link(url: "/cv") {
                        Text("CV")
                    }.class("element")
                }
                .class("element-wrapper")
                .class(self.classForElement(withID: .cv))
                
                Div {
                    Link(url: "/contact") {
                        Text("Contact")
                    }.class("element")
                }
                .class("element-wrapper")
                .class(self.classForElement(withID: .contact))
            }.class("menu")
        }
    }
    
    private func classForElement(
            withID id: NavigationPageID
        ) -> String {
            return id == selectedPageID ? "selected" : "not-selected"
        }
}
