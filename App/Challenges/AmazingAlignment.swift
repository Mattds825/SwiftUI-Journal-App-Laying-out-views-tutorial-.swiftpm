import SwiftUI


struct AmazingAlignment: View {
    var body: some View {
        /*#-code-walkthrough(5.alignmentIntro)*/
        VStack (alignment: .leading) {
            /*#-code-walkthrough(5.alignmentIntro)*/
            Image(systemName: "books.vertical.fill")
                .font(.system(size: 40))
            Rectangle()
                .frame(maxWidth: .infinity, maxHeight: 10)
            VStack (alignment: .trailing){
                Image(systemName: "books.vertical.fill")
                    .font(.system(size: 40))
                
                Rectangle()
                    .frame(maxWidth: .infinity, maxHeight: 10)
            }
            Image(systemName: "books.vertical.fill")
                .font(.system(size: 40))
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .trailing)
                .background(Color.yellow)
            Rectangle()
                .frame(maxWidth: .infinity, maxHeight: 10)
            
           
            //#-learning-code-snippet(5.frameAlignment)
            /*#-code-walkthrough(5.SpacerAlignmentExplain)*/
            /*#-code-walkthrough(5.stackSpacing)*/
            HStack(spacing: 20) {
                /*#-code-walkthrough(5.stackSpacing)*/
                Spacer()
                Image(systemName: "books.vertical.fill")
                    .font(.system(size: 40))
                    .background(Color.yellow)
                Image(systemName: "books.vertical.fill")
                    .font(.system(size: 40))
                    .background(.green)
                    
            }
            .background(Color.mint)
            /*#-code-walkthrough(5.SpacerAlignmentExplain)*/
            
            Rectangle()
                .frame(maxWidth: .infinity, maxHeight: 10)
        }
//        .padding(.horizontal)
        .frame(width: 250)
        .padding()
        .border(Color.brown, width: 10)
        //#-learning-code-snippet(5.viewPadding)
        //#-learning-code-snippet(5.viewFrame)

    }
}

struct AmazingAlignment_Previews: PreviewProvider {
    static var previews: some View {
        AmazingAlignment()
    }
}
