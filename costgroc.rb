def costgroc(data)
	data.each do |item,price|
		if price > 2
			puts "#{item} is more than $2"
		else
			puts "#{item} is less than $2"
		end
	end
end