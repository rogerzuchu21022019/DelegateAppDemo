//
//  SecondVC.swift
//  DelegateAppDemo
//
//  Created by Vu Thanh Nam on 11/05/2022.
//

import UIKit
protocol MakeProject {
    func checkFinish()
}

class SecondVC: UIViewController {

    var delegate:MakeProject?
    @IBAction func BackToHome(_ sender: UIButton) {
//        performSegue(withIdentifier: "BackToSegue", sender: self)
        
        guard let delegate = delegate else {
            return
        }
        delegate.checkFinish()
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
   

}
