class Solution {

    /**
     * @param Integer[] $nums
     * @return Integer
     */
    function longestSubsequence($nums) {
        $n = count($nums);
        $xor = 0;
        $hasNonZero = false;

        foreach ($nums as $num) {
            $xor ^= $num;
            if ($num != 0) {
                $hasNonZero = true;
            }
        }

        if ($xor != 0) {
            return $n;
        }
        return $hasNonZero ? $n - 1 : 0;
    }
}
