import XCTest
@testable import SwiftLogs

final class SwiftLogsTests: XCTestCase {
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
//        XCTAssertEqual(Log.info("Problem"))
        Log.info("Problem")
    }
}
