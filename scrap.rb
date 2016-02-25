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
	def my_any?
		ret_bool=false
		self.my_each do |i|
			if yield(i)==true
				ret_bool=true
				break
			end
		end
		return ret_bool
	end
	#works

end

puts %w[ant bear cat].my_any? { |word| word.length >= 5 }