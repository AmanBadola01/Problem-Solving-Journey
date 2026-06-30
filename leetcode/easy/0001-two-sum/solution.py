class Solution:
    def twoSum(self, nums: List[int], target: int) -> List[int]:
        result = []
        start = 1
        for i in range(len(nums)-1):
            if nums[start] + nums[i] == target:
                result.append(start)
                result.append(i)

        return result