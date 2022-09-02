//
//  QuestionView.swift
//  Code History Quiz
//
//  Created by Robert Bates on 9/2/22.
//

import SwiftUI

struct QuestionView: View {
    
    @EnvironmentObject var viewModel: GameViewModel
    let question: Question
    
    var body: some View {
        Text(question.questionText)
            .font(.largeTitle)
            .bold()
            .multilineTextAlignment(.leading)
        Spacer()
        HStack {
            ForEach(0..<question.possibleAnswers.count) { answerIndex in
                Button(action: {
                    print("Tapped on \(question.possibleAnswers[answerIndex])")
                    viewModel.makeGuess(atIndex: answerIndex)
                })  {
                    ChoiceTextView(choiceText: question.possibleAnswers[answerIndex])
                        .background(viewModel.color(forOptionIndex: answerIndex))
                }
                .disabled(viewModel.guessWasMade)
            }
        }
        if viewModel.guessWasMade {
            Button(action: {viewModel.displayNextScreen()}) {
                BottomTextView(str: "Next")
            }
        }
    }
}

struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionView(question: Game().currentQuestion)
    }
}
