//
//  ViewController.swift
//  iWorkFlowMultiEnv
//
//  Created by GSE on 22/5/19.
//  Copyright © 2019 GSE. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func showConfig(_ sender: Any) {
        print("[\(Config.appEnvironment.uppercased()), \(Config.appName) - \(Config.appIdentifier)]: v.\(Config.appVersion)")
        print("other data")
        print(Config.apiUrl)
        print(Config.apiKey)
    }
}

