//
//  CatNode.swift
//  catnap
//
//  Created by Böhm Johannes, SME-OXD-MOI on 13.11.15.
//  Copyright © 2015 Johannes Boehm. All rights reserved.
//

import Foundation
import SpriteKit
class CatNode: SKSpriteNode, CustomNodeEvents {
    func didMoveToScene() {
    print("cat added to scene")
    
    let catBodyTexture = SKTexture(imageNamed: "cat_body_outline")
    parent!.physicsBody = SKPhysicsBody(texture: catBodyTexture, size: catBodyTexture.size())
    
    
    }
}