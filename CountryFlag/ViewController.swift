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
    func askQuestion() {
        
        // randomly shuffle an array collection ** in place **
        countries.shuffle()
        
        button1.setImage(UIImage(named: countries[0]), for: .normal)
        button2.setImage(UIImage(named: countries[1]), for: .normal)
        button3.setImage(UIImage(named: countries[2]), for: .normal)
        
        correctAnswer = Int.random(in: 0...2)
        
        // set the title property in the navigaion bar
        title = countries[correctAnswer].uppercased()
    }

}

