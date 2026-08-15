public class Solution {
    public int LongestSubsequence(int[] nums) {
        int n = nums.Length;
        int xor = 0;
        bool hasNonZero = false;

        foreach (int num in nums) {
            xor ^= num;
            if (num != 0) {
                hasNonZero = true;
            }
        }

        if (xor != 0) {
            return n;
        }
        return hasNonZero ? n - 1 : 0;
    }
}
