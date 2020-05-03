def find_min_in_nested_arrays(src)
  # src will be an array of arrays of integers
  # Produce a new Array that contains the smallest number of each of the nested arrays
  results = []
  count = 0
  while count < src.length do
    smallest = src[count][0]
    inner_count = 0
    while inner_count < src[count].length do
      if src[count][inner_count] < smallest
        smallest = src[count][inner_count]
      end
      inner_count += 1
    end
    results << smallest
    count += 1
  end
  results
end
