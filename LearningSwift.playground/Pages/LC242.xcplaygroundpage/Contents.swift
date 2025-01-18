import Foundation

class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        var sArr = Array(s)
        var tArr = Array(t)
        sArr.sort()
        tArr.sort()
        return sArr.elementsEqual(tArr)
    }
}
let sol = Solution()
print(sol.isAnagram("rat","naagram"))
