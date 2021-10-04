import XCTest
@testable import FrameworkA_With_B_Then_C
@testable import FrameworkA_With_C_Then_B

final class PackageATests: XCTestCase {
    func testExample() {
      XCTAssertEqual(FrameworkA_With_B_Then_C().frameworkDAbout, "Frameowrk D from Package D - version 1.0")
      XCTAssertEqual(FrameworkA_With_C_Then_B().frameworkDAbout, "Frameowrk D from Package D - version 1.0")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
