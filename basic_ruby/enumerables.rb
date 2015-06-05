module Enumerable
	def my_each
		return self unless block_given?
		for i in self
			yield(i)
		end
	end


	def my_each_with_index
		return self unless block_given?
		count = 0
		for i in self
			yield i,count
			count += 1
		end

	end

	def my_select
		op_arr = []
		return self unless block_given?
		self.my_each do |var|
			if yield(var)
				op_arr << var
			end
		end
		p op_arr
	end

	def my_any?
		op_val = true
		return self unless block_given?
		self.my_each do |var|
			if yield(var)
				op_val = true
			else
				return false
			end
		end
		return op_val
	end

	def my_none?
		op_val = true
		return self unless block_given?
		self.my_each do |var|
			if !yield(var)
				op_val = true
			else
				return false
			end
		end
		return op_val
	end

	def my_count(num=nil)
		count = 0
		for i in self
			if block_given?
				count += 1 if yield(i)
			elsif num!=nil
				count+=1 if i == num
			end
		end
		count
	end

	def my_map(&block)
		op_val = []
		return self unless block_given?
		my_each do |variable|
			op_val << block.call(variable)
		end
		p op_val
	end

	def my_inject(start=nil)
		if start.nil?
			op_val = self[0]
		else
			op_val = start
		end
		for i in 1..self.length-1
			op_val = yield op_val, self[i]
		end
		p op_val
	end

	def multiply_els  
		self.my_inject {|product,n| product * n}
	end
		
	



end

arr = [1,2,3,4,5,6,7,8,9,10]

p arr.my_each
p arr.my_each_with_index
arr.my_select { |var| var % 2 == 0 }
p arr.my_any? {|var| var % 2 == 0}
p arr.my_none? { |var| var % 11 == 0 }
p arr.my_count { |x| x%2 == 0 }
p arr.my_count(3)
arr.my_map {|var| var * 2	}
arr.my_inject { |product, n| product * n }
arr.my_inject { |product, n| product + n }
arr.multiply_els