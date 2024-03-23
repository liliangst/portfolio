//
//  Experience.swift
//
//
//  Created by Lilian Grasset on 11/03/2024.
//

import Foundation

struct Experience {
    static let all: [Experience] = [
        Experience(title: "Développeur d'application mobile Android", company: "AchetezA,", place: "Le Puy-en-Velay (43)", dates: "Avril 2022 - Juin 2022", description: "Création et maintenance d'applications\n Correction de bugs"),
        Experience(title: "Développeur d'application mobile iOS", company: "IUT de l'Université Clermont-Auvergne antenne Le Puy-en-Velay (43)", place: "", dates: "Octobre 2021 - Mars 2022", description: "Design et conception d'une application mobile sur le recyclage visant à nous aide à savoir où et comment recycler nos déchets du quotidien")
    ]
    
    let title: String
    let company: String
    let place: String
    let dates: String
    let description: String
}
