import XCTest

#if !os(macOS)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(Kitura_HelloWorld_iOSTests.allTests),
    ]
}
#endif