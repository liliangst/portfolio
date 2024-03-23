//
//  Education.swift
//
//
//  Created by Lilian Grasset on 11/03/2024.
//

import Foundation

struct Education {
    static let all: [Education] = [
        Education(title: "Développeur d'application iOS", place: "Openclassrooms", dates: "Septembre 2022 - Décembre 2023", description: ""),
        Education(title: "DUT Informatique orientation Graphique", place: "IUT de l'Université Clermont-Auvergne antenne Le Puy-en-Velay (43)", dates: "Septembre 2020 - Juin 2022", description: "")
    ]
    
    let title: String
    let place: String
    let dates: String
    let description: String
}
