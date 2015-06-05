def bubble_sort_by(arr,&code)
	p arr
	while true
		count = 0
		for i in 1..arr.length-1
			if code.call(arr[i-1],arr[i]) < 0
				arr[i],arr[i-1] = arr[i-1], arr[i]
				p arr
				count += 1
			end
		end
		if count == 0
			break
		end
	end
	
end

bubble_sort_by(["holistic","hi","hot","hello","hey","how"]) do |left,right|
	right.length - left.length
end


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