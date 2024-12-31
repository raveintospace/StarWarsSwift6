//
//  StarCardViewModel.swift
//  StarWarsSwift
//
//  Created by Uri on 31/12/24.
//

import SwiftUI

@Observable
final class StarCardViewModel {
    let repository: DataRepository
    
    var cards: [StarCard]
    
    init(repository: DataRepository = Repository()) {
        self.repository = repository
        do {
            cards = try repository.getData()
        } catch {
            cards = []
        }
    }
}
