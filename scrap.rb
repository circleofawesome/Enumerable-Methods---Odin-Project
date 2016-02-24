module Enumerable
	def my_each_with_index
		ret_array=[]
		for i in 0..self.length do
			ret_array<<yield(i)
		end
		return ret_array
	end
	#works
end

arr=[1,2,3,4]

arr.my_each_with_index do |i|
	puts arr[i]
end