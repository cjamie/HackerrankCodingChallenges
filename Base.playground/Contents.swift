//: Playground - noun: a place where people can play

import UIKit


// number of elements
//_ = readLine()!
//let n = Int(readLine()!)!

// read array and map the elements to integer
//let arr = readLine()!.components(separatedBy: " ").map{ Int($0)! }



//let arr = [10, 5, 20, 20, 4, 5, 2, 25, 1]


//n k
let nk = [6,3] //it must be divisible by k = 3
let k = nk[1]

//let arr = [1, 3, 2, 6, 1, 2]
let arr = [1, 3, 2, 6, 4, 5, 9]

//var buckets = Array(repeating: 0, count: k)
//arr.forEach{ buckets[$0%k] += 1 }
//print(buckets)  //this should be correct
//var counter = buckets[0] * (buckets[0]-1)/2 //this should be correct
//print("initial \(counter)")

//for i in stride(from: 1, to: k/2+1, by: 1){
//    if 2*i == k{
//        print("breaking with \(counter)")
//        break
//    }
////    print("complement \(complement) \(buckets[complement])")
////    print("compnents are now \(buckets[i]) \(buckets[complement])")
//    counter += buckets[i]*buckets[k-i]
////    print("counter is now \(counter)")
//}

//var i = 1 //index counter
//while 2*i != k, i<=k/2{
//    counter += buckets[i]*buckets[k-i]
//    i += 1
//}




//will never execute for odd numbers.
//if k%2 == 0 {                           //account for even number edge case
////    print("we are even")
//    counter += arr[k/2]*(arr[k/2]-1)/2  //same equation for bucket[0]
//}

//print(counter)
//print("counter \(counter)")


let a = [5, 11, 15, 0]
let b = 5

class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict = [Int:Int]()
        for i in stride(from: 0, to: nums.count, by: 1) {
            if let temp = dict[target - nums[i]], temp != i {
                return [temp,i]
            }
            dict[nums[i]] = i
        }
        return []
    }
}


Solution().twoSum(a, b)


