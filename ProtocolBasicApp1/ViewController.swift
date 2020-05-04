//
//  ViewController.swift
//  ProtocolBasicApp1
//
//  Created by 木村友紀 on 2020/04/25.
//  Copyright © 2020 木村友紀. All rights reserved.
//

import UIKit

// Protocolを宣言する
class ViewController: UIViewController, CatchProtocol {
    
    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        var count = Int()
    }
    
    func catchData(count: Int) {
        label.text = String(count)
    }

    @IBAction func next(_ sender: Any) {
        performSegue(withIdentifier: "next", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nextVC = segue.destination as! NextViewController
        nextVC.delegate = self
    }
    
}

