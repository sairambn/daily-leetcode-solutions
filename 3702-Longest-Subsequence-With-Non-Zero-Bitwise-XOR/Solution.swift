class Solution {
    func longestSubsequence(_ nums: [Int]) -> Int {
        let n = nums.count
        var xor = 0
        var hasNonZero = false

        for num in nums {
            xor ^= num
            if num != 0 {
                hasNonZero = true
            }
        }

        if xor != 0 {
            return n
        }
        return hasNonZero ? n - 1 : 0
    }
}
