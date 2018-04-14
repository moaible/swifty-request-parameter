import XCTest
@testable import SwiftyRequestParameter

final class SwiftyRequestParameterTests: XCTestCase {
    
    func testRequestParameter() {
        XCTAssertEqual("\(numberParameter().requestParameter())", "1")
        XCTAssertEqual("\(stringParameter().requestParameter())", "abc")
        XCTAssertEqual("\(dictionaryParameter().requestParameter())", "\(["abc": 123, "def": "xyz"])")
        XCTAssertEqual("\(arrayParameter().requestParameter())", "\(["abc", "def", "ghi"])")
    }
    
    func numberParameter() -> RequestParameter {
        return 1
    }
    
    func stringParameter() -> RequestParameter {
        return "abc"
    }
    
    func dictionaryParameter() -> RequestParameterDictionary {
        return ["abc": 123, "def": "xyz"]
    }
    
    func arrayParameter() -> RequestParameterArray {
        return ["abc", "def", "ghi"]
    }

    static var allTests = [
        ("testRequestParameter", testRequestParameter),
    ]
}
