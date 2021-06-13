

# Time complexity: o(n)
# Space Complexity: o(n)
def newman_conway(num)
  raise ArgumentError if num <= 0
  return "1" if num == 1

  result = [0, 1, 1]
  i = 3

  while i <= num
    result << result[result[i - 1]] + result[i - result[i - 1]]
    i += 1
  end

  result[1..-1].join(' ')
end