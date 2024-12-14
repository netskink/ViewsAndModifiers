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


// a second custom modider
// these have the benefit of
// 1. easier to use
// 2. can have properties such as text in this case
struct Watermark: ViewModifier {
    var text: String
    
    func body(content: Content) -> some View {
        ZStack(alignment: .bottomTrailing) {
            content
            
            Text(text)
                .font(.caption)
                .foregroundStyle(.white)
                .padding(5)
                .background(Color.blue.opacity(0.5))
        } // stack
    } // view
}

// The corresponding extension
extension View {
    public func watermark(with text: String) -> some View {
        modifier(Watermark(text: text))
    }
}


struct ContentView: View {
    
    
    var body: some View {
        
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            // This uses the custom modifier
            Text("hello")
                .modifier(Title())
            // This uses the extension to make it simpler
            Text("john")
                .title()
        } // vstack
        
        Color.blue
            .frame(width: 100, height: 300)
            // this uses the second extension
            .watermark(with: "yo")
    }
}

#Preview {
    ContentView()
}
