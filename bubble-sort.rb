
def bubble_sort(array)
    i = 0
    while i < array.length-1
        if array[i] > array[i + 1]
            helper = array[i]
            array[i] = array[i + 1]
            array[i + 1] = helper
            i = 0
        else
            i += 1
        end
    end
    array
end

#print bubble_sort([4,3,78,2,0,2])
#print bubble_sort(['dhfc','dhfb','dhfa'])