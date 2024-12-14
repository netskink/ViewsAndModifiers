//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by john davis on 11/14/24.
//

import SwiftUI



struct CapsuleText: View {
    var text: String

    var body: some View {
        Text(text)
            .font(.largeTitle)
            .padding()
            .foregroundStyle(.white)
            .background(.blue)
            .clipShape(.capsule)
    }
}

struct ContentView: View {
    
    
    var body: some View {
        
        let abutton = Button("display type 2") {}
            .frame(width: 200, height: 200)
            .background(.red)

        print("Type of button2: \(type(of: abutton))")
        
        return  VStack {
            CapsuleText(text: "Hello, World!")
            CapsuleText(text: "Hello, me!")
            Button("display type") {
                print(type(of: self.body))
            }
            .background(.red)
            .frame(width: 200, height: 200)
            abutton
         } // vstack
        .padding()
    }
}

#Preview {
    ContentView()
}
