def bubble_sort(unsorted_list)
    length = unsorted_list.length
    (0..length-2).each do |pivot|
        (0..(length-pivot-2)).each do |item|
            if unsorted_list[item] > unsorted_list[item+1]
            unsorted_list[item+1], unsorted_list[item] = unsorted_list[item], unsorted_list[item+1]
            end
        end
    end
    puts "Sorted List: #{unsorted_list}"
end

unsorted_list = [4,3,78,2,0,2]
bubble_sort(unsorted_list)