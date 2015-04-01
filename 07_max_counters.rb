# source: https://codility.com/programmers/lessons/2

# Find minimal positive integer in array

# Assume:
#  n & m in [1..100,000]
#  all elements of array a in [1..n + 1]
#  worst case time complexity is O(N + M)
#  worst case space complexity is O(N) (not counting arguments)

class MaxCounters
  def solution(n, a)
    counters = Array.new(n, 0)
    max_value = 0
    last_maximized = 0

    a.each do |e|
      if e <= n
        counter = counters[e - 1]
        counter = last_maximized if last_maximized > counter
        counters[e - 1] = counter + 1

        max_value = counters[e - 1] if counters[e - 1] > max_value
      end

      if e == n + 1
        last_maximized = max_value
      end
    end

    counters.map { |c| c < last_maximized ? last_maximized : c }
  end
end
