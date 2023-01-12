//
//  ScoreView.swift
//  Coding History Quizzer
//
//  Created by Andrew L Perkins on 1/11/23.
//

import SwiftUI

struct ScoreView: View {
    let viewModel: ScoreViewModel
    
    var body: some View {
        ZStack {
            GameColor.main.ignoresSafeArea()
            VStack {
                Spacer()
                Text("Final Score:")
                    .font(.body)
                Text("\(viewModel.percentage)%")
                    .font(.system(size: 50))
                    .bold()
                    .padding()
                Spacer()
                HStack {
                    Text("\(viewModel.correctGuesses)")
                    Image(systemName: "checkmark.square.fill")
                        .foregroundStyle(.white, .green)
                }
                .font(.system(size: 30))
                HStack {
                    Text("\(viewModel.incorrectGuesses)")
                    Image(systemName: "x.square.fill")
                        .foregroundStyle(.black, .red)
                }
                .font(.system(size: 30))
                Spacer()
                NavigationLink(
                    destination: GameView(),
                    label: {
                        BottomTextView(str: "Re-take Quiz")
                    }
                )
            }
            .foregroundColor(.white)
            .navigationBarHidden(true)
        }
    }
}

struct ScoreView_Previews: PreviewProvider {
    static var previews: some View {
        ScoreView(viewModel: ScoreViewModel(correctGuesses: 8, incorrectGuesses: 2))
    }
}
