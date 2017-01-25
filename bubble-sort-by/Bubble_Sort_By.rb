# Now create a similar method called #bubble_sort_by which sorts an array
# but accepts a block. The block should take two arguments which represent
# the two elements currently being compared. Expect that the block's return
# will be similar to the spaceship operator you learned about before -- if
# the result of the block is negative, the element on the left is "smaller"
# than the element on the right. 0 means they are equal. A positive result
# means the left element is greater. Use this to sort your array.

def bubble_sort_by arr
  puts "Array to be sorted."
end

bubble_sort_by(["hi", "hello", "hey"]) { |left, right| left.length - right.length }
