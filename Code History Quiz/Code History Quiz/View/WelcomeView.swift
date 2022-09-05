//
//  WelcomeView.swift
//  Code History Quiz
//
//  Created by Robert Bates on 8/18/22.
//

import SwiftUI

struct WelcomeView: View {
    
    var mainColor = GameColor.main
    var accentColor = GameColor.accent

    var body: some View {
        NavigationView {
            ZStack{
                mainColor.ignoresSafeArea()
                VStack {
                    Spacer()
                    VStack(alignment: .leading, spacing: 0){
                        Text("Select the correct answers to the following questions.")
                            .font(.largeTitle)
                            .bold()
                            .multilineTextAlignment(.leading)
                            .padding()
                    }
                    Spacer()
                    NavigationLink(
                        destination: GameView(),
                        label: {
                            BottomTextView(str: "Okay, let's go!")
                        })
                }.foregroundColor(.white)
            }
        }.navigationBarHidden(true)
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
