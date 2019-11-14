import XCTest
import allcases

final class allcasesTests: XCTestCase {
    func testExample() throws {
        let _ = MyEnum.allCases
        let _ = MyStruct()
        XCTAssertTrue(true)
    }

    /// Returns path to the built products directory.
    var productsDirectory: URL {
      #if os(macOS)
        for bundle in Bundle.allBundles where bundle.bundlePath.hasSuffix(".xctest") {
            return bundle.bundleURL.deletingLastPathComponent()
        }
        fatalError("couldn't find the products directory")
      #else
        return Bundle.main.bundleURL
      #endif
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
