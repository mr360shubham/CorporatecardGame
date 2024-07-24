//
//  ViewController.swift
//  cardGame
//
//  Created by Shubham Baliyan on 10/08/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var imageView: UIImageView!
    
    
    @IBOutlet weak var stopButtonOL: UIButton!
    
    @IBOutlet weak var restartButtonOL: UIButton!
    
    
    @IBOutlet weak var ruleButtonOL: UIButton!
    
    var 
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        stopButtonOL.layer.cornerRadius = 10
        restartButtonOL.layer.cornerRadius = 10
        ruleButtonOL.layer.cornerRadius = 10
        
    }
    
    @IBAction func stopButton(_ sender: UIButton) {
    }
    
    @IBAction func restartButtonTapped(_ sender: UIButton) {
    }
    
    
    @IBAction func ruleButtonTapped(_ sender: UIButton) {
        
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "secondViewController") as! secondViewController
        
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
}

