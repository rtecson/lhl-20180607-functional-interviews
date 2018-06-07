

var myGlobal = 100

func myFunction(parameter: Int, secondParameter: Int) -> Int {
    return parameter + secondParameter
}

let result = myFunction(parameter: 20, secondParameter: myGlobal)

// Imperative programming
func squareAllElements2(array: [Int]) -> [Int] {
    var newArray = [Int]()
    for i in 0..<array.count {
        newArray.append(array[i] * array[i])
    }
    return newArray
}

let resultArray2 = squareAllElements2(array: [1, 2, 3])

// [1, 2, 3] -> [1, 4, 9]
func squareAllElements(array: [Int]) -> [Int] {
    return array.map {
        $0 * $0
    }
}

let resultArray = squareAllElements(array: [1, 2, 3])

// Example of a function that takes a function as a variable
func doArithmetic(array: [Int], theFunc: ((Int) -> Int)) -> [Int] {
    return array.map {
        theFunc($0)
    }
}

// Example of calling above function with a closure (an anonymous or un-named function)
var resultArray3 = doArithmetic(array: [1, 2, 3]) { (x) -> Int in
    return x + 1
}

// Example of calling above function with a different closure
resultArray3 = doArithmetic(array: [1, 2, 3], theFunc: { (x) -> Int in
    return x - 1
})

// Swift supports higher order functions, which is basically treating a function as a variable
// In this case the variable name is decrementInteger
let decrementInteger = { (x) -> Int in
    return x - 1
}

// We can use the above variable as a parameter in a function call
resultArray3 = doArithmetic(array: [1, 2, 3], theFunc: decrementInteger)



