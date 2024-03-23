//
//  ContactPage.swift
//  
//
//  Created by Lilian Grasset on 07/03/2024.
//

import Foundation
import Plot

class ContactPage: Content {
    var body: Component {
        Div {
            H2("Contactez-moi !")
                .id("contact-title")
            
            Div {
                Image("/images/logo/envelope.png")
                    .class("contact-image")
                H3("lilian.grasset@icloud.com")
                    .class("contact-content")
            }.class("contact-element")
            
            Div {
                Image("/images/logo/phone.png")
                    .class("contact-image")
                H3("06 76 15 92 18")
                    .class("contact-content")
            }.class("contact-element")
            
            Div {
                Image("/images/logo/linkedin.png")
                    .class("contact-image")
                    Link(url: "https://www.linkedin.com/in/lilian-grasset/") {
                        H3("Lilian Grasset").class("contact-content")
                    }.class("contact-link")
                    .linkTarget(.blank)
            }.class("contact-element")
        }.id("contact-wrapper")
    }
}
