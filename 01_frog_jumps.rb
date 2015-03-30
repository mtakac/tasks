# source: https://codility.com/programmers/lessons/1

# Count minimal number of jumps required to get from posigion A to position B.

# Assume:
#  a, b, c in [1..1,000,000,000]
#  a <= b
#  worst case time complexity is O(1)
#  worst case space complexity is O(1)

class FrogJumps
  def solution(a, b, c)
    ((b - a) / c.to_f).ceil
  end
end
