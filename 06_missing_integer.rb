# source: https://codility.com/programmers/lessons/2

# Find minimal positive integer in array

# Assume:
#  n in [1..100,000]
#  all elements of array a in [−2,147,483,648..2,147,483,647]
#  worst case time complexity is O(N)
#  worst case space complexity is O(N) (not counting arguments)

class MissingInteger
  def solution(a)
    positive_integers = a.reject { |i| i < 1 }
    n = positive_integers.length
    map = Array.new(n + 1, false)
    positive_integers.each do |int|
      map[int -1] = true if int <= n
    end
    map.each_with_index do |bool, i|
      return i + 1 unless bool
    end
  end
end
