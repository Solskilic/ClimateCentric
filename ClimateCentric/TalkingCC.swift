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
    
    @State private var contextA = "Alarmed people are those who are aware of the impact of climate change, worried about our future, and want to take climate action.\n\tThey make up 26% of the U.S. population.\n\tWhen talking to an Alarmed person, "
    @State private var contextCo = "fsdfsdgsf"
    @State private var contextCa = "fsdfsdgsf"
    @State private var contextEn = "fsdfsdgsf"
    @State private var contextDo = "fsdfsdgsf"
    @State private var contextDi = "fsdfsdgsf"
    var body: some View {
        ZStack {
            NavigationStack {
                Text("Interaction Center")
                    .font(.custom("title", size: 17))
                    .toolbar {
                        ToolbarItem(placement: .automatic) {
                            Menu("Menu") {
                                
                                Button("Motivation Corner")
                                {}
                                Button("Interaction Center")
                                {}
                                Button("Involvement Links")
                                {}
                                Button("Carbon Footprint")
                                {}
                                
                            }
                            
                            
                        }
                        ToolbarItem(placement: .cancellationAction) {
                            //Color(red: 0.9, green: 1.0, blue: 0.0)
                            Text("ClimateCentric")
                                .font(.custom("DIN Condensed", size: 19))
                                .foregroundColor(Color(red: 0.0, green: 0.44313725490196076, blue: 0.3254901960784314))
                            
                            
                            
                        }
                        
                        
                    }
                    .navigationBarTitleDisplayMode(.inline)
                
                    .toolbarBackground(Color(red: 0.8901960784313725, green: 1.0, blue: 0.0), for: .navigationBar)
                    .toolbarBackground(.visible, for: .navigationBar)
                
                
                Color(red: 0.0, green: 0.44313725490196076, blue: 0.3254901960784314)
                    .ignoresSafeArea()
                
                
            }
            
            
            
            
            Section {
                Text("How to Talk About Climate Change")
                    .font(.title2).bold()
                    .position(x:200, y:100)
                    .foregroundColor(Color(red: 0.96, green: 1.0, blue: 0.93))
                Text("Climate Change is unfortunately a polarized topic. Learn how to efficiently talk to different profiles \nof people when it comes to Climate Change. \nBased on the model named \"Global Warming's Six Americas\" developed by Yale University")
                    .font(.body)
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
                    .position(x: expandedA ? 200 : 105, y: expandedA ? 400 : 340)
                    .zIndex(expandedA ? 5 : 0)
              
                
                Button("Concerned"){
                    withAnimation()
                    {
                        expandedCo.toggle()
                    }
                    
                }
                .frame(width: expandedCo ? 370 : 150, height: expandedCo ? 400 : 120) // Adjust button size based on expandedA state
                .background(Color(red: 1.0, green: 0.6, blue: 0.98))
                .clipShape(RoundedRectangle(cornerRadius: expandedCo ? 50 : 25, style: .continuous)) // Adjust corner radius based on expandedA state
                .position(x: expandedCo ? 200 : 105, y: expandedCo ? 100 : 340)
                .zIndex(expandedCo ? 5 : 0)
                
                Button("Cautious"){
                    expandedCa = true
                }
                .frame(width: 150.0, height: 120.0)
                
                .background(Color(red: 1.0, green: 0.6, blue: 0.98))
                .clipShape(RoundedRectangle(cornerRadius: 25, style: .continuous))
                .position(x:105,y:340)
                .zIndex(2)
                
                Button("Disengaged"){
                    expandedEn = true
                }
                .frame(width: 150.0, height: 120.0)
                
                .background(Color(red: 1.0, green: 0.6, blue: 0.98))
                .clipShape(RoundedRectangle(cornerRadius: 25, style: .continuous))
                .position(x:295,y:-42)
                .zIndex(3)
                
                
                Button("Doubtful"){
                    expandedDo = true
                }
                .frame(width: 150.0, height: 120.0)
                
                .background(Color(red: 1.0, green: 0.6, blue: 0.98))
                .clipShape(RoundedRectangle(cornerRadius: 25, style: .continuous))
                .position(x:295,y:-42)
                .zIndex(4)
                
                Button("Dismissive"){
                    expandedDi = true
                }
                .frame(width: 150.0, height: 120.0)
                
                .background(Color(red: 1.0, green: 0.6, blue: 0.98))
                .clipShape(RoundedRectangle(cornerRadius: 25, style: .continuous))
                .position(x:295,y:-42)
            }
            
            
            
            if expandedCo{
          
            }
            
            if expandedCa{
                
               
            }
            
            if expandedEn{
                
                
            }
            if expandedDo{
                
              
            }
            if expandedDi{
                
             
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
