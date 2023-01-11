//
//  QuestionView.swift
//  Coding History Quizzer
//
//  Created by Andrew L Perkins on 1/11/23.
//

import SwiftUI

struct QuestionView: View {
    let question: Question
    
    var body: some View {
        VStack {
            Text(question.questionText)
                .font(.largeTitle)
                .bold()
                .padding()
                .multilineTextAlignment(.leading)
            Spacer()
            HStack {
                ForEach(0..<question.possibleAnswers.count, id: \.self) { answerIndex in
                    Button(action: {
                        print("Tapped on option with text: \(question.possibleAnswers[answerIndex])")
                    }, label: {
                        ChoiceTextView(choiceText: question.possibleAnswers[answerIndex])
                    })
                }
            }
        }
    }
}

struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionView(question: Game().currentQuestion)
    }
}
