//: Playground - noun: a place where people can play

import UIKit

// Recursive Function Sort

func run() {
    let list = [5, 3, 9, 1, 7]
    print(list)
    let result = recursiveSort(list: list, index: 0)
    print(result)
}

func recursiveSort(list: [Int], index: Int) -> [Int] {
    let index = index
    var list = list
    if index > list.count-1 {
        return list
    }else {
        for itemIndex in index..<list.count {
            if list[index] > list[itemIndex] {
                list.swapAt(index, itemIndex)
            }
        }
        list = recursiveSort(list: list, index: index+1)
    }
    return list
}

run()
