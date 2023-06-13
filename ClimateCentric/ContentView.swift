//
//  ContentView.swift
//  ClimateCentric
//
//  Created by seyma kilic on 6/12/23.
//

import SwiftUI

struct ContentView: View {
    @State
       var expanded: Bool = false
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
                Text("According to \"Global Warming's Six Americas\"")
                    .font(.body)
                  .position(x:200, y:130)
                  .foregroundColor(Color(red: 0.96, green: 1.0, blue: 0.93))
                  .multilineTextAlignment(.center)
            }
            
           
                VStack{
                    Button("Alarmed"){
                        VStack{
                            Text("sdfsdf")
                        }
                        .frame(width: 350.0, height: 320.0)
                    }
                    .frame(width: 150.0, height: 120.0)
                    .background(Color.white)
                    .clipShape(RoundedRectangle(cornerRadius: 25, style: .continuous))
                    .position(x:105,y:260)
                    
                    Button("Concerned"){
                    }
                    .frame(width: 150.0, height: 120.0)
                
                    .background(Color.white)
                    .clipShape(RoundedRectangle(cornerRadius: 25, style: .continuous))
                    .position(x:105,y:260)
                    
                    Button("Cautious"){
                    }
                    .frame(width: 150.0, height: 120.0)
                
                    .background(Color.white)
                    .clipShape(RoundedRectangle(cornerRadius: 25, style: .continuous))
                    .position(x:105,y:260)
                    
                    Button("Disengaged"){
                    }
                    .frame(width: 150.0, height: 120.0)
                
                    .background(Color.white)
                    .clipShape(RoundedRectangle(cornerRadius: 25, style: .continuous))
                    .position(x:295,y:-123)
                    
                    Button("Doubtful"){
                    }
                    .frame(width: 150.0, height: 120.0)
                
                    .background(Color.white)
                    .clipShape(RoundedRectangle(cornerRadius: 25, style: .continuous))
                    .position(x:295,y:-123)
                    
                    
                    Button("Dismissive"){
                    }
                    .frame(width: 150.0, height: 120.0)
                
                    .background(Color.white)
                    .clipShape(RoundedRectangle(cornerRadius: 25, style: .continuous))
                    .position(x:295,y:-123)
                }
               
                
            
           
            
                

        }
            
            
            }
        }
       // .padding()
    


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
