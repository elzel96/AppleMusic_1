import SwiftUI

struct TabBarView: View {
    var body: some View {
        TabView {
            
            LibraryView()
                .tabItem {
                    Image(systemName: "music.note")
                    Text("Медиатека")
                }
            
            Text("Радио")
                .tabItem {
                    Image(systemName: "dot.radiowaves.left.and.right")
                    Text("Радио")
                }
            
            Text("Поиск")
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Поиск")
                }
        }
        .accentColor(.pink)
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
