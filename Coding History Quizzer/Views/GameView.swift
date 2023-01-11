//
//  ContentView.swift
//  Coding History Quizzer
//
//  Created by Andrew L Perkins on 1/3/23.
//

import SwiftUI

struct GameView: View {
    let question: Question = Question(
        questionText: "What was the first computer bug?",
        possibleAnswers: ["Ant", "Beetle", "Moth", "Fly"],
        correctAnswerIndex: 2
    )
    
    @StateObject var viewModel = GameViewModel()
    
    var body: some View {
        ZStack {
            GameColor.main.ignoresSafeArea()
            
            VStack {
                Text(viewModel.questionProgressText)
                    .font(.callout)
                    .multilineTextAlignment(.leading)
                    .padding()
                Text(question.questionText)
                    .font(.largeTitle)
                    .bold()
                    .multilineTextAlignment(.leading)
                Spacer()
                
                HStack {
                    ForEach(0..<question.possibleAnswers.count, id: \.self) { answerIndex in
                        Button(action: {
                            print("Tapped an option with the text: \(question.possibleAnswers[answerIndex])")
                        }, label: {
                            ChoiceTextView(choiceText: question.possibleAnswers[answerIndex])
                        })
                    }
                }
            }
        }
        .foregroundColor(.white)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
