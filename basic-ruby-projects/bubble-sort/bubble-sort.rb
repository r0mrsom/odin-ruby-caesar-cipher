require 'pry-byebug'


def bubble_sort(array)

  #binding.pry
  n = array.length

  for a in 0 ... (n - 1) do
    for b in 0 ... (n - a - 1) do
      if array[b] > array[b + 1]
        array[b], array[b + 1] = array[b + 1], array[b]
      end
    end
    
  end
  p array

end

bubble_sort([4,3,78,2,0,2])