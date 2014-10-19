#  ============
#  = Counting =
#  ============

input = [4, 6, 2, 1, 2, 9, 5, 2]
# input = [4, 6, 2, 1, 3, 2,5]

# Step 1 - Build a counting array
count_arr = Array.new
input.each do |element|
  count_arr[element] = count_arr[element] ? count_arr[element] + 1 : 1
end

# Step 2 - Cumulative Sum of count_arr
2.upto(count_arr.length - 1) do |indx|
  count_arr[indx] = (count_arr[indx] || 0) + count_arr[indx - 1]
end

# Step 3 - Build output array
output = []
input.each do |element|
  indx = count_arr[element]
  output[indx] = element
  count_arr[element] -=1
end

puts "\n"
p output
# [1, 2, 2, 2, 4, 5, 6, 9]
