//
//  Stack.swift
//  DataStructure
//
//  Created by Somin Park on 2023/05/31.
//

import Foundation

//var stack = [1,2,3,4,5]
//
//for i in 0..<stack.count {
//    print(stack[stack.count - i - 1])
//}

func printInReverse<T>(_ array: [T]) {
    var stack = Stack<T>()

    for value in array {
        stack.push(value)
    }
    
    while let value = stack.pop() {
        print(value)
    }
}

func checkBalanced(_ array: String) -> Bool {
    var stack = Stack<Character>()
    
    for i in array {
        if i == "(" {
            stack.push(i)
        }else if i == ")" {
            if stack.isEmpty {
                return false
            }else {
                stack.pop()
            }
        }
    }
    return stack.isEmpty
}


public struct Stack<Element> {
    private var storage: [Element] = []
    
    public init() {}
    
    public var isEmpty: Bool {
        return storage.isEmpty
    }
    
    public mutating func push(_ value: Element) {
        storage.append(value)
    }
    
    public mutating func pop() -> Element? {
        storage.popLast()
    }
}
//let example = "(hello world"
//var flag = true
//var stack = [Int]()
//for i in example {
//    if String(i) == "(" {
//        stack.append(1)
//    }else if String(i) == ")" {
//        if stack.isEmpty {
//            flag = false
//            break
//        }else {
//            stack.removeLast()
//        }
//    }
//}
//
//if stack.isEmpty {
//    flag = true
//}else {
//    flag = false
//}
//
//print(flag)
