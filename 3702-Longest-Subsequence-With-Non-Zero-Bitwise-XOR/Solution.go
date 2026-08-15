func longestSubsequence(nums []int) int {
    n := len(nums)
    xor := 0
    hasNonZero := false

    for _, num := range nums {
        xor ^= num
        if num != 0 {
            hasNonZero = true
        }
    }

    if xor != 0 {
        return n
    }
    if hasNonZero {
        return n - 1
    }
    return 0
}
