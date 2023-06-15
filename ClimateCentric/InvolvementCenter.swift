
// InvolvmentCenter.swift
// ClimateCentric
//
// Created by gen on 6/15/23.
//
import SwiftUI
struct InvolvementCenter: View {
  var body: some View {
      NavigationStack{
          GeometryReader { geo in
              ZStack {
                  Image("Image")
                      .resizable()
                      .scaledToFill()
                      .edgesIgnoringSafeArea(.all)
                      .frame(width: geo.size.width, height:
                                geo.size.height, alignment: .center)
                      .position(x:196.6,y:390)
                  Link("EventBrite", destination: URL(string: "https://www.eventbrite.com")!)
                      .position(x: 224, y: 198)
                 
                  Link("ClimateAction", destination: URL(string: "https://www.climateaction.org")!)
                      .position(x:145, y: 453)
                  
                  VStack{
                      Text("ClimateCentric")
                          .font(.custom("DIN Condensed", size: 19))
                          .foregroundColor(Color(red: 0.8901960784313725, green: 1.0, blue: 0.0))
                          .position(x:60,y:20)
                      
                      
                      
                      Menu("Menu") {
                          
                          NavigationLink("Motivation Corner", destination: MotivationCorner())
                          // {}
                          
                          NavigationLink("Involvement Links", destination: InvolvementCenter())
                          NavigationLink("Interaction Center", destination: TalkingCC())
                          NavigationLink("Carbon Footprint", destination: Carbon_Footprint())
                          
                      }
                      .position(x:340,y:-348)
                      .foregroundColor(Color(red: 0.8901960784313725, green: 1.0, blue: 0.0))
                  }
              }
          }
      }
  }
}
struct InvolvementCenter_Previews: PreviewProvider {
  static var previews: some View {
    InvolvementCenter()
  }
}
