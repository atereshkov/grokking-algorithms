import Foundation

func selectionSort<T: Comparable>(input: [T]) -> [T] {
    var inputCopy = input
    var array: [T] = []

    for _ in input {
        guard let smallestIndex = findSmallest(input: inputCopy) else { continue }
        array.append(inputCopy.remove(at: smallestIndex))
    }

    return array
}

func findSmallest<T: Comparable>(input: [T]) -> Int? {
    guard var smallestValue = input.first else { return nil }
    var smallestIndex = 0

    for i in 1..<input.count {
        if input[i] < smallestValue {
            smallestValue = input[i]
            smallestIndex = i
        }
    }

    return smallestIndex
}

let selection = selectionSort(input: [400, 150, 100, 600, 500, 300, 200])
Swift.print(selection)
