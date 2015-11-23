//
//  BedNode.swift
//  CatNap
//
//  Created by Johannes Boehm on 23.11.15.
//  Copyright © 2015 Razeware LLC. All rights reserved.
//

import SpriteKit

class BedNode: SKSpriteNode, CustomNodeEvents {
    func didMoveToScene(){
        print("bed added to scene")
        
        let bedBodySize = CGSize(width: 20.0, height: 30.0)
        physicsBody = SKPhysicsBody(rectangleOfSize: bedBodySize)
        physicsBody!.categoryBitMask = PhysicsCategory.Bed
        physicsBody!.collisionBitMask = PhysicsCategory.None
        
    }
    
}
