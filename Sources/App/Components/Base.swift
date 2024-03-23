//
//  File.swift
//  
//
//  Created by Lilian Grasset on 07/03/2024.
//

import Plot

protocol Content: Component {}

class Base {
    func with(_ content: @escaping () -> Content) -> HTML {
        return HTML(
            .head(
                .meta(.charset(.utf8)),
                .title("Portfolio"),
                .stylesheet("/styles/background.css"),
                .stylesheet("/styles/navigation.css"),
                .stylesheet("/styles/home.css"),
                .stylesheet("/styles/projects.css"),
                .stylesheet("/styles/cv.css"),
                .stylesheet("/styles/contact.css")
            ),
            .body({
                Div {
                    NavigationBar()
                    content()
                }.class("wrapper")
            })
        )
    }
}
