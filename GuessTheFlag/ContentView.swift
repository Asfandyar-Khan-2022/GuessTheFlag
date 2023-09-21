//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Mac User on 20/09/2023.
//

import SwiftUI


/// This project shows three flags and asks the user to select one.
/// If the selected flag corresponds to the name then the user gets a point.
/// At point 8 the game resets.
struct ContentView: View {
    @State private var showingScore = false
    @State private var showingEndGame = false
    @State private var scoreTitle = ""
    @State private var scoreCorrect = 0
    @State private var scoreWrong = 0
    
    @State private var countries = ["Estonia", "France", "Germany", "Ireland", "Nigeria", "Poland", "Russia", "Spain", "UK", "US"].shuffled()
    @State private var correctAnswer = Int.random(in: 0...2)
    
    
    /// Render the game
    var body: some View {
        ZStack {
            RadialGradient(stops: [
                .init(color: Color(red: 0.1, green: 0.2, blue: 0.45), location: 0.3),
                .init(color: Color(red: 0.76, green: 0.15, blue:0.2), location: 0.3)
            ], center: .top, startRadius: 200, endRadius: 700)
                .ignoresSafeArea()
            VStack {
                Spacer()
                Text("Guess the flag")
                    .font(.largeTitle.bold())
                    .foregroundColor(.white)
                
                VStack(spacing: 15) {
                    VStack {
                        Text("Tap the flag of")
                            .foregroundStyle(.secondary)
                            .font(.subheadline.weight(.heavy))
                        
                        Text(countries[correctAnswer])
                            .foregroundColor(.primary)
                            .font(.largeTitle.weight(.semibold))
                    }
                    
                    ForEach(0..<3) { number in
                        Button {
                            flagTapped(number)
                        } label: {
                            Image(countries[number])
                                .renderingMode(.original)
                                .clipShape(Capsule())
                                .shadow(radius: 5)
                        }
                    }
                }
                .frame(maxWidth: .infinity)
                .padding(.vertical, 20)
                .background(.thinMaterial)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                
                Spacer()
                Spacer()
                Text("Score: \(scoreCorrect)")
                    .foregroundColor(.white)
                    .font(.title.bold())
                Spacer()
            }
            .padding()
        }
        .alert("You win!", isPresented: $showingEndGame) {
            Button("Play again") {
                reset()
                askQuestion()
            }
        } message: {
            Text("You got 8 right")
        }
        
        .alert(scoreTitle, isPresented: $showingScore) {
            Button("Continue", action: askQuestion)
        } message: {
            if (scoreWrong > 0) {
                Text("Your score is \(scoreCorrect) right and \(scoreWrong) wrong")
            } else {
                Text("Your score is \(scoreCorrect) right")
            }
        }
    }
    
    /// Score tally
    /// - Parameter number: number corresponds to the selected flag
    func flagTapped(_ number: Int) {
        if number == correctAnswer {
            scoreTitle = "Correct"
            scoreCorrect += 1
        } else {
            scoreTitle = "Wrong! That's the flag of \(countries[number])"
            scoreWrong += 1
        }
        if scoreCorrect == 8 {
            showingEndGame = true
        }else {
            showingScore = true
        }
    }
    
    /// Shuffle the displayed flags
    func askQuestion() {
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
    }
    
    /// Reset the game
    func reset() {
        scoreCorrect = 0
        scoreWrong = 0
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
