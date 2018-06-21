//
//  MainScene.swift
//  FingerTouch
//
//  Created by ThienTX on 6/21/18.
//  Copyright © 2018 ThienTX. All rights reserved.
//

import UIKit
import SpriteKit

class MainScene: SKScene {
    let node = SKSpriteNode(color: UIColor.red, size: CGSize(width: 100, height: 100))

    override func didMove(to view: SKView) {
        node.position.x = self.frame.size.width/2
        node.position.y = 50
        node.name = "node"
        self.backgroundColor = UIColor.white
        addChild(node)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let touch = touches.first else {
            return
        }
        
        let touchLocation = touch.location(in: self)
        let touchedNode = self.atPoint(touchLocation)
        
        if(touchedNode.name == "node") {
            node.position = touchLocation
        }
    }
}
