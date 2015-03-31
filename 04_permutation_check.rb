# source: https://codility.com/programmers/lessons/2

# Check if array is permutation

# Assume:
#  Array a.length in [1..100,000]
#  all elements of array a in [1..1,000,000,000]
#  worst case time complexity is O(N)
#  worst case space complexity is O(N) (not counting arguments)

class PermutationCheck
  def solution(a)
    n = a.length
    a.uniq!
    return 0 unless a.length == n
    sum = a.inject(:+)
    (sum == n * (n + 1) / 2) ? 1 : 0
  end
end
