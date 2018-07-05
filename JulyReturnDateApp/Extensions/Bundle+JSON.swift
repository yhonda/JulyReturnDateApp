//
//  Bundle+JSON.swift
//  JulyReturnDateApp
//
//  Created by Eiji Kushida on 2018/07/05.
//  Copyright © 2018年 Eiji Kushida. All rights reserved.
//

import Foundation

public extension Bundle {
    
    /// JSONデータ読み込み
    ///
    /// - Parameter fileName: ファイル名
    /// - Returns: JSONデータ
    class func loadJson(fileName: String) -> String? {
        if let path = Bundle.main.path(forResource: fileName, ofType: "json") {
            return try? String(contentsOfFile: path)
        }
        return ""
    }
}
