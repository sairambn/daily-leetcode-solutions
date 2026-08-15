# 3702. Longest Subsequence With Non-Zero Bitwise XOR

**Date:** 2026-08-15  
**Difficulty:** Medium  
**Tags:** Array, Bit Manipulation, Math

## Problem

You are given an integer array `nums`.

Return the length of the longest subsequence in `nums` whose bitwise XOR is non-zero. If no such subsequence exists, return 0.

### Examples

**Example 1:**
```
Input: nums = [1,2,3]
Output: 2
Explanation: One longest subsequence is [2, 3]. 2 XOR 3 = 1 (non-zero).
```

**Example 2:**
```
Input: nums = [2,3,4]
Output: 3
Explanation: Whole array 2 XOR 3 XOR 4 = 5 (non-zero).
```

## Approach

Compute the XOR of the entire array.

- If total XOR is already non-zero → answer is the full length `n`.
- If total XOR is zero:
  - If every element is 0 → every subsequence has XOR 0 → return 0.
  - Otherwise there is at least one non-zero number. Removing that number makes the new XOR equal to that number (non-zero). So answer is `n-1`.

This works because zeros do not change the XOR and the longest possible is either the whole array or the whole array minus one element.

**Time Complexity:** O(n)  
**Space Complexity:** O(1)

## Solutions

| Language | File |
|----------|------|
| Java | [Solution.java](./Solution.java) |
| Python | [Solution.py](./Solution.py) |
| C++ | [Solution.cpp](./Solution.cpp) |
| JavaScript | [Solution.js](./Solution.js) |
| TypeScript | [Solution.ts](./Solution.ts) |
| Go | [Solution.go](./Solution.go) |
| C# | [Solution.cs](./Solution.cs) |
| Kotlin | [Solution.kt](./Solution.kt) |
| Rust | [Solution.rs](./Solution.rs) |
| Swift | [Solution.swift](./Solution.swift) |
| PHP | [Solution.php](./Solution.php) |
| Ruby | [Solution.rb](./Solution.rb) |
