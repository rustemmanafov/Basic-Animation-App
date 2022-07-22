//
//  ViewController.swift
//  animation
//
//  Created by Rustem Manafov on 07.07.22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var AnimationView: UIView!
    @IBOutlet weak var constraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    @IBAction func BeginAnimation(_ sender: Any) {
        
    
        UIView.animate(withDuration: 2, delay: 0) {
            self.AnimationView.layer.cornerRadius = 120
            
        } completion: { _ in
            UIView.animate(withDuration: 1.5, delay: 0, usingSpringWithDamping: 0.2, initialSpringVelocity: 0.2) {
                self.constraint.constant = 24
                self.view.layoutIfNeeded()
            } completion: { _ in
                UIView.animate(withDuration: 1.5) {
                    self.constraint.constant = 160
                    self.view.layoutIfNeeded()
                    self.AnimationView.backgroundColor = .blue
            }

            

            
        }

            
            
        }

        
        
    }
    
}

