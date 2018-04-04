//
//  ViewController.swift
//  Animation with Timer
//
//  Created by 김종현 on 2018. 4. 2..
//  Copyright © 2018년 김종현. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var counter = 1
    var myTimer = Timer()

    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var imageCounter: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageCounter.text = String(counter)
    }


    @IBAction func play(_ sender: Any) {
         myTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(doAnimation), userInfo: nil, repeats: true)
    }
    
    @IBAction func stop(_ sender: Any) {
        myTimer.invalidate()
    }
    
    @objc func doAnimation() {
        if counter == 5 {
            counter = 1
        } else {
            counter = counter + 1
        }
        
        myImageView.image = UIImage(named: "frame\(counter).png")
        imageCounter.text = String(counter)
    }
}

