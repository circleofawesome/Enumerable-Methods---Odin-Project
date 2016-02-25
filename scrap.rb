module Enumerable
	def my_each
			ret_array=[]
			num=0
			self.length.times do
				ret_array<<yield(self[num])
				num+=1
			end
			return ret_array
		end
	def my_none?
		ret_bool=true
		self.my_each do |i|
			if yield(i)==true
				ret_bool=false
				break
			end
		end
		return ret_bool
	end
	#works

end

puts %w[ant bear cat].my_none? { |word| word.length == 4 }