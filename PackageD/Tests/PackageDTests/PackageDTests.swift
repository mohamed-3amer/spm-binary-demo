import XCTest
@testable import FrameworkD

final class PackageDTests: XCTestCase {
    func testExample() {
        XCTAssertEqual(PackageD().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
