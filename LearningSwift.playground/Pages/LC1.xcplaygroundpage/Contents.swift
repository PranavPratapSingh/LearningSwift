import Foundation

class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var ans: [Int: Int] = [:]
        for i in 0...nums.count {
            if let index = ans[target - nums[i]] {
                return [index, i]
            }
            ans[nums[i]] = i
        }
        return []
    }
}

let solution = Solution()
print(solution.twoSum([3,3], 6))
