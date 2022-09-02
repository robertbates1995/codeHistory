//
//  ContentView.swift
//  Code History Quiz
//
//  Created by Robert Bates on 7/15/22.
//

import SwiftUI

struct GameView: View {
    
    let question = Question( questionText: "Who invented the World Wide Web?", possibleAnswers: ["Steve Jobs", "Linus Torvalds", "Bill Gates", "Tim Berners-Lee"], correctAnswerIndex: 3)
    
    @StateObject var viewModel = GameViewModel()
    
    var body: some View {
        ZStack {
            GameColor.main.ignoresSafeArea()
            VStack {
                Text(viewModel.questionProgressText)
                    .font(.callout)
                    .bold()
                    .multilineTextAlignment(.leading)
                    .padding()
                QuestionView(question: viewModel.currentQuestion)
            }
            .foregroundColor(.white)
            .navigationBarHidden(true)
            .environmentObject(viewModel)
        }
    }
}
