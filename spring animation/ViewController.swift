//
//  ViewController.swift
//  spring animation
//
//  Created by Mac on 11.11.2020.
//

import Spring

class ViewController: UIViewController {
    
    @IBOutlet var animationView: SpringView!
    
    @IBOutlet var animationTypeLabel: UILabel!
    @IBOutlet var animationDurationLabel: UILabel!
    @IBOutlet var animationForceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animationTypeLabel.isHidden = true
        animationDurationLabel.isHidden = true
        animationForceLabel.isHidden = true
        
    }
    
    @IBAction func animationButton(_ sender: SpringButton) {
        
        let animations = Animation.getAnimate()
        
        
        
        for animation in animations {
            
            sender.setTitle(animation.text, for:.normal)
            animationView.animation = animation.text
            animationView.force = CGFloat(animation.force)
            animationView.duration = CGFloat(animation.duration)
        }
        
        animationView.animate()
        
        animationTypeLabel.isHidden = false
        animationDurationLabel.isHidden = false
        animationForceLabel.isHidden = false
        
        animationTypeLabel.text = "Animation: \(animationView.animation)"
        animationDurationLabel.text = "Force: \(String(format: "%.1f", animationView.force))"
        animationForceLabel.text = "Duration: \(String(format: "%.1f", animationView.duration))"
    }
    
}



