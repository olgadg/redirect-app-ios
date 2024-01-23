//
//  ContentView.swift
//  RedirectApp
//
//  Created by Olga on 22/01/2024.
//

import SwiftUI


struct ContentView: View {
    @Environment(\.openURL) private var openURL
    @State private var uri: String = ""
    var body: some View {
        
VStack {
            TextField(
                    "URL",
                    text: $uri
            )
    Button("Go to URL") {
        if let url = URL(string: uri) {
            openURL(url)
        }
    }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
