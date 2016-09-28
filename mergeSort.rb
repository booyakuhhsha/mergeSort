def merge_sort(ary)
	n = ary.length
	return ary if n == 1

	if n > 1

		a = ary[0..(n/2-1)] #splits array
		b = ary[(n/2)..(n-1)] #splits array, if odd amount of elements, this one will have the extra
		
		sorted_a = merge_sort(a)
		sorted_b = merge_sort(b)

		sorted = merge(sorted_a,sorted_b)
		
	end
	
end

def merge(a,b)
	ary = []
	total_length = a.length + b.length
	while total_length > ary.length	
		if a.length == 0
			b.each { |number| ary << number}
		elsif b.length == 0
			a.each { |number| ary << number}
		elsif a[0] == b[0]
			ary << a[0]
			a.delete_at(0)
		elsif b[0] <= a[0]
			ary << b[0]
			b.delete_at(0)
		elsif a[0] <= b[0]
			ary << a[0]
			a.delete_at(0)			
		end
	end	
	return ary
end

array = [9,5,7,6,2,1,4,6,3,7,8,5,4]

print merge_sort(array)

