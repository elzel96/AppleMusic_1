import SwiftUI

struct ModelCell: View {
    var model: Model
    
    var body: some View {
        HStack {
            //                        Image(systemName: model.isPicked ? "checkmark.circle.fill" : "circle")
            //                            .font(.system(size: 20))
            //                                            .foregroundColor(.pink)
            //                                            .onTapGesture {
            //                                                model.isPicked.toggle()
            //                                            }
            model.image
                .frame(width: 50, height: 50)
                .foregroundColor(Color.pink)
            Text(model.text)
        }
    }
}

struct ModelCell_Previews: PreviewProvider {
    static var previews: some View {
        ModelCell(model: Model.models[0])
    }
}

