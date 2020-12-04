def stock_picker(array)
    i = k = 0
    profit_array = []
    pos_profit_i = []
    pos_profit_k = []
    until (i == array.length - 1) do
        until (k == array.length - 1) do
            if (k > i) && (k <= array.length - 1)
                profit = array[k] - array[i]
                profit_array.append(profit)
                pos_profit_i.append(i)
                pos_profit_k.append(k)
            
            end

            k += 1

        end

    i += 1
    k = 0

    end

    index_max_profit = profit_array.index(profit_array.max())
    
    return [pos_profit_i[index_max_profit], pos_profit_k[index_max_profit]] #returning position of max profit

end

p stock_picker([17,3,6,9,15,8,6,1,10])
