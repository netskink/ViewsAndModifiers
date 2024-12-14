//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by john davis on 11/14/24.
//

import SwiftUI

// A custom modifier
struct Title: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundStyle(.primary)
            .padding()
            .background(.blue)
            .clipShape(.rect(cornerRadius: 10))
    }
}

// can make the modifier easier to use with this snippet
extension View {
    func title() -> some View {
        modifier(Title())
    }
}

struct ContentView: View {
    
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("hello")
                .modifier(Title())
            Text("john")
                .title()
        } // vstack
        .padding()
    }
}

#Preview {
    ContentView()
}
