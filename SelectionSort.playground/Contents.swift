//: A UIKit based Playground for presenting user interface
  
import UIKit

// Selection Sort

func run() {
    let list = [5, 3, 9, 1, 7]
    let result = selectionSort(list: list)
    print(result)
}

func selectionSort(list: [Int]) -> [Int] {
    var list = list
    for index in 0..<list.count-1 {
        for anotherIndex in index..<list.count {
            if list[anotherIndex] < list[index] {
                list.swapAt(anotherIndex, index)
                print(list)
            }
        }
    }
    return list
}


run()

