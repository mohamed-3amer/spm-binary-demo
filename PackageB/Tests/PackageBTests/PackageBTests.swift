import XCTest
@testable import AlamofireB

final class PackageBTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(AlamofireB().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
