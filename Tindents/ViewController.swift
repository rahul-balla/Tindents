//
//  ViewController.swift
//  Tindents
//
//  Created by Rahul Balla on 1/31/19.
//  Copyright © 2019 Rahul Balla. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func onLoginPressed(_ sender: Any) {
        
        let tabBarControl = storyboard?.instantiateViewController(withIdentifier: "MainTabController") as! MainTabController
        
        present(tabBarControl, animated: true, completion: nil)
    }
    
}

