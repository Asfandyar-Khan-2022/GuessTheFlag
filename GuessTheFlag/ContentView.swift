//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Mac User on 20/09/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Button {
            print("Button was tapped!")
        } label: {
            Label("edit", systemImage: "pencil")
        }
    }
    
    func executeDelete() {
        print("Now deleting")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
