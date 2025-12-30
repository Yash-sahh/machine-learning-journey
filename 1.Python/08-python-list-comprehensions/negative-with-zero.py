#given list off numbers replace negative numbers with zero
nums = [-2,-3,3,4,-1,7]
nums = [0 if val<0 else val for val in nums]
print(nums)