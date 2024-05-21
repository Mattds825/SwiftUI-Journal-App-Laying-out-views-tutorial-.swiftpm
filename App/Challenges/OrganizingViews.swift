import SwiftUI

struct OrganizingViews: View {
    
    let rows = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        /*#-code-walkthrough(1.containers)*/
        VStack {
            Circle()
            Circle()
                .fill(.green)
            Capsule()
                .frame(maxWidth: 250, maxHeight: 100)
                .padding()
            Ellipse()
                .padding(EdgeInsets(top: 0, leading: 100, bottom: 0, trailing: 100))
            
            HStack{
                Rectangle()
                Rectangle()
                Rectangle()
            }.padding()
            
            ZStack{
                Circle()
                    .fill(.blue)
                ZStack{
                    Circle()
                    .inset(by: 40)
                    .fill(.mint)
                    Circle()
                        .inset(by: 40)
                        .offset(x:20, y:0)
                        .fill(.blue)
                }.offset(x: -20, y: 0)
                    
                    
                Circle()
                    .offset(x: 20, y: 0)
                    .inset(by: 40)
                    .fill(.mint)
                Text("🔥")
                    .offset(x: 20, y: 0)
            }
            
            
            //#-learning-code-snippet(2.containers)
            //#-learning-code-snippet(4.containers)
            //#-learning-code-snippet(5.containers)
            LazyVGrid (columns: rows, spacing: 20){
                VStack {
                    Image(systemName: "tortoise")
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(.blue)
                        .frame(height: 100)
                    
                }
                VStack {
                    Image(systemName: "hare")
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(.brown)
                        .frame(height: 100)
                }
            }.padding()
        }
        /*#-code-walkthrough(1.containers)*/
    }
}



struct OrganizingViews_Previews : PreviewProvider {
    static var previews: some View {
            OrganizingViews()
    }
}
