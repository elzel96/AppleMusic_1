import SwiftUI

struct ListView: View {
    @State private var models = Model.models
    
    var body: some View {
        NavigationView {
            List {
                ForEach(models.indices, id: \.self) { index in
                    HStack {
                        Image(systemName: models[index].isPicked ? "checkmark.circle.fill" : "circle")
                            .font(.system(size: 20))
                                            .foregroundColor(.pink)
                                            .onTapGesture {
                                                models[index].isPicked.toggle()
                                            }
                        models[index].image
                            .frame(width: 50, height: 50)
                            .foregroundColor(Color.pink)
                        Text(models[index].text)
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
