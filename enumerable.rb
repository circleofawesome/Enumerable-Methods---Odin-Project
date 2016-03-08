module Enumerable
		def my_each
			num=0
			self2=self.to_a
			self2.length.times do
				yield(self2[num])
				num+=1
			end
			return self2
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

		def my_map
			ret_array=[]
			num=0
			self.length.times do
				ret_array<<yield(self[num])
				num+=1
			end
			return ret_array
		end
		#works

		def my_inject(*num)
			if num[0]==nil
			#no argument provided
				self_arr=[]
				self.my_each do |i|
					self_arr<<i
				end
				sum1=self_arr[0]
				self_arr.delete_at(0)
				self_arr.my_each do |i|
					sum1=yield(sum1,i)
				end
			else
		#argument provided
				sum1=num[0]
				self.my_each do |i|
					sum1=yield(sum1,i)
				end
			end
			return sum1
	end
end
