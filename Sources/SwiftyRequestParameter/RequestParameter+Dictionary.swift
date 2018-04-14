//
//  RequestParameter+Dictionary.swift
//  SwiftyRequestParameter
//
//  Created by moaible on 2018/04/14.
//

import Foundation

public struct RequestParameterDictionary: RequestParameter, ExpressibleByDictionaryLiteral {
    
    public typealias Key = String
    
    public typealias Value = RequestParameter
    
    fileprivate let _dictionary: [Key : Value]
    
    public init(dictionaryLiteral elements: (String, RequestParameter)...) {
        self._dictionary = elements.reduce(into: [Key : Value](), { (info, element) in
            info[element.0] = element.1
        })
    }
    
    // MARK: - RequestParameter
    
    public func requestParameter() -> RequestParameter {
        return self
    }
}

extension RequestParameterDictionary: CustomStringConvertible {
    
    public var description: String {
        return _dictionary.description
    }
}
