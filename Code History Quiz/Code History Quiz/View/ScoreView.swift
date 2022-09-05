//
//  ScoreView.swift
//  Code History Quiz
//
//  Created by Robert Bates on 9/4/22.
//

import SwiftUI

struct ScoreView: View {
    var body: some View {
        ZStack {
            GameColor.main.ignoresSafeArea()
            VStack{
                Spacer()
                Text("Final Score:").font(.body)
                Text("???%")
                    .font(.system(size: 50))
                    .bold()
                    .padding()
                Spacer()
                VStack{
                    Text("??? ✅")
                    Text("??? ❌")
                }.font(.system(size: 30))
                Spacer()
            }
            .foregroundColor(.white)
            .navigationBarHidden(true)
        }
        NavigationLink(
            destination: WelcomeView(),
            label: {BottomTextView(str: "Re-take Quiz")}
        )
    }
}

struct ScoreView_Previews: PreviewProvider {
    static var previews: some View {
        ScoreView()
    }
}
