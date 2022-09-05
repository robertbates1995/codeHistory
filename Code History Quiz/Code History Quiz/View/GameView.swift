//
//  ContentView.swift
//  Code History Quiz
//
//  Created by Robert Bates on 7/15/22.
//

import SwiftUI

struct GameView: View {
    
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
        .background(NavigationLink(destination: Text("Game Over!"), isActive: .constant(viewModel.gameIsOver), label: { EmptyView() }))
    }
}
