//
//  GameScene.swift
//  Game-Starter-Empty
//
//  Created by mitchell hudson on 9/13/18.
//  Copyright © 2018 Make School. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    var counter = 0
    let counts = SKLabelNode(fontNamed: "Helvetica")
  
    override func didMove(to view: SKView) {
        let firstAction = SKAction.run {
            self.makeSquare()
        }
        
        let wait = SKAction.wait(forDuration: 1)
        
        let sequence = SKAction.sequence([firstAction, wait])
        
        let repeatCreations = SKAction.repeatForever(sequence)
        self.run(repeatCreations)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touches = touches.first {
            let location = touches.location(in: self)
            let node = atPoint(location)
            if node.name == "bubble" {
                node.removeFromParent()
                counter += 1
                counts.text = "Your score is: \(counter)"
            }
        }
    }
    
    func makeSquare() {
        
            let size = CGSize(width: 50, height: 50)
            let square = SKSpriteNode(texture: nil, color: .magenta, size: size)
                // bounds is the size
            square.position.x = CGFloat(arc4random_uniform(UInt32(view?.bounds.width ?? 0)))
            square.position.y = 0
        
            let moveUp = SKAction.moveTo(y: (view?.bounds.height)!, duration: 2)
            let removeBubble = SKAction.removeFromParent()
        
            let sequence = SKAction.sequence([moveUp,removeBubble])
        
            addChild(square)
            square.run(sequence)
            square.name = "bubble"
        }
    

}
