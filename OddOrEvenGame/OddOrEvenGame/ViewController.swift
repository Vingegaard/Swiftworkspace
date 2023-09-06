//
//  ViewController.swift
//  OddOrEvenGame
//
//  Created by 황영국 on 9/5/23.
//
/*
 1. Push 'Game Start' then, computer selects among 1 and 10 randomly (determining Even or Odd)
 2. User selects either 'Even' or 'Odd' and decide how many marbles to bet on.
 3. Show the result.
 */


import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var computerBallCountLbl: UILabel!
    @IBOutlet weak var userBallCountLbl: UILabel!
    @IBOutlet weak var resultLbl: UILabel!
    
    var comBallsCount: Int = 20
    var userBallsCount: Int = 20
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        computerBallCountLbl.text = String(comBallsCount)
        userBallCountLbl.text = String(userBallsCount)
        
        
    }
    @IBAction func gameStrartPressed(_ sender: Any) {
        print("Game Start!")
        print(self.getRandom())
        
        let alert = UIAlertController.init(title: "Game Start", message: "Choose Even or Odd", preferredStyle: .alert)
        
        let oddBtn = UIAlertAction.init(title: "Odd", style: .default) { _ in
            print("Odd selected")
            
            guard let input = alert.textFields?.first?.text, let value = Int(input) else {
                return
            }
            self.getWinner(count: value, select: "Odd")
        }
        
        
        
        let evenBtn = UIAlertAction.init(title: "Even", style: .default) { _ in
            print("Even selected")
            
            guard let input = alert.textFields?.first?.text, let value = Int(input) else {
                return
            }
            self.getWinner(count: value, select: "Even")
        }
        
        alert.addTextField {textField in
            textField.placeholder = "How many marbles you wanna bet?"
        }
        
        alert.addAction(oddBtn)
        alert.addAction(evenBtn)
        
        self.present(alert, animated: true) {
            print("Screen launched")
        }
    }
    
    func getWinner(count: Int, select: String){
        let com = self.getRandom()
        let comType = com % 2 == 0 ? "Even" : "Odd"
        
        var result = comType
        if comType == select {
            print("User Win")
            result = result + "(User Win)"
            self.calculateBalls(winner: "user", count: count)
        } else{
            result = result + "(Com Win)"
            print("Computer Win")
            self.calculateBalls(winner: "com", count: count)
        }
        self.resultLbl.text = result
    }
        
    func calculateBalls(winner: String, count: Int){
        
        if winner == "com" {
            self.userBallsCount = self.userBallsCount - count
            self.comBallsCount = self.comBallsCount + count
        }else {
            self.userBallsCount = self.userBallsCount + count
            self.comBallsCount = self.comBallsCount - count
        }
        
        self.userBallCountLbl.text = "\(self.userBallsCount)"
        self.computerBallCountLbl.text = "\(self.comBallsCount)"
    }
        
        func getRandom() -> Int {
            return Int(arc4random_uniform(10) + 1)
        }
    }

