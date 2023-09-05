//
//  ViewController.swift
//  OddOrEvenGame
//
//  Created by 황영국 on 9/5/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var computerBallCountLbl: UILabel!
    @IBOutlet weak var userBallCountLbl: UILabel!
    
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
    }
    

}

