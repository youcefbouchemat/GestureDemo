//
//  ContentView.swift
//  GestureDemo
//
//  Created by apple on 16/1/2023.
//

import SwiftUI

struct ContentView: View {
    @GestureState private var offset: CGSize = .zero
    @State private var dragEnabled: Bool = false
    
    var body: some View {
        let longPressBeforeDrag = LongPressGesture(minimumDuration: 2.0)
            .onEnded( { _ in
                self.dragEnabled = true
            })
            .sequenced(before: DragGesture())
            .updating($offset) { value, state, transaction in
                switch value {
                    case .first(true):
                        print("Long press in progress")
                    case .second(true, let drag):
                        state = drag?.translation ?? .zero
                    case .first(false):
                        print("---")
                    case .second(false, _):
                        print("---")
                }
            }
            .onEnded { value in
                self.dragEnabled = false
            }
        return Image(systemName: "hand.point.right.fill")
            .foregroundColor(dragEnabled ? Color.green : Color.blue)
            .font(.largeTitle)
            .offset(offset)
            .gesture(longPressBeforeDrag)}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
