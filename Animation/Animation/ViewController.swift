//
//  ViewController.swift
//  Animation
//
//  Created by Abduraxmon on 26/03/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var planetImage: UIImageView!
    
    let animator = UIViewPropertyAnimator(duration: 1.0, curve: .linear)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configurationSetup()
        configureEndAnimaton()
    }
    
    func configurationSetup() {
        planetImage.alpha = 0.0
        planetImage.transform = CGAffineTransform(scaleX: 0.01, y: 0.01)
    }
    
    func configureEndAnimaton() {
        animator.addAnimations {
            self.planetImage.alpha = 1
            self.planetImage.transform = CGAffineTransform(scaleX: 3, y: 3)
        }
        
        animator.addAnimations({
            self.planetImage.frame.origin.y -= 400
        }, delayFactor: 0.5)
    }


    @IBAction func changeSize(_ sender: UISlider) {
        animator.fractionComplete = CGFloat(sender.value)
    }
}

