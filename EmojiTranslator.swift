//
//  EmojiTranslator.swift
//  UITestSample
//
//  Created by user188455 on 4/1/21.
//

import Foundation

class EmojiTranslator {
    let emojiDict = ["👽":"Alien", "👻":"Ghost", "🤖":"Robot"]

    func translate(emoji : String) -> String {
        var result = "World"
        
        if let translation = emojiDict[emoji] {
            result = translation
        }
        
        return result
    }
}


