def my_min(arr) #O(n)
  min = arr[0]
  (0...arr.length).each do |i|
    min = arr[i] if arr[i] <= min
  end
  min
end

list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
# p my_min(list)  # =>  -5

# def largest_contiguous_subsum(arr) #O(n^2)
#   subarrays = []
#   (0...arr.length).each do |startidx|
#     (startidx...arr.length).each do |endidx|
#       subarrays << arr[startidx..endidx]
#     end
#   end
#   sums = subarrays.map do |sub|
#     sub.sum
#   end 
#   sums.max
# end


 def largest_contiguous_subsum(arr) # O(n) version
    largest = arr[0]
    current_sum = arr[0]
    i = 0
    j = 1
    while j < arr.length 
      current_sum = arr[i] if arr[i] > current_sum
      largest = current_sum if current_sum > largest
      current_sum += arr[j]
      largest = current_sum if current_sum > largest
      j += 1
      i += 1
    end
    largest

 end

     list = [-5,-4,-1,-7,-8]
p largest_contiguous_subsum(list) # => 8

    # possible sub-sums
    [5]           # => 5
    [5, 3]        # => 8 --> we want this one
    [5, 3, -7]    # => 1
    [3]           # => 3
    [3, -7]       # => -4
    [-7]          # => -7