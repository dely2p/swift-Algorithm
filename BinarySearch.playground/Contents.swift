//: Playground - noun: a place where people can play

import UIKit

// Binary Search

func run() {
    let list = [1, 3, 5, 7, 9]
    let item = 7
    let result = binarySearch(list: list, item: item)
    print(result)
}

func binarySearch(list: [Int], item: Int) -> Int {
    var low = 0
    var high = list.count-1
    while low < high {
        let middle = (low+high)/2
        let guess = list[middle]
        if guess == item {
            return guess
        }else if guess > item {
            high = middle - 1
        }else {
            low = middle + 1
        }
    }
    return 0
}

run()
