//
//  HomePage.swift
//
//
//  Created by Lilian Grasset on 07/03/2024.
//

import Foundation
import Plot

class HomePage: Content {
    var body: Component {
        Div {
            H3("Lilian Grasset")
                .id("home-title")
            H4("Développeur d'application iOS - Full remote")
                .id("home-subtitle")
            Image("/images/lilian.svg")
                .id("home-image")
            Paragraph {
                Text("Bonjour, je m'appelle ")
                Span{ Text("Lilian Grasset") }.id("home-desc-ht1")
                Text(" et je suis ")
                Span{ Text("développeur iOS") }.id("home-desc-ht2")
                Text(", bienvenue sur mon portfolio !")
            }.id("home-description")
        }.id("home-wrapper")
    }
}
