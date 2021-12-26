//
//  ViewController.swift
//  slider & button Practice
//
//  Created by Judy chen on 2021/12/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var bobImageView: UIImageView!
    @IBOutlet weak var stuartImageView: UIImageView!
    @IBOutlet weak var distanceSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

    }

    @IBAction func moveCloser(_ sender: UISlider) {
        let movingDistance =  CGFloat(sender.value * (515-79-133)/2)

        bobImageView.frame.origin.x = 79 + movingDistance
        stuartImageView.frame.origin.x = 515 - movingDistance

        bobImageView.alpha = CGFloat(sender.value/10)
        stuartImageView.alpha = CGFloat(sender.value/10)
    }
    

        
    

}

