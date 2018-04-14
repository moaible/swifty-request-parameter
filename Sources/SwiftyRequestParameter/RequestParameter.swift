//
//  RequestParameter.swift
//  SwiftyRequestParameter
//
//  Created by moaible on 2018/04/14.
//

import Foundation

public protocol RequestParameter {
    
    func requestParameter() -> RequestParameter
}

extension NSNull: RequestParameter {
    
    public func requestParameter() -> RequestParameter {
        return self
    }
}

extension Optional: RequestParameter {
    
    public func requestParameter() -> RequestParameter {
        switch self {
        case .some(let value):
            guard let value =  value as? RequestParameter else {
                return NSNull().requestParameter()
            }
            return value.requestParameter()
        case .none:
            return NSNull().requestParameter()
        }
    }
}

extension Array: RequestParameter where Element: RequestParameter {
    
    public func requestParameter() -> RequestParameter {
        return self
    }
}

extension Dictionary: RequestParameter where Key == String, Value == RequestParameter {
    
    public func requestParameter() -> RequestParameter {
        return self
    }
}
