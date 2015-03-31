# source: https://codility.com/programmers/lessons/2

# Help the frog jump accross the river :)

# Assume:
#  n & x in [1..100,000]
#  all elements of array a in [1..x]
#  worst case time complexity is O(N)
#  worst case space complexity is O(X) (not counting arguments)

class FrogRiverOne
  def solution(x, a)
    path = {}
    a.each_with_index do |e, i|
      path[e] = true unless e > x
      return i if path.size == x
    end
    -1
  end
end
