# source: https://codility.com/programmers/lessons/1

# Find minimal difference between two parts of array

# Assume:
#  Array a.length in [2..100,000]
#  all elements in array in [-1000..1000]
#  worst case time complexity is O(N)
#  worst case space complexity is O(N) (not counting arguments)

class TapeEquilibrium
  def solution(a)
    left = a.shift
    right = a.inject(:+)
    min = nil
    a.each do |e|
      abs = (left - right).abs
      min = (min.nil? || abs < min) ? abs : min
      left += e
      right -= e
    end
    min
  end
end
