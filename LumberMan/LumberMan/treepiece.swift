//
//  treepiece.swift
//  LumberMan
//
//  Created by Amin Entezari on 11/12/23.
//

import SpriteKit

class treePiece: SKSpriteNode {
    
    var rightTreeBranch: SKSpriteNode!
    var leftTreeBranch: SKSpriteNode!
    
    var side: Side = .none {
        didSet {
            switch side {
            case .left:
                
                leftTreeBranch.isHidden = false
            case .right:
                
                rightTreeBranch.isHidden = false
            case .none:
                
                leftTreeBranch.isHidden = true
                rightTreeBranch.isHidden = true
                
                
            }
        }
    }
    
    override init(texture: SKTexture?, color: UIColor, size: CGSize) {
        super.init(texture: texture, color: color, size: size)
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}


