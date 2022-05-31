#!/usr/bin/env swift
import Foundation

let info = ProcessInfo.processInfo

/// chmod +x main.swift

//print("Hello, world!")

let argumentss = CommandLine.arguments
print(argumentss)

///// same as CommandLine.arguments
//print("ProcessInfo Arguments")
//print(info.arguments)
//
//print("Environment")
///// print available environment variables
//print(info.environment)


/// the very first element is the current script
let script = CommandLine.arguments[0]
//print("Script:", script)

/// you can get the input arguments by dropping the first element
let inputArgs = CommandLine.arguments.dropFirst()
print("Number of arguments:", inputArgs.count)

print("Arguments:")
for arg in inputArgs {
    print("-", arg)
}


/// print using custom separator & terminator
//print("This", "is", "fun", separator: "-", terminator: "!\n")

var todoItems = [String]()

/// reading lines from the standard input

todoItems.append(input)
print(todoItems)

