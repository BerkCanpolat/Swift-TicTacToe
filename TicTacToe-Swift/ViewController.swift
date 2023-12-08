//
//  ViewController.swift
//  TicTacToe-Swift
//
//  Created by Berk Canpolat on 30.11.2023.
//

import UIKit

class ViewController: UIViewController {
    
    enum Turn {
        case Nougth
        case Cross
    }
    
    //MARK: -VARIABLES
    @IBOutlet weak var turnLabel: UILabel!
    
    @IBOutlet weak var a1: UIButton!
    @IBOutlet weak var a2: UIButton!
    @IBOutlet weak var a3: UIButton!
    
    @IBOutlet weak var b1: UIButton!
    @IBOutlet weak var b2: UIButton!
    @IBOutlet weak var b3: UIButton!
    
    
    @IBOutlet weak var c1: UIButton!
    @IBOutlet weak var c2: UIButton!
    @IBOutlet weak var c3: UIButton!
    
    var firstTurn = Turn.Cross
    var currentTurn = Turn.Cross
    
    var NOUGTH = "O"
    var CROSS = "X"
    
    
    
    //MARK: -FUNCTIONS
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func boardTapAction(_ sender: UIButton) {
        addToBoard(sender)
    }
    
    func addToBoard(_ sender: UIButton) {
        if sender.title(for: .normal) == nil {
            if currentTurn == Turn.Nougth {
                sender.setTitle(NOUGTH, for: .normal)
                currentTurn = Turn.Cross
                turnLabel.text = CROSS
            } else if currentTurn == Turn.Cross {
                sender.setTitle(CROSS, for: .normal)
                currentTurn = Turn.Nougth
                turnLabel.text = NOUGTH
            }
        }
    }
    


}

