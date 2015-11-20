//
//  GameScene.swift
//  CatNap
//
//  Created by Johannes Boehm on 05.11.15.
//  Copyright (c) 2015 Johannes Boehm. All rights reserved.
//

import SpriteKit

var bedNode: BedNode!
var catNode: CatNode!

protocol CustomNodeEvents {
    func didMoveToScene()
}

class GameScene: SKScene {
        override func didMoveToView(view: SKView) {
            // Calculate playable margin
            let maxAspectRatio: CGFloat = 16.0/9.0 // iPhone 5
            let maxAspectRatioHeight = size.width / maxAspectRatio
            let playableMargin: CGFloat = (size.height - maxAspectRatioHeight)/2
            let playableRect = CGRect(x: 0, y: playableMargin, width: size.width, height: size.height-playableMargin*2)
            physicsBody = SKPhysicsBody(edgeLoopFromRect: playableRect)
        
            enumerateChildNodesWithName("//*", usingBlock: {node, _ in
                if let customNode = node as? CustomNodeEvents {
                    customNode.didMoveToScene()
                }
            })
        
        bedNode = childNodeWithName("bed") as! BedNode
        catNode = childNodeWithName("//cat_body") as! CatNode
        
        bedNode.setScale(1.5)
        catNode.setScale(1.5)
        
        }
}
