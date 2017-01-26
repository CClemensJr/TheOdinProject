# Now create a similar method called #bubble_sort_by which sorts an array
# but accepts a block. The block should take two arguments which represent
# the two elements currently being compared. Expect that the block's return
# will be similar to the spaceship operator you learned about before -- if
# the result of the block is negative, the element on the left is "smaller"
# than the element on the right. 0 means they are equal. A positive result
# means the left element is greater. Use this to sort your array.

def bubble_sort_by arr
  max_passes = arr.size - 1
  pass = 1

  #bubble_sort_array = (0...max_passes).each do |i|
  #  if arr[i] > arr[i + 1]
  #    arr[i], arr[i + 1] = arr[i + 1], arr[i]
  #    pass += 1
  #  end
  #end

  while pass <= max_passes do
  #  if sort_style < 0
  #    puts "Sort_Style = #{sort_style} Ascending"
  #    bubble_sort_array
  #  elsif sort_style > 0
  #    puts "Sort_Style = #{sort_style} Descending"
  #    bubble_sort_array.reverse!
  #  end
    (0...max_passes).each do |i|
      if yield(arr[i], arr[i + 1]) > 0
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        pass += 1
      elsif yield(arr[i], arr[i + 1]) < 0 && arr[i + 2] != nil
        arr[i + 1], arr[i + 2] = arr[i + 2], arr[i + 1]
        pass += 1
      end
    end
  end

  p arr
end

bubble_sort_by(["hi", "hello", "hey"]) do |left, right|
  left.length - right.length
end

#bubble_sort_by([1, 7, 3]) do |left, right|
#  left.length - right.length
#end
