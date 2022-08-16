//
//  ContentView.swift
//  Code History Quiz
//
//  Created by Robert Bates on 7/15/22.
//

import SwiftUI

struct ContentView: View {
 
    let question = Question(
        questionText: "What was the first computer bug?",
        possibleAnswers: ["Ant", "Beetle", "Moth", "Fly"],
        correctAnswerIndex: 2)
    
    //TODO: create generic form of button so I don't need to hardcode it every time.
    /*
    var questionButton: some Button {
            action: {
            print("Tapped on Choice 1")
    }, label: {
        Text("Ant")
            .font(.body)
            .bold()
            .multilineTextAlignment(.center)
            .padding()
            .border(accentColor, width: 4)
    }}
     */
    
    let mainColor = Color(red: 20/255, green: 28/255, blue: 58/255)
    let accentColor = Color(red: 48/255, green: 105/255, blue: 240/255)
 
    var body: some View {
            ZStack {
                mainColor.ignoresSafeArea()
                VStack {
                    Text("1 / 10")
                        .font(.callout)
                        .bold()
                        .multilineTextAlignment(.leading)
                        .padding()
                    Text(question.questionText)
                        .font(.largeTitle)
                        .bold()
                        .multilineTextAlignment(.leading)
                    Spacer()
                    HStack {
                        Button(action: {
                            print("Tapped on \(question.possibleAnswers[0])")
                        }, label: {
                            Text("\(question.possibleAnswers[0])")
                                .font(.body)
                                .bold()
                                .multilineTextAlignment(.center)
                                .padding()
                                .border(accentColor, width: 4)
                        })
                        Button(action: {
                            print("Tapped on \(question.possibleAnswers[1])")
                        }, label: {
                            Text("\(question.possibleAnswers[1])")
                                .font(.body)
                                .bold()
                                .multilineTextAlignment(.center)
                                .padding()
                                .border(accentColor, width: 4)
                        })
                        Button(action: {
                            print("Tapped on \(question.possibleAnswers[2])")
                        }, label: {
                            Text("\(question.possibleAnswers[2])")
                                .font(.body)
                                .bold()
                                .multilineTextAlignment(.center)
                                .padding()
                                .border(accentColor, width: 4)
                        })
                        Button(action: {
                            print("Tapped on \(question.possibleAnswers[3])")
                        }, label: {
                            Text("\(question.possibleAnswers[3])")
                                .font(.body)
                                .bold()
                                .multilineTextAlignment(.center)
                                .padding()
                                .border(accentColor, width: 4)
                        })
                }
            }
            .foregroundColor(.white)
        }
}

}
