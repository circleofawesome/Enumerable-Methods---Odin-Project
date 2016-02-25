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
		#works

		def my_each_with_index
			ret_array=[]
			for i in 0..self.length do
				ret_array<<yield(i)
			end
			return ret_array
		end
		#works

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

		def my_all?
			ret_bool=true
				self.my_each do |i|
					if yield(i)==false
						ret_bool=false
						break
					end
				end
			return ret_bool
		end
		#works

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
		#works
end
