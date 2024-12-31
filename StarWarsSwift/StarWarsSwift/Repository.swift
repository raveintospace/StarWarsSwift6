//
//  Repository.swift
//  StarWarsSwift
//  Load info from json and persists it
//  Created by Uri on 31/12/24.
//

import Foundation

protocol DataRepository {
    var url: URL { get }
}

extension DataRepository {
    func getData() throws -> [StarCard] {
        let data = try Data(contentsOf: url)
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase // starwars.json is in snakecase (planeta_origen)
        return try decoder.decode([StarCardDTO].self, from: data).map(\.toCard)
    }
}

struct Repository: DataRepository {
    var url:  URL {
        Bundle.main.url(forResource: "StarWars", withExtension: "json")!
    }
}

struct RepositoryTest: DataRepository {
    var url:  URL {
        Bundle.main.url(forResource: "StarWars Test", withExtension: "json")!
    }
}
