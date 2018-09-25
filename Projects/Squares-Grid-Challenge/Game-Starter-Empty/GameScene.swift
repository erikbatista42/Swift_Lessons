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
  
    override func didMove(to view: SKView) {
        // box one
        let boxOne = makeSquare(x: 50, y: 100, color: .magenta)
        
        let moveUpOne = SKAction.moveBy(x: 0, y: 500, duration: 4)
        let vanishOne = SKAction.fadeOut(withDuration: 1)
        
        let sequenceOne = SKAction.sequence([moveUpOne,vanishOne])
        boxOne.run(sequenceOne)
        
        // box two
        let boxTwo = makeSquare(x: view.bounds.width/2, y: view.bounds.height/2, color: .magenta)
        
        let moveUpTwo = SKAction.moveBy(x: 0, y: 250, duration: 2)
        let vanishTwo = SKAction.fadeOut(withDuration: 1)
       
        let sequenceTwo = SKAction.sequence([moveUpTwo,vanishTwo])

        boxTwo.run(sequenceTwo)
        
        // box three
        let boxThree = makeSquare(x: 300, y: 100, color: .magenta)
        
        let moveUpThree = SKAction.moveBy(x: 0, y: 500, duration: 4)
        let vanishThree = SKAction.fadeOut(withDuration: 1)
        
        let sequenceThree = SKAction.sequence([moveUpThree,vanishThree])
        
        boxThree.run(sequenceThree)
        
    }
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
//        let action = SKAction.run { self.makeGrid() }
//        self.run(action)
      
    }
    
    func makeSquare(x: CGFloat, y: CGFloat, color: UIColor) -> SKSpriteNode {
            let size = CGSize(width: 50, height: 50)
            let square = SKSpriteNode(texture: nil, color: color, size: size)
            // bounds is the size
            square.position.x = x
            square.position.y = y
            addChild(square)

            return square
        }
    
    
//    func makeSquare(x: CGFloat, y: CGFloat, color: UIColor) {
//        let size = CGSize(width: 50, height: 50)
//        let square = SKSpriteNode(texture: nil, color: color, size: size)
//        // bounds is the size
//        square.position.x = x
//        square.position.y = y
//        addChild(square)
//    }
//
//
    func makeGrid() {
//        // top squares
//        makeSquare(x: 120, y: 400, color: .yellow)
//        makeSquare(x: (view?.bounds.width)!/2, y: 400, color: .magenta)
//        makeSquare(x: 250, y: 400, color: .yellow)
//        // middle squares
//        makeSquare(x: (view?.bounds.width)!/2, y: (view?.bounds.height)!/2, color: .magenta)
//        makeSquare(x: 120, y: (view?.bounds.height)!/2, color: .magenta)
//        makeSquare(x: 250, y: (view?.bounds.height)!/2, color: .magenta)
//        // bottom squares
//        makeSquare(x: 120, y: 270, color: .yellow)
//        makeSquare(x: (view?.bounds.width)!/2, y: 270, color: .magenta)
//        makeSquare(x: 250, y: 270, color: .yellow)
    }

}
