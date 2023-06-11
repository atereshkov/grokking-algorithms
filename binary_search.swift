import Foundation

func binarySearch<T: Comparable>(input: [T], item: T) -> Int? {
    var low = 0
    var high = input.count - 1

    while low <= high {
        let mid = (low + high) / 2
        let guess = input[mid]
        if item == guess {
            return mid
        } else if guess > item {
            high = mid - 1
        } else {
            low = mid + 1
        }
    }

    return nil
}

let binary = binarySearch(input: [1, 2, 3, 4, 5], item: 4)
Swift.print("[Binary] Index of 4 in array: \(String(describing: binary))")
