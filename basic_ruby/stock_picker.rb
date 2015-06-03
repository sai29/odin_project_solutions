def stock_picker arr
	max = 0
	start_ind = 0
	end_ind = 0
	for i in 0..arr.length-1
		for j in i+1..arr.length-1
			if arr[j]-arr[i] > max
				max = arr[j] - arr[i]
				start_ind,end_ind = i,j
			end
		end
	end
	op_arr ||= [start_ind,end_ind]
	p op_arr
end

stock_picker([17,3,6,9,15,8,6,1,10])