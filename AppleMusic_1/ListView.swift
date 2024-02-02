import SwiftUI

struct ListView: View {
    let names = ["Misha", "Pasha", "Sasha"]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(names, id: \.self) { name in
                    HStack {
                        Text(name)
                    }
                }
            }
        }
        .navigationTitle("Медиатека")
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink("Готово") {
                    LibraryView()
                        .navigationBarBackButtonHidden(true)
                }.accentColor(Color.pink)
            }
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
