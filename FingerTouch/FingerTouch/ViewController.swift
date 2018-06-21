//
//  ViewController.swift
//  FingerTouch
//
//  Created by ThienTX on 6/21/18.
//  Copyright © 2018 ThienTX. All rights reserved.
//

import UIKit
import SpriteKit

class ViewController: UIViewController {
    
    @IBOutlet weak var skView: SKView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = UIColor.yellow
        
        let scene = MainScene(size: CGSize(width: self.view.bounds.size.width, height: self.view.bounds.size.height))
        skView.presentScene(scene)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

