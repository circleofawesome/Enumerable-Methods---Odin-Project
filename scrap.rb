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
	def my_select
		ret_array=[]
		self.my_each do |i|
			if yield(i)==true
				ret_array<<i
			end
		end
		return ret_array
	end
	#works

end
marr=[]
arr=["a","b","c"]
marr<<arr.my_select{|v|v=="b"}
puts marr