//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by john davis on 11/14/24.
//

import SwiftUI

struct GridStack<Content: View>: View {
    
    let rows: Int
    let columns: Int
    // a closure that takes two ints and returns a content view we can show
    @ViewBuilder let content: (Int, Int) -> Content
    
    var body: some View {
        VStack {
            ForEach(0..<rows, id: \.self) { row in
                HStack {
                    ForEach(0..<columns, id: \.self) { column in
                        content(row, column)
                    }  // for each
                }// hstack
            } // foreach
        } // vstack
    } // view
}  // gridstack generic view

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

// A custom modifier
struct Tiny: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.footnote)
            .foregroundStyle(.primary)
            .padding()
            .background(.blue)
            .clipShape(.rect(cornerRadius: 10))
    }
}
// can make the modifier easier to use with this snippet
extension View {
    func tiny() -> some View {
        modifier(Tiny())
    }
}


// a second custom modider
// these have the benefit of
// 1. easier to use
// 2. can have properties such as text in this case
//
// lesson for this topic
// https://www.hackingwithswift.com/books/ios-swiftui/custom-modifiers
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

        GridStack(rows: 3, columns: 4) { row, col in
            // Note: using @ViewBuilder above gives a HStack
                Image(systemName: "\(row * 4 + col).circle")
                Text("R\(row),C\(col)")
                    .tiny()
        }


    }  // view
    
    
}

#Preview {
    ContentView()
}
