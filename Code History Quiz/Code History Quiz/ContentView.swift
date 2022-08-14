//
//  ContentView.swift
//  Code History Quiz
//
//  Created by Robert Bates on 7/15/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack {
                Text("Items in Stock")
                    .font(.title)
                    .padding()
                Spacer()
                NavigationLink(
                    destination: ItemDetailView(itemName: "Shrimp Chips"),
                    label: {
                        Text("Shrimp Chips")
                    })
                Spacer()
                NavigationLink(
                    destination: ItemDetailView(itemName: "Bueno"),
                    label: {
                        Text("Bueno")
                    })
                Spacer()
            }
            // Sets a navigation title of "Ligaya's Store"
               .navigationTitle(Text("Bobby's Store"))
               // Sets the styling of the navigation title to inline
               .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ItemDetailView: View {
    @State var quantityRemaining = Int.random(in: 1...10)
    let itemName: String
    
    var body: some View {
        VStack {
            Text("\(itemName)")
                .font(.title)
                .padding()
            Spacer()
            Image(systemName: "photo")
                .font(.system(size: 200))
                .padding()
            Text("Quantity Remaining: \(quantityRemaining)")
            Spacer()
            Button {
                if quantityRemaining > 0 {
                    quantityRemaining -= 1
                }
            } label: {
                Text("Add one to your cart")
            }
            Spacer()
        }
        .background(
              // The navigation link is not active until the quantity is 0
              NavigationLink(destination: Text("You bought all the \(itemName)!"),
                             isActive: .constant(quantityRemaining == 0),
                             label: { EmptyView() })
              )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View{
        ContentView()
    }
}

struct ItemDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ItemDetailView(itemName: "Test Item")
    }
}
