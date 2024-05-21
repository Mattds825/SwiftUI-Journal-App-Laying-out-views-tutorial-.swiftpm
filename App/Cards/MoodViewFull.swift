import SwiftUI

struct MoodViewFull: View {
    @Binding var value: String
    var isEditing: Bool
    var fontStyle: JournalFont
    let displayEmojis = 3
    private let emojis = ["😢", "😴", "😁", "😡", "😐"]
    
    var body: some View {
        VStack {
            /*#-code-walkthrough(7.moodTitleExplain)*/
            Text(isEditing ? "What's your mood?" : "Mood")
                .foregroundColor(.darkBrown)
                .font(fontStyle.uiFont(15))
                .frame(maxWidth: .infinity, alignment: isEditing ? .leading : .center)
                
            
            Spacer()
            /*#-code-walkthrough(7.moodTitleExplain)*/

            HStack{
                if isEditing {
                    ForEach(emojis, id: \.self) { emoji in
                        Button {
                            value = emoji
                        } label: {
                            VStack {
                                Text(emoji)
                                    .font(.system(size: 35))
                                    .padding(.bottom)
                                
                                Image(systemName: value == emoji ? "circle.fill" : "circle")
                                    .font(.system(size: 16))
                                    .foregroundColor(.darkBrown)
                            }
                        }
                        .frame(maxWidth: .infinity, alignment: .center)
                        
                    }
                } else {
                    ForEach(0..<displayEmojis, id:\.self) { index in
                        Text(value)
                            .font(.system(size: 50))
                    }.frame(maxWidth: .infinity, alignment: .center)
                }
            }
            
            Spacer()
        }
        /*#-code-walkthrough(7.moodCardFrameExplain)*/
        .frame(minHeight: 100, maxHeight: 200)
        .frame(maxHeight: .infinity, alignment: .center)
        .padding()
        /*#-code-walkthrough(7.moodCardFrameExplain)*/
    }
}

struct MoodViewFull_Previews : PreviewProvider {
    static var previews: some View {
        MoodViewFullPreview()
    }
}
