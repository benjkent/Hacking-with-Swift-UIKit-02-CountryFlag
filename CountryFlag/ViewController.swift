//
//  ViewController.swift
//  CountryFlag
//
//  Created by benjamin kent on 3/26/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    
    var countries = [String]()
    var score: Int = 0
    var correctAnswer: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        button1.layer.borderWidth = 1
        button2.layer.borderWidth = 1
        button3.layer.borderWidth = 1
        
        button1.layer.borderColor = UIColor.lightGray.cgColor
        button2.layer.borderColor = UIColor.lightGray.cgColor
        button3.layer.borderColor = UIColor.lightGray.cgColor
        
        // create you own colors using
        // UIColor(red: 1.0, green 0.6, blue: 0.2, alpha: 1.0).cgColor
        
        countries += ["estonia","france","germany","ireland","italy","monaco","poland","russia","spain","uk","us"]
        
        askQuestion()
    }
    func askQuestion(action: UIAlertAction! = nil) {
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "SCORE: \(score)", style: .plain, target: self, action: #selector(scoreRules))
        
        // randomly shuffle an array collection ** in place **
        countries.shuffle()
        
        button1.setImage(UIImage(named: countries[0]), for: .normal)
        button2.setImage(UIImage(named: countries[1]), for: .normal)
        button3.setImage(UIImage(named: countries[2]), for: .normal)
        
        correctAnswer = Int.random(in: 0...2)
        
        // set the title property in the navigaion bar
        title = countries[correctAnswer].uppercased()
    }

    @IBAction func buttonTapped(_ sender: UIButton) {
        // check whether the answer is correct
        // Adjust the score
        // Show a correct or incorrect message.
        var title: String
        
        
        if sender.tag == correctAnswer {
            title = "Correct"
            score += 1
            // Check to see if it is the winning score. 7
        } else {
            title = "Incorrect"
            score -= 1
            // check to see if it is the losing score -7
        }
        
        let ac = UIAlertController(title: title, message: "Your Score is \(score).", preferredStyle: .alert)
        
        // WARNING: The handler askQuestion means - the name of the method to run
        //                      askQuestion() means - run the askQuestion method right now.
        // The style: has 3 value possiblilities. .default, .cancel, and .destructive
        //            Each are different based on the IOS and have different user interface hints.
        ac.addAction(UIAlertAction(title: "Continue", style: .default, handler: askQuestion))
        present(ac, animated: true)
    }
    @objc func scoreRules() {
        let ac = UIAlertController(title: "Score", message: "Get 7 correct, but 7 wrong and you lose", preferredStyle: .alert)
        ac.addAction(UIAlertAction(title: "got it", style: .default, handler: nil))
        present(ac, animated: true)
    }
    func checkScore(currentScore: Int) -> Bool{
        if currentScore == 7 {
            return true
        }
        return false
    }
}

