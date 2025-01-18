import Foundation

class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        var sArr = s.map { String($0) }
        var tArr = t.map { String($0) }
        sArr.sort()
        tArr.sort()
        return sArr.elementsEqual(tArr)
    }
}
let sol = Solution()
print(sol.isAnagram("anagram","rat"))
