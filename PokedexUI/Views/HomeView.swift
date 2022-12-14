import SwiftUI

struct HomeView: View {
    private let gridItems = [GridItem(.flexible()), GridItem(.flexible())]
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(
                    columns: gridItems,
                    spacing: 16,
                    content: {
                        ForEach(0..<151) { _ in
                            PokemonCell()
                        }
                    }
                )
            }
            .navigationTitle("Pokedex")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
