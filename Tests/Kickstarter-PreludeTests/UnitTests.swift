import XCTest
@testable import Kickstarter_Prelude

final class UnitTests: XCTestCase {

  func testUnitEquality() {
    XCTAssertEqual(Kickstarter_Prelude.Unit(), Kickstarter_Prelude.Unit())
  }
}
