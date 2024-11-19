//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by john davis on 11/14/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var useRedText = false
    
    var motto1: some View {
        Text("Draco dormiens")
    }
    let motto2 = Text("nunquam titillandus")
    
    var spells: some View {
        Group {
            Text( "Fireball")
            Text("Lightning Bolt")
            Text("Healing Potion")
        }
    }
    
    var body: some View {
        
        VStack {
            motto1
            motto2
        }
        spells
        .padding()
    }
}

#Preview {
    ContentView()
}
