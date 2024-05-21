import SwiftUI

struct PatternChallengeView: View {
    var body: some View {
        /*#-code-walkthrough(2.patternChallenge)*/
        VStack {
        /*#-code-walkthrough(2.patternChallenge)*/
            ZStack {
                Rectangle()
                    .foregroundColor(.themeBlue)
                Circle()
                    .foregroundColor(.themePink)
            }
            /*#-code-walkthrough(3.patternChallenge)*/
            ZStack {
                Rectangle()
                    .foregroundColor(.themeBlue)
                /*#-code-walkthrough(5.patternChallenge)*/
                HStack {
                    Circle()
                        .foregroundColor(.themeRed)
                    Circle()
                        .foregroundColor(.themeOrange)
                }
                /*#-code-walkthrough(5.patternChallenge)*/

            }
        }
    }
}

struct PatternChallengeView_Previews: PreviewProvider {
    static var previews: some View {
        PatternChallengePreview()
    }
}
