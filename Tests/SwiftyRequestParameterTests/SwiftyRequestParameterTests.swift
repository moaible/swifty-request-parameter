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
    
    func dictionaryParameter() -> RequestParameter {
        let dict: [String: RequestParameter] = ["abc": 123, "def": "xyz"]
        return dict
    }
    
    func arrayParameter() -> RequestParameter {
        let array: RequestParameter = ["abc", "def", "ghi"]
        return array
    }

    static var allTests = [
        ("testRequestParameter", testRequestParameter),
    ]
}
