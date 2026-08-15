class Solution {
    fun longestSubsequence(nums: IntArray): Int {
        val n = nums.size
        var xor = 0
        var hasNonZero = false

        for (num in nums) {
            xor = xor xor num
            if (num != 0) {
                hasNonZero = true
            }
        }

        return if (xor != 0) n else if (hasNonZero) n - 1 else 0
    }
}
