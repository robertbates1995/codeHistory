//
//  ContentView.swift
//  Code History Quiz
//
//  Created by Robert Bates on 7/15/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
        Text("Hello, test! I'm manipulating this text in multiple ways!")
            .bold()
            .padding()
            .border(Color.black, width: 1.0)
            .font(.title)
            .multilineTextAlignment(TextAlignment.center)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
