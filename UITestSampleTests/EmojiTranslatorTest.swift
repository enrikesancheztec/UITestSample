//
//  EmojiTranslatorTest.swift
//  UITestSampleTests
//
//  Created by user188455 on 4/1/21.
//


import XCTest
@testable import UITestSample

class EmojiTranslatorTest: XCTestCase {
    func testGivenEmojiTranslatorWhenExistingEmojiThenTranslation() throws {
        // Given
        let emojiTranslator = EmojiTranslator()
        let expectedResult = "Alien"
        
        // When
        let actualResult = emojiTranslator.translate(emoji: "👽")
        
        // Then
        XCTAssertEqual(expectedResult, actualResult)
    }
    
    func testGivenEmojiTranslatorWhenExistingEmojiThenDefault() throws {
        // Given
        let emojiTranslator = EmojiTranslator()
        let expectedResult = "World"
        
        // When
        let actualResult = emojiTranslator.translate(emoji: "☠️")
        
        // Then
        XCTAssertEqual(expectedResult, actualResult)
    }
}
