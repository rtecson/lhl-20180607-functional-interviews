//: Playground - noun: a place where people can play

import Foundation

// How do you check if two strings are anagrams of each other?
//
// Spaces and punctuation don't matter
// i.e. "race car" is an anagram of "racecar"
//

// 1. Given two strings, stringA and stringB
// 2. Remove all spaces and punctuation from stringA and stringB
// 3. Check if both strings are equal in length
// 4a. Check if reverse of stringA is equal to stringB
//
// 4b. Check if first character of stringA is equal to last character of stringB, then work your way inwards

let stringA = "race"
let stringB = " scar"

func compareAnagrams(stringA: String, stringB: String) -> Bool {
    let trimmedString2A = stringA.components(separatedBy: .whitespaces).joined()//.replacingOccurrences( of:"[^0-9]", with: "", options: .regularExpression)
    let trimmedString2B = stringB.components(separatedBy: .whitespaces).joined()//.replacingOccurrences( of:"[^0-9]", with: "", options: .regularExpression)
    print("trimmedString2A: \(trimmedString2A), trimmedStringB: \(trimmedString2B)")
    guard trimmedString2A.count == trimmedString2B.count else {
        return false
    }
    return trimmedString2B == String(trimmedString2A.reversed())
}

func compareAnagrams2(stringA: String, stringB: String) -> Bool {
    let trimmedString2A = stringA.components(separatedBy: .whitespaces).joined()//.replacingOccurrences( of:"[^0-9]", with: "", options: .regularExpression)
    let trimmedString2B = stringB.components(separatedBy: .whitespaces).joined()//.replacingOccurrences( of:"[^0-9]", with: "", options: .regularExpression)
    print("trimmedString2A: \(trimmedString2A), trimmedStringB: \(trimmedString2B)")
    guard trimmedString2A.count == trimmedString2B.count else {
        return false
    }
    for index in 0..<trimmedString2A.count {
        print("Comparing \(trimmedString2A[trimmedString2A.index(trimmedString2A.startIndex, offsetBy: index)])")
        print("with \(trimmedString2B[trimmedString2B.index(trimmedString2B.endIndex, offsetBy: -1 - index)])")
        if trimmedString2A[trimmedString2A.index(trimmedString2A.startIndex, offsetBy: index)] != trimmedString2B[trimmedString2B.index(trimmedString2B.endIndex, offsetBy: -1 - index)] {
            return false
        }
    }
    return true
}


let result = compareAnagrams2(stringA: stringA, stringB: stringB)




