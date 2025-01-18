import Foundation

class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        var freq: [Int: Int] = [:]
        for num in nums {
            if let cnt = freq[num] {
                freq[num] = cnt+1
            } else {
                freq[num] = 1
            }
        }
        let sortedArray = freq.sorted { $0.value > $1.value }
        //        let sortedDict = Dictionary(uniqueKeysWithValues: sortedArray)
        //        print(sortedArray)
        var ans = [Int]()
        for ix in 0...k-1 {
            if ans.count == k {
                break
            }
            ans.append(sortedArray[ix].key)
        }
        return ans
    }
}
let solution = Solution()
print(solution.topKFrequent([1,2], 2))
