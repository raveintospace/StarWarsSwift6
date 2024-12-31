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
        NavigationStack {
            List {
                ForEach(viewModel.cards) { card in
                    StarCardView(card: card)
                }
            }
            .navigationTitle("Star Wars")
        }
    }
}

// if we don't specify the vm& repository, loads the default one
#Preview {
    ContentView(viewModel: StarCardViewModel(repository: RepositoryTest()))
}
