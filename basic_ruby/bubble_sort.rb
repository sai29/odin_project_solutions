def bubble_sort arr
	while true
		count = 0
		for i in 1..arr.length-1
			if arr[i-1] > arr[i]
				arr[i-1],arr[i] = arr[i], arr[i-1]
				count += 1
			end
		end
		if count == 0
			break
		end		
	end
	p arr
end

bubble_sort([4,3,78,2,0,2])