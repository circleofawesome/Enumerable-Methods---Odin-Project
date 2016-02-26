module Enumerable
	def my_each
			num=0
			self.length.times do
				yield(self[num])
				num+=1
			end
			return self
	end

	def my_map
		ret_array=[]
		num=0
		self.length.times do
			ret_array<<yield(self[num])
			num+=1
		end
		return ret_array
	end
	

end

ary = [1, 2, 4, 2]
ary.my_map{|i|puts i}