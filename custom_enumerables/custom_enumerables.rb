#define custom module
module CustomEnum

  #my take on .each()
  def my_each(&block)
    for item in self
      yield(item)
    end
    self
  end

  #my take on .each_with_index()
  def my_each_with_index(&block)
    i = 0
    for item in self
      yield(item, i)
      i += 1
    end
    self
  end

end

#include the CustomEnum module
include CustomEnum

#test variables
array = [5,6,7,8]
stringarray = ["hello","my","name","is","Feythelus"]
hashlist = {"name" => "Feythelus", age: 100, 1234 => "one,two,three,four"}

#array.my_each_with_index {|item, index| print "#{item}, #{index}     "}
#hashlist.my_each_with_index {|key, val, index| print "#{key}, #{val}, #{index}   "}

#hashlist.each_with_index {|key, val, index| print "#{key}, #{val}, #{index}   "}
#array.each_with_index {|item, index| print "#{item},#{index}    "}


=begin
#my enum for .each()
array.my_each {|item| puts item}
#Ruby's built in enum
array.each {|item| puts item}
=end

=begin
#my enum for .each_with_index()
stringarray.my_each_with_index {|item, index| puts "#{item}, #{index}"}
#Ruby's built in enum
stringarray.each_with_index {|item, index| puts "#{item}, #{index}"}
=end