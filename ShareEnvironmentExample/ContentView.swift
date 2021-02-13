//
//  ContentView.swift
//  ShareEnvironmentExample
//
//  Created by Artem Novichkov on 13.02.2021.
//

import SwiftUI

struct ContentView: View {
    
    @Environment(\.share) var share
    
    var body: some View {
        Button("Share") {
            share([URL(string: "https://blog.artemnovichkov.com")!])
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
