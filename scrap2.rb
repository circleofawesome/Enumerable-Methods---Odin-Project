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
	def my_count(*num)
		count=0
		if block_given?
			self.my_each do |i|
				if yield(i)==true
					count+=1
				end
			end
		
		elsif num[0]==nil
			self.my_each do |i|
				if i!=nil
					count+=1
				end
			end
		elsif num!=nil
			num.each do |p|
				self.each do |i|
					if i==p
						count+=1
					end
				end
			end
		end
		return count
	end

end

arr=[1,2,3,4,4]
puts arr.my_count{|i|i>2}