//
//  ContentView.swift
//  NSPasteboard
//
//  Created by Gavin Wiggins on 3/16/21.
//

import SwiftUI

struct ContentView: View {

    @State private var name = ""

    var body: some View {
        VStack(spacing: 20) {
            Text("Type some text in the text field, then copy it to the clipboard by clicking the Copy Text button.")

            TextField("enter some text", text: $name)
                .multilineTextAlignment(.center)

            Button("Copy Text") {
                let pb = NSPasteboard.general
                pb.clearContents()
                pb.setString(self.name, forType: .string)
            }
        }
        .padding(80)
        .frame(width: 400, height: 300)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
