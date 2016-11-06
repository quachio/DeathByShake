//
//  ViewController.swift
//  DeathByShake
//
//  Created by Quach IO on 11/6/16.
//  Copyright © 2016 Quach IO. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    var counter: Int = 2;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
            if let image = UIImage(named: "image\(counter)") {
                imageView.image = image
                counter += 1
                if counter > 11 {
                    counter = 1
                }
            }
        }
    }
}

