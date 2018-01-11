//
//  Results.swift
//  Perfect-App-TemplatePackageDescription
//
//  Created by 涂育旺 on 2018/1/11.
//

import PerfectLib

typealias dictionary = (Dictionary<String, Any>)
fileprivate let dataKey = "data"
fileprivate let codeKey = "code"
fileprivate let msgKey  = "msg"

struct Results {

    var data: dictionary?
    var code: String
    var msg : String
    
    public var result: dictionary? {
        
        var result: dictionary = [:]
    
        result.updateValue(data ?? [], forKey: dataKey)
        result.updateValue(code, forKey: codeKey)
        result.updateValue(msg, forKey: msgKey)
        
        return result
    }
}

extension Results: JSONConvertible {
    func jsonEncodedString() throws -> String {
        
    }
    
    
}
