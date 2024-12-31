//
//  ContentView.swift
//  StarWarsSwift
//
//  Created by Uri on 30/12/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var viewModel = StarCardViewModel()
    
    var body: some View {
        List {
            ForEach(viewModel.cards) { card in
                StarCardView(card: card)
            }
        }
    }
}

// if we don't specify the vm& repository, loads the default one
#Preview {
    ContentView(viewModel: StarCardViewModel(repository: RepositoryTest()))
}
