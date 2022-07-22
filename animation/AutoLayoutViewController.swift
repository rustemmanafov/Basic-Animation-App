//
//  AutoLayoutViewController.swift
//  animation
//
//  Created by Rustem Manafov on 08.07.22.
//

import UIKit

class AutoLayoutViewController: UIViewController {

    
    @IBOutlet weak var uiViewOutlet: UIView!
    @IBOutlet weak var buttonOutlet: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        uiViewOutlet.translatesAutoresizingMaskIntoConstraints = false
        buttonOutlet.translatesAutoresizingMaskIntoConstraints = false
        
        uiViewOutlet.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        uiViewOutlet.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        uiViewOutlet.widthAnchor.constraint(equalToConstant: 200).isActive = true
        uiViewOutlet.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        buttonOutlet.topAnchor.constraint(equalTo: uiViewOutlet.bottomAnchor, constant: 80).isActive = true
//        buttonOutlet.widthAnchor.constraint(equalToConstant: 180).isActive = true
        buttonOutlet.heightAnchor.constraint(equalToConstant: 40).isActive = true
        buttonOutlet.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
 buttonOutlet.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true

        buttonOutlet.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    

    @IBAction func buttonAction(_ sender: Any) {
        print("Hello")
    }
    

}
