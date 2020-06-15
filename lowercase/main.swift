//
//  main.swift
//  lowercase
//
//  Created by Facundo Menzella on 15/06/2020.
//  Copyright © 2020 facumenzella. All rights reserved.
//

import Foundation
import ArgumentParser

struct Lowercaser: ParsableCommand {
    static let configuration = CommandConfiguration(
        commandName: "lowercase",
        abstract: "A utility to convert text to lowercase",
        discussion: "",
        version: "1.0.0"
    )
    
    @Argument(parsing: .remaining,
              help: "Text to lowercase.")
    var content: [String]
    
    func run() throws {
        let toLowercaseText = content.joined(separator: " ")
        print(toLowercaseText.lowercased())
    }
}

Lowercaser.main()
