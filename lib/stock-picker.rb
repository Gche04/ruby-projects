
def stock_picker(prices)
    picks = []
    gain = 0

    for a in 1..prices.length do
        for i in 1..prices.length do
            low = prices.index(prices.min(i).last)
            high = prices.index(prices.max(a).last)
            checked = prices.max(a).last - prices.min(i).last

            if low < high && checked > gain
                gain = checked
                picks[0] = low
                picks[1] = high
            end
        end
    end
    picks
end

#print stock_picker([17,3,6,9,15,8,6,1,10])
#print stock_picker([17,3,2,9,15,100,6,1,10])
#print stock_picker([7,9,15,8,6,1,2,3,10])
#print stock_picker([7,9,8,6,1,2,3,10])
#print stock_picker([17,3,2,9,15,100,1,6,1,2,10])
#print stock_picker([5,10,1,2,6])
#print stock_picker([5,10,1,2,5])