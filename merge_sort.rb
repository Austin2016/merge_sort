def merge_sort (array)
  return array if array.length < 2 
  midpoint_index = (array.length / 2) - 1 
  
  left = array.slice!(0..midpoint_index) 
  right= array   

  left = merge_sort(left)
  right = merge_sort(right)

  merge(left,right)      
end 



def merge (left_array,right_array)
  merged_array = []
  until left_array.length == 0 || right_array.length == 0  
    if left_array[0] <= right_array[0]
      merged_array << left_array.slice!(0)
    else  
      merged_array << right_array.slice!(0)  
    end 
  end
  left_array.each {|e| merged_array << e}
  right_array.each {|e| merged_array << e} 
  merged_array 
end 

=begin
Use the code to the right of the hashtag below in conjuction with 
an array of strings containing the same word in both upper case and lower case 
to test stability of the merge sort algorithm 
#left_array[0].upcase <= right_array[0].upcase
=end 

puts "sort [5,4,3,2,1]"
print merge_sort([5,4,3,2,1])
print "\n"  
puts "sort [5,4,3,2] "
print merge_sort([5,4,3,2]) 
print "\n"  
puts "sort [8,5,9,7.4,0,3333,33,6,-1,33]"
print merge_sort([8,5,9,7.4,0,3333,33,6,-1,33]) 
print "\n" 
puts "sort [0]"
print merge_sort([0])
print "\n"   
puts "sort empty set"
print merge_sort([]) 
print "\n"  


=begin 
example method call to test stability 
print merge_sort(["Hey","Zod","hey","Hey","hey","zod","aba"])
print "\n"  

=end 

