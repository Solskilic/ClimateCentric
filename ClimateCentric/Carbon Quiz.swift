//
//  Carbon Quiz.swift
//  ClimateCentric
//
//  Created by Audrey Wiebe on 6/13/23.
//

import SwiftUI

struct QuizQuestion {
    let question: String
    let answers: [String]
    let pointValues: [Int]
}


struct Carbon_Quiz: View {
    
    @State private var currentQuestionIndex = 0
    @State private var userScore = 0
    @State private var quizCompleted = false
    @State private var navigateToNextView = false
    
    let quizQuestions = [
        QuizQuestion(question: "How do you travel on a day-to-day basis?", answers: ["Walk", "Bike", "Car", "Bus", "Carpool"], pointValues: [0, 0, 1115, 131, 459]),
        QuizQuestion(question: "Which do you eat more often?", answers: ["Fast Food", "Home-cooked Meals"], pointValues: [4818, 629]),
        QuizQuestion(question: "What type of foods do you mostly eat?", answers: ["Fruits & Vegetables", "Meat", "Bread"], pointValues: [153, 644, 364]),
        QuizQuestion(question: "Do you turn off the lights when leaving a room?", answers: ["Yes", "No", "Sometimes"], pointValues: [133, 268, 201]),
        QuizQuestion(question: "Do you unplug appliances/chargers when they're not in use?", answers: ["Yes", "No", "Sometimes"], pointValues: [9, 18, 13]),
        QuizQuestion(question: "How do you dry your clothes?", answers: ["Hang to dry", "Dryer", "Both"], pointValues: [0, 750, 375]),
        QuizQuestion(question: "Do you turn off the water when brushing your teeth?", answers: ["Yes", "No"], pointValues: [34, 274]),
        QuizQuestion(question: "Do you turn off the TV when you're not watching it?", answers: ["Yes", "No", "Sometimes"], pointValues: [47, 140, 94]),
        
    ]
    
    var body: some View {
        
        ZStack {
            Color(red: 0.0, green: 0.44313725490196076, blue: 0.3254901960784314)
                .ignoresSafeArea()
            Image("carboncalculator")
                .resizable(resizingMode: .stretch)
                .ignoresSafeArea()
            Text("Carbon Footprint Calculator")
                .font(.title2)
                .fontDesign(.rounded)
                .fontWeight(.bold)
                .foregroundColor(Color(red: 1.0, green: 0.6, blue: 0.9882352941176471))
                .offset(x:0, y: -300)
            
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
            
            VStack {
                
                Text(quizQuestions[currentQuestionIndex].question)
                    .font(.title)
                    .multilineTextAlignment(.center)
                    .fontDesign(.rounded)
                    .padding()
                    .foregroundColor(Color(red: 0.8901960784313725, green: 1.0, blue: 0.0))
                
                VStack {
                    
                    ForEach(0..<quizQuestions[currentQuestionIndex].answers.count, id: \.self) { index in
                        Button(action: {
                            self.userScore += quizQuestions[self.currentQuestionIndex].pointValues[index]
                            self.moveToNextQuestion()
                        }) {
                            
                            Text(quizQuestions[self.currentQuestionIndex].answers[index])
                                .font(.title2)
                                .fontDesign(.rounded)
                                .padding()
                                .background(Color(red: 0.8901960784313725, green: 1.0, blue: 0.0))
                                .foregroundColor(Color(red: 0.0, green: 0.44313725490196076, blue: 0.3254901960784314))
                                .cornerRadius(10)
                        } }
                    .padding()
                    
                    .alert(isPresented: $quizCompleted) {
                        Alert(
                            title: Text("Your Carbon Footprint"),
                            message: Text("You emit an estimated \(userScore) pounds of carbon dioxide each year."),
                            primaryButton: .default(Text("Done!")) {
                                navigateToNextView = true
                            },
                            secondaryButton: .cancel()
                        )
                        
                        
                    }
                    
                }
            }
        }
    }
    
    func moveToNextQuestion() {
        if currentQuestionIndex < quizQuestions.count - 1 {
            currentQuestionIndex += 1
        } else {
            quizCompleted = true
            
        }
    }
    
    
    struct Carbon_Quiz_Previews: PreviewProvider {
        static var previews: some View {
            Carbon_Quiz()
        }
    }
}
