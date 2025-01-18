import Foundation

class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        var ans: [Int: Int] = [:]
        for num in nums {
            if let cnt = ans[num] {
                return true
            } else {
                ans[num] = 1
            }
        }
        return false
    }
}
let sol = Solution()
print(sol.containsDuplicate([1,2,3,1]))
