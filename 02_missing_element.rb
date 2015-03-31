# source: https://codility.com/programmers/lessons/1

# Find missing element in array.

# Assume:
#  all element of array a in [0..1,000,000]
#  all elements of array a are distinct
#  worst case time complexity is O(N)
#  worst case space complexity is O(1) (not counting arguments)

class MissingElement
  def solution(a)
    n = a.length + 1

    # we need to set initial value for inject to 0 for case when empty array is
    # passed as an argument
    actual_sum = a.inject(0, :+)
    expected_sum = n * (n + 1) / 2
    expected_sum - actual_sum
  end
end
