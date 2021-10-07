//
//  ContentView.swift
//  TabView-Demo
//
//  Created by Yüksel Toprak on 07.10.21.
//

import SwiftUI

struct ContentView: View {
    
    @State var tabIndex = 0
    
    var body: some View {
        
        TabView(selection: $tabIndex) {
            Text("This is tap one")
                .tabItem {
                    VStack {
                        Image(systemName: "pencil")
                        Text("Tab1")
                    }
                }
                .tag(0)
            
            VStack {
                Text("This is tab 2!")
                Text("This is some more text!")
            }
            .tabItem {
                VStack {
                    Image(systemName: "star")
                    Text("Tab 2")
                }
            }
            .tag(1)
        }
        
        
    }
            
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
