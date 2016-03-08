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
	def my_inject(num)
		arr=[]
		self.each do |i|
			#arr<<yield(num,i)
			num=yield(num,i)
		end
		return num
	end

end

puts (5..10).my_inject(1){|pro,x|pro+x}

#this fuckin works



