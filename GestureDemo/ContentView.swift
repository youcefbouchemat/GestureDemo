//
//  ContentView.swift
//  GestureDemo
//
//  Created by apple on 16/1/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
                .gesture(
                    TapGesture()
                        .onEnded{ _ in
                            print("Tapped")
                        })
            Text("Hello, world!")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
