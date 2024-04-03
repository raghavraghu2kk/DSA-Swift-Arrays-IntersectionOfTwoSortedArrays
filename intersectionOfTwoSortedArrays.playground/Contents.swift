import UIKit

var greeting = "Hello, playground"

func interSectionOfTwoSortedArrays(_ arr1 : [Int], _ arr2 : [Int]) -> [Int] {
    var a1 = arr1
    var a2 = arr2
    a1.sort()
    a2.sort()
    var n1 = a1.count
    var n2 = a2.count
    var i = 0
    var j = 0
    var intersection : [Int] = []
    while(i < n1 && j < n2){
        if(a1[i] < a2[j]){
            i += 1
        } else if(a2[j] < a1[i]){
            j += 1
        } else {
            if(intersection.count == 0 || intersection.last != a1[i]){
                intersection.append(a1[i])
            }
            i += 1
            j += 1
        }
    }
    return intersection
}

print(interSectionOfTwoSortedArrays([1,2,4,5,6,3], [2,3,6,2,45,6]))
