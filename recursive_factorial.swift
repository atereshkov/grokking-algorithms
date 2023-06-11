import Foundation

func calculateFactorial(value: Int) -> Int {
    if value == 1 {
        return 1
    }
    return value * calculateFactorial(value: value - 1)
}

Swift.print(calculateFactorial(value: 5))
