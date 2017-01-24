#Build a method #bubble_sort that takes an array and
#returns a sorted array. It must use the bubble sort
#methodology (using #sort would be pretty pointless,
#wouldn't it?).

def bubble_sort arr
  arr.each do
    (0...arr.length).each do |i|
      if arr[i + 1] == nil
        break
      elsif arr[i] > arr[i + 1]
        puts "#{arr[i]} is bigger than #{arr[i + 1]} and sorting is needed\n"

        arr[i], arr[i + 1] = arr[i + 1], arr[i]

        puts "#{arr[i]} is now less than #{arr[i + 1]}. Sorting completed.\n"
      else
        puts "#{arr[i]} is less than #{arr[i + 1]} and sorting is not needed\n"
      end
    end
  end
  p arr
end

bubble_sort([3, 2, 9, 6, 5])
