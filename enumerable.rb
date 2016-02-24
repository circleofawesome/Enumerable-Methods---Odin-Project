module Enumerable
	class::Array

		def my_each
			len=self.length
			ret_array=[]
			num=0
			len.times do
				ret_array<<yield(self[num])
				num=num+1
			end
			return ret_array
		end

	end
end

arr=[1,2,3]

puts arr.my_each {|i|i+2}

#this works 