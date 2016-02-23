module Enumerable
	def my_each
	#length=array.length-1
		for i in 0..array.length do
			yield
		end
	end
end
#after writing your methods put them in here 

arr.each {|i|i+2}