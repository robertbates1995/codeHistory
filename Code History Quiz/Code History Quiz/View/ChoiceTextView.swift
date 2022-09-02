//
//  ChoiceTextView.swift
//  Code History Quiz
//
//  Created by Robert Bates on 8/16/22.
//

import SwiftUI

struct ChoiceTextView: View {
    let choiceText: String
    let accentColor = GameColor.accent
    
    var body: some View {
        Text(choiceText)
            .font(.body)
            .bold()
            .multilineTextAlignment(.center)
            .padding()
            .border(accentColor, width: 4)
    }
}

//does the following have something to do with testing?
struct ChoiceTextView_Previews: PreviewProvider {
    static var previews: some View {
        ChoiceTextView(choiceText: "Choice Text!")
    }
}
