//
//  ViewController.swift
//  cardGame
//
//  Created by Shubham Baliyan on 10/08/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var taskLbl: UILabel!
    
    @IBOutlet weak var stopButtonOL: UIButton!
    
    @IBOutlet weak var restartButtonOL: UIButton!
    
    
    @IBOutlet weak var ruleButtonOL: UIButton!
    
    var cards : [UIImage?] = card.allValues
    var tasks : [String?] = card.randomTask
    
    var timer: Timer?
    
//    init() {
//            self.timer = Timer() // Initialize the timer
//            super.init(nibName: nil, bundle: nil)
//        }
//    
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
    
       
   
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        stopButtonOL.layer.cornerRadius = 10
        restartButtonOL.layer.cornerRadius = 10
        ruleButtonOL.layer.cornerRadius = 10
        
        startTimer()
        
    }
    
    func startTimer() {
        timer = Timer.scheduledTimer(timeInterval: 0.04, target: self, selector: #selector(showRandomImage), userInfo: nil, repeats: true)
    }
    
    @objc func showRandomImage() {
        imageView.image = cards.randomElement() ?? UIImage(named: "AS")
        taskLbl.text = tasks.randomElement() ?? "you"
    }
    
    @IBAction func stopButton(_ sender: UIButton) {
       
        timer?.invalidate()
        if let index = tasks.firstIndex(of: taskLbl.text) {
            tasks.remove(at: index)
        }
    }
    
    @IBAction func restartButtonTapped(_ sender: UIButton) {
        
        timer?.invalidate()
        startTimer()
        
    }
    
    
    @IBAction func ruleButtonTapped(_ sender: UIButton) {
        
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "secondViewController") as! secondViewController
        
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
}

