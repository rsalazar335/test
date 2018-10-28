import XCTest

#if !os(macOS)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(cp3Tests.allTests),
    ]
}
#endif