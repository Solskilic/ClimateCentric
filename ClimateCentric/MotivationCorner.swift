import SwiftUI
struct MotivationCorner: View {
  @State private var motivationQuotes = ["The future depends on what you do today.", "The Earth does not belong to us. We belong to the Earth.", "Even small steps can make a huge impact.", "Don't underestimate the power of your actions.", "You are not alone in this fight.", "Your actions today can shape a better tomorrow for someone else.", "You are never too small to make a difference.", "In a gentle way, you can shake the world.", "The best way to predict the future is to create it.", "Small acts, when multiplied by millions of people, can shake the world.", "Believe you can and you're halfway there.", "Do not wait for leaders; do it alone, person to person.", "You have the power to make a difference. Use it wisely."]
  @State private var reminders1 = ["Walk, bike, or take public transport🚴🏼‍♀️", "Eat more vegetables 🥕", "Reduce, reuse, and recycle ♻️"]
  @State private var reminders2 = ["Throw away less food 🗑️", "Switch to an electric vehicle 🚗", "Speak up about climate change 🗣️"]
  @State private var reminders3 = ["Invest in environmentally sustainable businesses 💰","Take fewer flights ✈️", "Switch energy sources to wind or solar ☀️"]
  @State private var quote = ""
  @State private var rem1 = ""
  @State private var rem2 = ""
  @State private var rem3 = ""
  var body: some View {
      NavigationStack{
    ZStack{
      Color(red: 0.0, green: 0.44313725490196076, blue: 0.3254901960784314)
            .edgesIgnoringSafeArea(.all)
        VStack {
            Button {
                let index = Int.random(in:0..<13)
                quote = motivationQuotes[index]
            } label: {
                Text("Motivational Quote of the Day!")
                    .padding(.horizontal, 20)
                    .padding(.vertical, 20)
                    .background(Color(red: 1.0, green: 0.6, blue: 0.98))
                    .cornerRadius(20)
                    .foregroundColor(Color(red: 0.0, green: 0.44313725490196076, blue: 0.3254901960784314))
                    .font(.custom("Gill Sans", size: 27))
                    .fontWeight(.black)
                    .frame(width: 400.0, height: 200.0)
                    .position(x:197,y:130)
            }
            Text("\(quote)")
                .position(x:180,y:130)
                .padding(.horizontal, 10)
                .padding(.vertical, 10)
                .frame(width: 370.0, height: 150.0)
                .font(.custom("Gill Sans", size: 23))
                .foregroundColor(Color(red: 1.0, green: 0.6, blue: 0.98))
            
            Button {
                let index = Int.random(in:0..<3)
                rem1 = reminders1[index]
                rem2 = reminders2[index]
                rem3 = reminders3[index]
            } label: {
                Text("Reminders <3")
                    .padding(.horizontal, 40)
                    .padding(.vertical, 20)
                    .background(Color(red: 0.8901960784313725, green: 1.0, blue: 0.0))
                    .cornerRadius(20)
                    .foregroundColor(Color(red: 0.0, green: 0.44313725490196076, blue: 0.3254901960784314))
                    .font(.custom("Gill Sans", size: 27))
                    .fontWeight(.black)
                    .position(x:197,y:90)
            }
            
            Text("1. \(rem1)")
                .position(x:170,y:70)
                .font(.custom("Gill Sans", size: 27))
                .padding(.horizontal, 20)
                .foregroundColor(Color(red: 0.8901960784313725, green: 1.0, blue: 0.0))
            Text("2. \(rem2)")
            //.multilineTextAlignment(.center)
            //.textAlignment = .left
                .position(x:170,y:55)
                .font(.custom("Gill Sans", size: 27))
                .padding(.horizontal, 20)
                .foregroundColor(Color(red: 0.8901960784313725, green: 1.0, blue: 0.0))
            Text("3. \(rem3)")
                .position(x:170,y:40)
                .font(.custom("Gill Sans", size: 27))
                .padding(.horizontal, 20)
                .foregroundColor(Color(red: 0.8901960784313725, green: 1.0, blue: 0.0))
            
            VStack{
                Text("ClimateCentric")
                    .font(.custom("DIN Condensed", size: 19))
                    .foregroundColor(Color(red: 0.8901960784313725, green: 1.0, blue: 0.0))
                // .font(.custom("Gill Sans", size: 19))
                    .position(x:60,y:-620)
                
                
                
                Menu("Menu") {
                    
                    NavigationLink("Motivation Corner", destination: MotivationCorner())
                    // {}
                    
                    NavigationLink("Involvement Links", destination: InvolvementCenter())
                    NavigationLink("Interaction Center", destination: TalkingCC())
                    NavigationLink("Carbon Footprint", destination: Carbon_Footprint())
                    
                }
                .position(x:330,y:-670)
                .foregroundColor(Color(red: 0.8901960784313725, green: 1.0, blue: 0.0))
                
               
            }
          
           
      
        }
        Image("Design2")
            .position(x:200,y:720)
      }
          
    }
  }
}
struct MotivationCorner_Previews: PreviewProvider {
  static var previews: some View {
    MotivationCorner()
  }
}





















