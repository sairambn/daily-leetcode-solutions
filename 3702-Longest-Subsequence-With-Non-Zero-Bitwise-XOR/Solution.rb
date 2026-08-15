# @param {Integer[]} nums
# @return {Integer}
def longest_subsequence(nums)
    n = nums.length
    xor = 0
    has_non_zero = false

    nums.each do |num|
        xor ^= num
        has_non_zero = true if num != 0
    end

    return n if xor != 0
    has_non_zero ? n - 1 : 0
end
