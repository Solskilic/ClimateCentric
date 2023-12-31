//

//  ContentView.swift
//  ClimateCentric
//
//  Created by seyma kilic on 6/12/23.
//

//
//  ContentView.swift
//  ClimateCentric
//
//  Created by gen on 6/14/23.
////
//  ContentView.swift
//  AboutMeApp
//
//  Created by gen on 6/8/23.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationStack{
            
            GeometryReader { geo in
                ZStack {
                    Image("Home")
                        .resizable()
                        .scaledToFill()
                        .edgesIgnoringSafeArea(.all)
                        .frame(width: geo.size.width, height:
                                geo.size.height, alignment: .center)
                    
                    //Motivational Corner Symbol
                    
                    
                    HStack{
                        NavigationLink(destination: MotivationCorner(), label: {
                            Image(systemName: "brain.head.profile")
                                .foregroundColor(Color.black)
                                .font(.system(size:30))
                                .position(x: 50, y:202)
                        })
                        
                        
                        //Talking about Climate Change
                        NavigationLink(destination: TalkingCC(), label: {
                            Image(systemName: "ellipsis.bubble")
                                .foregroundColor(Color.black)
                                .font(.system(size:30))
                                .position(x: 43, y:202)
                        })
                        
                        //Involvment Center
                        
                        NavigationLink(destination: InvolvementCenter(), label: {
                            Image(systemName: "person.3")
                                .foregroundColor(Color.black)
                                .font(.system(size:30))
                                .position(x: 34, y:202)
                        })
                        
                        //Carbon Footprint Calculator
                           NavigationLink(destination: Carbon_Footprint(), label: {
                         Image(systemName: "chart.bar")
                         .foregroundColor(Color.black)
                         .font(.system(size:30))
                         .position(x: 30, y:202)
                         })
                        
                       
                        
                    }
                    Image("CClogo")
                                  .resizable()
                                  .aspectRatio(contentMode: .fit)
                                  .frame(width:270)
                                  .position(x:200, y:100)
                    
                    Text("Make the change you want to see.")
                        .position(x:200,y:270)
                        .foregroundColor(.white)
                        .font(.custom("Gill Sans", size: 22))
                }
            }
        }
    }
}
            
            struct contentView_Previews: PreviewProvider {
                static var previews: some View {
                    ContentView()
                }
            }
