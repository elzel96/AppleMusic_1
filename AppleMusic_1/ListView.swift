import SwiftUI

struct ListView: View {
    let names = ["Misha", "Pasha", "Sasha"]
    
    var body: some View {
        List {
            NavigationView {
                ForEach(names, id: \.self) { name in
                    Text(name)
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
