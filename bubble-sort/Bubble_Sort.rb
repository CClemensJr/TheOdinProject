#Build a method #bubble_sort that takes an array and
#returns a sorted array. It must use the bubble sort
#methodology (using #sort would be pretty pointless,
#wouldn't it?).

def bubble_sort arr
  max_passes = arr.size - 1
  pass = 1

  while pass <= max_passes do
    (0...max_passes).each do |i|
      if arr[i] > arr[i + 1]
        arr[i], arr[i + 1] = arr[i + 1], arr[i]

        pass += 1
      end
    end
  end

  p arr
end

bubble_sort([3, 2, 9, 6, 5])
