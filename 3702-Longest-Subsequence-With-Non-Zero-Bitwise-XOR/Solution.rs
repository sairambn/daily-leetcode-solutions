impl Solution {
    pub fn longest_subsequence(nums: Vec<i32>) -> i32 {
        let n = nums.len() as i32;
        let mut xor = 0;
        let mut has_non_zero = false;

        for num in nums {
            xor ^= num;
            if num != 0 {
                has_non_zero = true;
            }
        }

        if xor != 0 {
            n
        } else if has_non_zero {
            n - 1
        } else {
            0
        }
    }
}
