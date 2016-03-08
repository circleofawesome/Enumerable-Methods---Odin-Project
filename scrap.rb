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

	def my_inject(*num)
		if num[0]==nil
			self_arr=[]
			self.my_each do |i|
				self_arr<<i
			end
			sum1=self_arr[0]
			self_arr.delete_at(0)
			self_arr.my_each do |i|
				sum1=yield(sum1,i)
			end
		#no argument provided
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

#puts (5..10).my_inject { |sum, n| sum * n }
#the above and below work correctly 
#puts (5..10).my_inject { |product, n| product + n }
longest = %w{ cat sheep bear }.my_inject do |memo, word|
   memo.length > word.length ? memo : word
end
puts longest                                  

