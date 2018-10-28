import XCTest

#if !os(macOS)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(cp1Tests.allTests),
    ]
}
#endif