//
//  SecondViewController.swift
//  CircleAnimation
//
//  Created by Enes urkan on 28.11.2017.
//  Copyright © 2017 Enes urkan. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var dismissButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
       dismissButton.layer.cornerRadius = dismissButton.frame.size.width / 2
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func dismissSecondVC(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }

}

extension UIButton {
    func circleButton(){
        self.layer.cornerRadius = self.frame.size.height / 2
    }
    func addShadow(color : UIColor){
        self.layer.shadowColor = color.cgColor
        self.layer.shadowOffset = CGSize(width: 0, height: 2)
        self.layer.shadowRadius = 2.0
        self.layer.shadowOpacity = 0.3
    }
}

extension UIView {
    func circleView(){
        self.layer.cornerRadius = self.frame.size.height / 2
    }

}



