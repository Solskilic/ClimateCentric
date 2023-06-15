//
//  TalkingCC.swift
//  ClimateCentricPersonalW
//
//  Created by seyma kilic on 6/14/23.
//

import SwiftUI

struct TalkingCC: View {
    @State var expandedA = false
    @State var expandedCo = false
    @State var expandedCa = false
    @State var expandedEn = false
    @State var expandedDo = false
    @State var expandedDi = false
    
    @State private var contextA = "Alarmed people are those who are aware of the impact of climate change, worried about our future, and want to take climate action.\n\tThey make up 26% of the U.S. population.\n\tWhen talking to an Alarmed person, share ways of taking climate action and instill hope within each other to keep fighting for a cleaner future."
    @State private var contextCo = "Concerned share similar views with the Alarmed profile, but Concerned believe climate change is a distant phenomenon, so they lack the urgency to act on it."
    @State private var contextCa = "fsdfsdgsf"
    @State private var contextEn = "fsdfsdgsf"
    @State private var contextDo = "fsdfsdgsf"
    @State private var contextDi = "fsdfsdgsf"
    var body: some View {
        
        NavigationStack{
        ZStack {
            
            
            Color(red: 0.0, green: 0.44313725490196076, blue: 0.3254901960784314)
                .ignoresSafeArea()
            
            
            
            
            Section {
                Text("How to Talk About Climate Change")
                    .font(.title2).bold()
                    .position(x:200, y:100)
                    .foregroundColor(Color(red: 0.96, green: 1.0, blue: 0.93))
                Text("Learn how to efficiently talk to different profiles \nof people when it comes to Climate Change. \nBased on the model named \"Global Warming's Six Americas\" developed by Yale University.")
                    .font(.custom("DIN Alternate", size: 17))
                    .position(x:195, y:190)
                    .foregroundColor(Color(red: 0.96, green: 1.0, blue: 0.93))
                    .multilineTextAlignment(.center)
            }
            
            
            VStack{
                
                Button(expandedA ? contextA : "Alarmed")
                {
                    withAnimation {
                        expandedA.toggle()
                    }
                }
                
                .frame(width: expandedA ? 370 : 150, height: expandedA ? 400 : 120) // Adjust button size based on expandedA state
                .background(Color(red: 1.0, green: 0.6, blue: 0.98))
                .clipShape(RoundedRectangle(cornerRadius: expandedA ? 50 : 25, style: .continuous)) // Adjust corner radius based on expandedA state
                .position(x: expandedA ? 200 : 105, y: expandedA ? 460 : 323)
                .font(.custom("Gill Sans", size: 19))
                .foregroundColor(Color(red: 0.0, green: 0.44313725490196076, blue: 0.3254901960784314))
                .zIndex(expandedA ? 6 : 0)
                
                
                
                Button(expandedCo ? contextCo : "Concerned"){
                    withAnimation()
                    {
                        expandedCo.toggle()
                    }
                    
                }
                .frame(width: expandedCo ? 370 : 150, height: expandedCo ? 400 : 120) // Adjust button size based on expandedA state
                .background(Color(red: 1.0, green: 0.6, blue: 0.98))
                .clipShape(RoundedRectangle(cornerRadius: expandedCo ? 50 : 25, style: .continuous)) // Adjust corner radius based on expandedA state
                .position(x: expandedCo ? 200 : 105, y: expandedCo ? 340 : 329)
                .foregroundColor(Color(red: 0.0, green: 0.44313725490196076, blue: 0.3254901960784314))
                .font(.custom("Gill Sans", size: 19))
                .zIndex(expandedCo ? 5 : 0)
                
                
                Button(expandedCa ? contextCa : "Cautious"){
                    withAnimation()
                    {
                        expandedCa.toggle()
                    }
                    
                }
                .frame(width: expandedCa ? 370 : 150, height: expandedCa ? 400 : 120) // Adjust button size based on expandedA state
                .background(Color(red: 1.0, green: 0.6, blue: 0.98))
                .clipShape(RoundedRectangle(cornerRadius: expandedCa ? 50 : 25, style: .continuous)) // Adjust corner radius based on expandedA state
                .position(x: expandedCa ? 200 : 105, y: expandedCa ? 220 : 340)
                .foregroundColor(Color(red: 0.0, green: 0.44313725490196076, blue: 0.3254901960784314))
                .font(.custom("Gill Sans", size: 19))
                .zIndex(expandedCa ? 5 : 0)
                
                
                Button(expandedEn ? contextEn : "Disengaged"){
                    withAnimation()
                    {
                        expandedEn.toggle()
                    }
                    
                }
                .frame(width: expandedEn ? 370 : 150, height: expandedEn ? 400 : 120) // Adjust button size based on expandedA state
                .background(Color(red: 1.0, green: 0.6, blue: 0.98))
                .clipShape(RoundedRectangle(cornerRadius: expandedEn ? 50 : 25, style: .continuous)) // Adjust corner radius based on expandedA state
                .position(x: expandedEn ? 200 : 290, y: expandedEn ? 80 : -41)
                .foregroundColor(Color(red: 0.0, green: 0.44313725490196076, blue: 0.3254901960784314))
                .font(.custom("Gill Sans", size: 19))
                .zIndex(expandedEn ? 5 : 0)
                
                
                Button(expandedDo ? contextDo : "Doubtful"){
                    withAnimation()
                    {
                        expandedDo.toggle()
                    }
                    
                }
                .frame(width: expandedDo ? 370 : 150, height: expandedDo ? 400 : 120) // Adjust button size based on expandedA state
                .background(Color(red: 1.0, green: 0.6, blue: 0.98))
                .clipShape(RoundedRectangle(cornerRadius: expandedDo ? 50 : 25, style: .continuous)) // Adjust corner radius based on expandedA state
                .position(x: expandedDo ? 200 : 290, y: expandedDo ? -40 : -33)
                .foregroundColor(Color(red: 0.0, green: 0.44313725490196076, blue: 0.3254901960784314))
                .font(.custom("Gill Sans", size: 19))
                .zIndex(expandedDo ? 5 : 0)
                
                Button(expandedDi ? contextDi : "Dismissive"){
                    withAnimation()
                    {
                        expandedDi.toggle()
                    }
                    
                }
                .frame(width: expandedDi ? 370 : 150, height: expandedDi ? 400 : 120) // Adjust button size based on expandedA state
                .background(Color(red: 1.0, green: 0.6, blue: 0.98))
                .clipShape(RoundedRectangle(cornerRadius: expandedDi ? 50 : 25, style: .continuous)) // Adjust corner radius based on expandedA state
                .position(x: expandedDi ? 200 : 290, y: expandedDi ? -160 : -22)
                .foregroundColor(Color(red: 0.0, green: 0.44313725490196076, blue: 0.3254901960784314))
                .font(.custom("Gill Sans", size: 19))
                .zIndex(expandedDi ? 5 : 0)
                
                
                
                
                
            }
            
            Link("Click here to find out more about\n\"Global Warming's Six Americas\"", destination: URL(string: "https://climatecommunication.yale.edu/about/projects/global-warmings-six-americas/")!)
                .font(.custom("DIN Alternate", size: 14.5))
                .position(x:200, y:700)
                .foregroundColor(Color(red: 0.8901960784313725, green: 1.0, blue: 0.0))
            
            
            //{
            // }
            
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
                .position(x:340,y:-347)
                .foregroundColor(Color(red: 0.8901960784313725, green: 1.0, blue: 0.0))
            }
        }
    }
       
        }
    }
    


// .padding()




struct TalkingCC_Previews: PreviewProvider {
    static var previews: some View {
        TalkingCC()
        
    }
}





