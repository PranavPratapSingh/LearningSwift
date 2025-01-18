import Foundation

class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        var prodCumLeft: [Int] = []
        for num in nums {
            if prodCumLeft.count == 0{
                prodCumLeft.append(num)
            }else{
                prodCumLeft.append(num*prodCumLeft.last!)
            }
        }
//        print(prodCumLeft)
        var prodCumRight: [Int] = []
        for num in nums.reversed() {
//            print(num)
            if prodCumRight.count == 0{
                prodCumRight.append(num)
            }else{
                prodCumRight.append(num*prodCumRight.last!)
            }
        }
        prodCumRight = Array(prodCumRight.reversed())
        var ans: [Int] = []
        for ix in 0...nums.count-1 {
            if ix == 0{
                ans.append(prodCumRight[ix+1])
            }else if ix == nums.count-1{
                ans.append(prodCumLeft[ix-1])
            }else{
                ans.append(prodCumLeft[ix-1]*prodCumRight[ix+1])
            }
        }
        return ans
    }
}
let solution = Solution()
print(solution.productExceptSelf([1,2,3,4]))
