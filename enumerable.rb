module Enumerable
	
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

#this works 
