//
//  RequestParameter+Array.swift
//  SwiftyRequestParameter
//
//  Created by moaible on 2018/04/14.
//

import Foundation

public struct RequestParameterArray: RequestParameter, ExpressibleByArrayLiteral {
    
    public typealias ArrayLiteralElement = RequestParameter
    
    fileprivate var _parameters: [RequestParameter] = []
    
    public init(arrayLiteral elements: RequestParameter...) {
        _parameters = elements
    }
    
    // MARK: - RequestParameter
    
    public func requestParameter() -> RequestParameter {
        return self
    }
}

extension RequestParameterArray: CustomStringConvertible {
    
    public var description: String {
        return _parameters.description
    }
}
