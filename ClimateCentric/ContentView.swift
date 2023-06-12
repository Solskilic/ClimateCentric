//
//  ContentView.swift
//  ClimateCentric
//
//  Created by seyma kilic on 6/12/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.2, green: 0.4, blue: 0.2)
                .ignoresSafeArea()
       
                
            Menu("Menu") {
                
                Text("Motivation Corner")
                Text("Interaction Center")
                Text("Involvement Links")
                Text("Carbon Footprint")
                    
            }
            .offset(x:150, y:-350)
            }
            
            
            }
        }
       // .padding()
    


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
