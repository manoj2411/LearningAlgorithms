#  =============
#  = Insertion =
#  =============

# Insert each value to its right place. Strat iterating from left to right and place values @ proper place.
# In best case scenario you don't have to seitch any value and complexity is O(n)
# In avg & wrost case scenario complexity is O(n^2)


# arr = [5, 47, 12, 100, 33, 21]
arr = [5, 12, 21, 33, 47, 100]
arr = arr.reverse

def sort(arr)
  (0).upto(arr.length - 2) do |indx|
    if arr[indx] > arr[indx + 1]
      (indx + 1).downto(1) do |iindx|
        if arr[iindx] < arr[iindx - 1]
          tmp            = arr[iindx]
          arr[iindx]     = arr[iindx - 1]
          arr[iindx - 1] = tmp
        else
          break
        end
      end
      p arr
   end
  end
end


sort(arr)
