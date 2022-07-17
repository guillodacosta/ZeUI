import XCTest
@testable import ZemoUIKit

final class ZemoUIKitTests: XCTestCase {
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        let zCell = ZCellData(content: "Hello Ze", icon: UIImage())
        XCTAssertEqual(zCell.content, "Hello Ze")
    }
}
