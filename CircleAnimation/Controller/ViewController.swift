//
//  ViewController.swift
//  CircleAnimation
//
//  Created by Enes urkan on 28.11.2017.
//  Copyright © 2017 Enes urkan. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIViewControllerTransitioningDelegate {

    @IBOutlet weak var menuButton: UIButton!
    
    let transition = CircularTransition()//
    override func viewDidLoad() {
        super.viewDidLoad()
        
        menuButton.addShadow(color: .black)
        //menuButton.circleButton()
        //menuButton.layer.cornerRadius = menuButton.frame.size.width / 2//
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        transition.transitionMode = .present
        transition.startingPoint = menuButton.center
        transition.circleColor = menuButton.backgroundColor!
        
        return transition
    }
    func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        transition.transitionMode = .dismiss
        transition.startingPoint = menuButton.center
        transition.circleColor = menuButton.backgroundColor!
        
        return transition
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let secondVC = segue.destination as! SecondViewController
        secondVC.transitioningDelegate = self
        secondVC.modalPresentationStyle = .custom
    }
   

}

