//
//  ViewController.swift
//  Apple Pie
//
//  Created by deniz onur demir on 3/3/25.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet var treeImageView: UIImageView!
    @IBOutlet var correctWordLabel: UILabel!
    @IBOutlet var scoreLabel: UILabel!
    
    @IBOutlet var letterButtons: [UIButton]!
    
    var listOfWords = ["buccaneer", "swift", "glorious", "incandescent", "bug", "program"]
        let incorrectMovesAllowed = 7
        
    var totalWins = 0 {
        didSet {
            newRound()
        }
    }

    var totalLosses = 0 {
        didSet {
            newRound()
        }
    }
    
    var currentGame: Game!

        override func viewDidLoad() {
            super.viewDidLoad()
            newRound()
        }
        
        func newRound() {
            if !listOfWords.isEmpty { // Ensure there are words left to play
                let newWord = listOfWords.removeFirst()
                currentGame = Game(word: newWord, incorrectMovesRemaining: incorrectMovesAllowed, guessedLetters: [])
                updateUI()
            } else {
                // No more words left, disable buttons
                enableLetterButtons(false)
            }
        }

    func updateUI() {
        var letters = [String]()
        for letter in currentGame.formattedWord {
            letters.append(String(letter))
        }
        let wordWithSpacing = letters.joined(separator: " ") // Adds space between letters
        correctWordLabel.text = wordWithSpacing
        scoreLabel.text = "Wins: \(totalWins), Losses: \(totalLosses)"
        treeImageView.image = UIImage(named: "Tree \(currentGame.incorrectMovesRemaining)")
    }
    
    func updateGameState() {
        updateUI()  // 🔹 Ensure UI updates first

        if currentGame.incorrectMovesRemaining == 0 {
            totalLosses += 1
        } else if currentGame.formattedWord == currentGame.word { // 🔹 Correct condition
            totalWins += 1
        } else {
            return
        }
        newRound()  // 🔹 Ensure next round starts after win/loss
    }
        
    @IBAction func letterButtonPressed(_ sender: UIButton) {
        sender.isEnabled = false
        let letterString = sender.configuration?.title ?? "" // Get button title
        let letter = Character(letterString.lowercased())
        currentGame.playerGuessed(letter: letter)
        updateUI()
    }
        
        func enableLetterButtons(_ enable: Bool) {
            for button in letterButtons {
                button.isEnabled = enable
            }
        }
    }
