def stock_picker(days_list)
    highest_profit = 0
    best_pick = 0
    profit_list = []

    for buy in 0...days_list.size-1
        for sell in 1...days_list.size
            if buy == sell || buy > sell
                next
            else
                profit = days_list[sell] - days_list[buy]
                if profit > 0 ? profit_list << [buy, sell, profit] : next
                end
            end
        end
    end

    profit_list.each do |stock_data|
        if stock_data[2] > highest_profit
            highest_profit = stock_data[2]
            best_pick = [stock_data[0], stock_data[1]]
        end
    end
    puts "Best Pick: #{best_pick} | Profit: $#{highest_profit}"
end

day_list = [17,3,6,9,15,8,6,1,10]
stock_picker(day_list)

# => Best Pick: [1, 4] | Profit: $12