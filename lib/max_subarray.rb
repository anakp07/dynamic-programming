
# Time Complexity: ?
# Space Complexity: ?
def max_sub_array(nums)
    return 0 if nums == nil

    current_max = nums[0]
    max_ending_here = 0

    nums.each do |n|
      max_ending_here = [n, max_ending_here + n].max
      current_max = [current_max, max_ending_here].max
    end
    current_max

end
