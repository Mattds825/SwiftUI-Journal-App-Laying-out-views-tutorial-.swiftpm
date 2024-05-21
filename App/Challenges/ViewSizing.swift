import SwiftUI

struct ViewSizing: View {

    var body: some View {
        HStack {
            Rectangle()
                .frame(minWidth: 100, maxHeight: 200)
            /*#-code-walkthrough(3.viewSizing)*/
            VStack{
                Image(systemName: "ladybug")
                    .resizable()
                    .scaledToFit()
                Text("I'm Squished")
                    .font(.title)
            }
            Rectangle()
                .frame(minWidth: 50)
            /*#-code-walkthrough(3.viewSizing)*/
            //#-learning-code-snippet(2.viewSizing)
        }
    }
}

struct ViewSizing_Previews : PreviewProvider {
    static var previews: some View {
            ViewSizing()
    }
}
