//
//  CvPage.swift
//  
//
//  Created by Lilian Grasset on 07/03/2024.
//

import Foundation
import Plot

class CvPage: Content {
    
    
    var body: Component {
        Div {
            H1("Lilian Grasset")
                .id("cv-title")
            
            Div {
                H2("Expériences")
                    .class("cv-section-title")
                
                List(Experience.all) { experience in
                    ListItem {
                        H4(experience.title).class("element-title")
                        H5("\(experience.company) \(experience.place)").class("element-place")
                        H5(experience.dates).class("element-dates")
                        Paragraph(experience.description).class("element-description")
                    }.class("cv-list-element")
                }.class("cv-list")
            }.id("cv-experience")
            
            Div {
                H2("Formations")
                    .class("cv-section-title")
                
                List(Education.all) { education in
                    ListItem {
                        H4(education.title).class("element-title")
                        H5(education.place).class("element-place")
                        H5(education.dates).class("element-dates")
                        Paragraph(education.description).class("element-description")
                    }.class("cv-list-element")
                }.class("cv-list")
            }.id("cv-education")
        }.id("cv-wrapper")
    }
}
