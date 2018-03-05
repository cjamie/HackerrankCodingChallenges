import Foundation
// Enter your code here. Read input from STDIN. Print output to STDOUT
let a = Int(readLine()!)!

var dict:[String:String] = [:]

for _ in stride(from:0, to:a, by:1){
    let arr:[String] = readLine()!.components(separatedBy: " ").map{ String($0) }
    dict[arr[0]] = arr[1]
}

while let str = readLine(){
    if let temp = dict[str]{
        print("\(str)=\(temp)")
    }else {
        print("Not found")
    }
}
