//
//  StarWarsSwiftTests.swift
//  StarWarsSwiftTests
//
//  Created by Uri on 31/12/24.
//

import Testing
@testable import StarWarsSwift

extension Tag {
    @Tag static var repository: Self
}

@Suite("Prueba del Repository de Star Cards", .tags(.repository))
struct StarWarsSwiftTests {
    
    let repository = RepositoryTest()
    
    @Test("Prueba de carga de datos del repositorio")
    func dataLoad() throws {
        let data = try repository.getData()
        #expect(data.count == 4)
    }
}
