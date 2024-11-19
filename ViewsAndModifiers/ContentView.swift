//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by john davis on 11/14/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var useRedText = false
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            
            Button("Toggle Red Text") {
                useRedText.toggle()
            }
            .foregroundStyle(useRedText ? .red: .blue)
        }
        .font(.largeTitle)
        .padding()
    }
}

#Preview {
    ContentView()
}
