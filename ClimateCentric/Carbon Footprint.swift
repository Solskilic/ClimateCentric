//
//  Carbon Footprint.swift
//  ClimateCentric
//
//  Created by Audrey Wiebe on 6/13/23.
//

import SwiftUI

struct Carbon_Footprint: View {
    var body: some View {
        NavigationStack{
        ZStack {
            Color(red: 0.0, green: 0.44313725490196076, blue: 0.3254901960784314)
                .ignoresSafeArea()
            
            
            Image("footprint")
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fit)
            
            VStack {
                
                NavigationLink(destination: Carbon_Quiz()) {
                    Text("Take the quiz!")
                }
                
                .buttonStyle(.bordered)
                .tint(Color(red: 0.0, green: 0.44313725490196076, blue: 0.3254901960784314, opacity: 1.0))
                .font(.title3)
                .fontDesign(.rounded)
                .foregroundColor(Color(red: 0.0, green: 0.44313725490196076, blue: 0.3254901960784314))
                .offset(x:53, y:115)
            }
            .padding()
            
            VStack{
                Text("ClimateCentric")
                    .font(.custom("DIN Condensed", size: 19))
                    .foregroundColor(Color(red: 0.8901960784313725, green: 1.0, blue: 0.0))
                // .font(.custom("Gill Sans", size: 19))
                    .position(x:60,y:20)
                
                
                
                Menu("Menu") {
                    
                    NavigationLink("Motivation Corner", destination: MotivationCorner())
                    // {}
                    
                    NavigationLink("Involvement Links", destination: InvolvementCenter())
                    NavigationLink("Interaction Center", destination: TalkingCC())
                    NavigationLink("Carbon Footprint", destination: Carbon_Footprint())
                    
                }
                .position(x:340,y:-344)
                .foregroundColor(Color(red: 0.8901960784313725, green: 1.0, blue: 0.0))
            }
        }
        }
    }
    
    struct Carbon_Footprint_Previews: PreviewProvider {
        static var previews: some View {
            Carbon_Footprint()
        }
    }
}
