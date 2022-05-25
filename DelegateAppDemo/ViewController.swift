//
//  ViewController.swift
//  DelegateAppDemo
//
//  Created by Vu Thanh Nam on 11/05/2022.
//

import UIKit

class ViewController: UIViewController , MakeProject{
    
    @IBAction func didTapBtnNext(_ sender: UIButton) {
        performSegue(withIdentifier: "Goto2ndScreen", sender: self)
      
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Goto2ndScreen" {
            let destinationController = segue.destination as! SecondVC
            destinationController.delegate = self
        }
    }

    func checkFinish() {
        print("Finish my job")
    }
}


