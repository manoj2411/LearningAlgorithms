unordered_list = [3, 7, 10, 8, 2, 3.0, 4, 1]
merge_sort unordered_list

def merge_sort(arr)
  # p arr
  return arr.first if arr.size == 1 # means its a list sorted list having last sorted list in it.
  arr = arr.map {|e| [e]} unless arr.first.is_a? Array # means its the initial list of elements, we have to break it.

  i = 0
  new_list = []
  while i < arr.length
    list1 = arr[i]
    list2 = arr[i+1]
    if list2.nil?
      new_list.push list1
    else
      new_list.push merge_2_sorted_lists list1, list2
    end
    i += 2
  end
  merge_sort new_list
end

def merge_2_sorted_lists( list1, list2)
  new_list = []
  indxl2 = 0
  list1.each_with_index do |item, indxl1|
    new_list.push( item) and next if list2[indxl2].nil?
    if item <= list2[indxl2]
      new_list.push item
    else
      new_list.push list2[indxl2]
      indxl2 += 1
      until list2[indxl2].nil? or list2[indxl2] >= item
        new_list.push list2[indxl2]
        indxl2 += 1
      end # End of UNTIL
      new_list.push item
    end # End of IF ELSE
  end # End of EACH
  new_list += list2[indxl2..list2.size]
  p new_list
  new_list
end
