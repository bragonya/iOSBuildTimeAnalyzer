//
//  main.swift
//  iOSBuildTimeAnalyzer
//
//  Created by Brayan Yaquián on 5/05/25.
//

import Foundation

let input = FileHandle.standardInput
if let data = try? input.readToEnd(), let content = String(data: data, encoding: .utf8) {
    let lines = content.components(separatedBy: .newlines)
    print("Number of lines: \(lines.count)")

    for line in lines {
        if line.contains("CompileSwift") || line.contains("CompileC") || line.contains("CodeSign") {
            print("⏱️  \(line)")
        }
    }
} else {
    print("Something went wrong! ⚠️")
}

