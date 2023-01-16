//
//  ContentView.swift
//  GestureDemo
//
//  Created by apple on 16/1/2023.
//

import SwiftUI

struct ContentView: View {
    let tap = TapGesture()
        .onEnded(){ _ in
            print("Tapped now")
        }
    
    let longPress = LongPressGesture()
        .onEnded(){ _ in
            print("Long press now")
        }
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
                .gesture(tap)
                .gesture(longPress)
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
