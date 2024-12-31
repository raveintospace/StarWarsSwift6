//
//  Model.swift
//  StarWarsSwift
//  DTO: Data Transfer Object
//  Created by Uri on 30/12/24.
//

import Foundation

// From Json to instance with codable, what we load
struct StarCardDTO: Codable {
    let id: Int
    let nombre: String
    let raza: String
    let descripcion: String
    let planetaOrigen: String
    let epoca: String
    let afiliacion: String
    let habilidades: String
    let armas: String
    let imagen: String
}

extension StarCardDTO {
    var toCard: StarCard {
        StarCard(
            id: id,
            nombre: nombre,
            raza: raza,
            descripcion: descripcion,
            planetaOrigen: planetaOrigen,
            epoca: epoca,
            afiliacion: afiliacion.components(separatedBy: ", ").map(\.capitalized),
            habilidades: habilidades.components(separatedBy: ", ").map(\.capitalized),
            armas: armas.components(separatedBy: ", ").map(\.capitalized),
            imagen: imagen
        )
    }
}

// What we want to return (used in presentation)
// Identifiable: To enumerate elements
// Hashable: Unique comparison value, two different elements (data - StarCard1 Vs StarCard2) with exact values inside their struct
struct StarCard: Identifiable, Hashable {
    let id: Int
    let nombre: String
    let raza: String
    let descripcion: String
    let planetaOrigen: String
    let epoca: String
    let afiliacion: [String]
    let habilidades: [String]
    let armas: [String]
    let imagen: String
}

extension StarCard {
    static let test = StarCard(
        id: 6629,
        nombre: "Luke Skywalker",
        raza: "Humano",
        descripcion: "Héroe de la Alianza Rebelde y Caballero Jedi. Hijo de Anakin Skywalker y Padmé Amidala.",
        planetaOrigen: "Tatooine",
        epoca: "Era del Imperio Galáctico",
        afiliacion: ["Alianza Rebelde", "Nueva República"],
        habilidades: ["Uso de la Fuerza", "Combate con sable de luz", "Pilotaje"],
        armas: ["Sable de luz"],
        imagen: "lukeskywalker")
}
