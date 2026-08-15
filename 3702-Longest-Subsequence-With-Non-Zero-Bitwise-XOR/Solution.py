class Solution:
    def longestSubsequence(self, nums: list[int]) -> int:
        n = len(nums)
        xor = 0
        has_non_zero = False

        for num in nums:
            xor ^= num
            if num != 0:
                has_non_zero = True

        if xor != 0:
            return n
        return n - 1 if has_non_zero else 0
