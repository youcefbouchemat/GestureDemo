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
    
    let magnificationGesture = MagnificationGesture(minimumScaleDelta: 0)
        .onChanged(){ _ in
            print("Magnifying")
        }
        .onEnded(){ _ in
            print("Gesture Ended")
        }
    @GestureState private var offset: CGSize = .zero
    var body: some View {
        let drag = DragGesture()
            .updating($offset) { dragValue, state, transaction in
                state = dragValue.translation
            }
        return Image(systemName: "hand.point.right.fill")
            .font(.largeTitle)
            .offset(offset)
            .gesture(drag)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
