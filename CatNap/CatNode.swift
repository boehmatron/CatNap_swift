//
//  CatNode.swift
//  CatNap
//
//  Created by Johannes Boehm on 23.11.15.
//  Copyright © 2015 Razeware LLC. All rights reserved.
//

import SpriteKit

class CatNode: SKSpriteNode, CustomNodeEvents {
    func didMoveToScene() {
        print("cat added to scene")
        
        let catBodyTexture = SKTexture(imageNamed: "cat_body_outline")
        parent!.physicsBody = SKPhysicsBody(texture: catBodyTexture, size: catBodyTexture.size())
        parent!.physicsBody!.categoryBitMask = PhysicsCategory.Cat
        parent!.physicsBody!.collisionBitMask = PhysicsCategory.Block
    }
}
