func selectionSort(_ array: inout [Int]) {
    for stand in 0..<(array.count - 1) {
        var minIndex = stand
        for index in (stand + 1)..<array.count {
            if array[index] < array[minIndex] {
                minIndex = index
            }
        }
        array.swapAt(stand, minIndex)
    }
}
