function longestSubsequence(nums: number[]): number {
    const n = nums.length;
    let xor = 0;
    let hasNonZero = false;

    for (const num of nums) {
        xor ^= num;
        if (num !== 0) {
            hasNonZero = true;
        }
    }

    if (xor !== 0) {
        return n;
    }
    return hasNonZero ? n - 1 : 0;
}
