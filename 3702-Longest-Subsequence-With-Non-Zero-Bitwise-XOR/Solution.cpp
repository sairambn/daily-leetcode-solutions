class Solution {
public:
    int longestSubsequence(vector<int>& nums) {
        int n = nums.size();
        int xorVal = 0;
        bool hasNonZero = false;

        for (int num : nums) {
            xorVal ^= num;
            if (num != 0) {
                hasNonZero = true;
            }
        }

        if (xorVal != 0) {
            return n;
        }
        return hasNonZero ? n - 1 : 0;
    }
};
