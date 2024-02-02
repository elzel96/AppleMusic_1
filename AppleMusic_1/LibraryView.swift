import SwiftUI

struct LibraryView: View {
    var body: some View {
        NavigationView {
            
            VStack(alignment: .center) {
                Text("Ищете свою музыку?")
                    .bold()
                    .font(.system(size: 25))
                    .padding(0.1)
                Text("Здесь появится купленная Вами в\n iTunes Store музыка.")
                    .font(.system(size: 18))
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)
            }
        }
        .navigationTitle("Медиатека")
    }
}

struct LibraryView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryView()
    }
}
