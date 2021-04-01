//
//  UITestSampleUITests.swift
//  UITestSampleUITests
//
//  Created by user188455 on 3/25/21.
//

import XCTest

class UITestSampleUITests: XCTestCase {
    var app: XCUIApplication!
    
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        app = XCUIApplication()
        app.launch()

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testGivenMainWhenAlienButtonThenHelloAlien() throws {
        let app = XCUIApplication()
        app.buttons["👽"].tap()
        XCTAssert(app.alerts["Meaning"].otherElements.staticTexts["Hello Alien"].exists)
    }

    func testGivenMainWhenGhostButtonThenHelloGhost() throws {
        let app = XCUIApplication()
        app.buttons["👻"].tap()
        XCTAssert(app.alerts["Meaning"].otherElements.staticTexts["Hello Ghost"].exists)
    }
    
    func testGivenMainWhenRobotButtonThenHelloRobot() throws {
        let app = XCUIApplication()
        app.buttons["🤖"].tap()
        XCTAssert(app.alerts["Meaning"].otherElements.staticTexts["Hello Robot"].exists)
    }
    
    /*func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }*/
}
