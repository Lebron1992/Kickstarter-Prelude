import XCTest
@testable import Kickstarter_Prelude

final class ComparatorTests: XCTestCase {
  func testIsOrdered() {
    XCTAssert(Int.comparator.isOrdered(1, 2))
    XCTAssert(Int.comparator.isOrdered(1, 1))
    XCTAssertFalse(Int.comparator.isOrdered(2, 1))
  }

  func testReversed() {
    XCTAssertFalse(Int.comparator.reversed.isOrdered(1, 2))
    XCTAssert(Int.comparator.reversed.isOrdered(1, 1))
    XCTAssert(Int.comparator.reversed.isOrdered(2, 1))
  }
}

extension Int {
  static var comparator: Kickstarter_Prelude.Comparator<Int> {
    return Kickstarter_Prelude.Comparator<Int> { lhs, rhs in
      lhs < rhs ? .lt
      : lhs == rhs ? .eq
      : .gt
    }
  }
}
