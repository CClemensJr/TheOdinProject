#Build a method #bubble_sort that takes an array and
#returns a sorted array. It must use the bubble sort
#methodology (using #sort would be pretty pointless,
#wouldn't it?).

def bubble_sort arr
  (0..arr.length - 1).each do |i|
    puts "i = #{arr[i]} i + 1 = #{arr[i + 1]}"
    if arr[i] > arr[i + 1]
      arr[i], arr[i + 1] = arr[i + 1], arr[i]

      puts "Now sorted i = #{arr[i]} i + 1 = #{arr[i + 1]} "
    end
  end
end

bubble_sort([3, 2, 9, 6, 5])
