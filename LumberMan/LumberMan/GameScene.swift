//
//  GameScene.swift
//  LumberMan
//
//  Created by POUYA BEHRAVESHMARAND on 06/12/23.
//

import SpriteKit

enum GameState {
    case title, ready, playing, gameOver
}

enum Side {
    case left, right, none
}

class GameScene: SKScene {
    
    /* Game management */
    var state: GameState = .title
    /* Game objects */
    var sushiBasePiece: SushiPiece!
    /* Cat Character */
    var character: Character!
    /* Sushi tower array */
    var sushiTower: [SushiPiece] = []
    /* Play Button */
    var playButton: MSButtonNode!
    /* Health Bar */
    var healthBar: SKSpriteNode!
    /* Reflect changes to health bar */
    var health: CGFloat = 1.0 {
      didSet {
        /* Cap Health */
        if health > 1.0 { health = 1.0 }
        /* Scale health bar between 0.0 -> 1.0 e.g 0 -> 100% */
        healthBar.xScale = health
      }
    }
    
}
