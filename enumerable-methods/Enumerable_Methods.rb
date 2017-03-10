# Create a script file to house your methods and run it in IRB to test them later. -- Check

# Add your new methods onto the existing Enumerable module. Ruby makes this easy for you
# because any class or module can be added to without trouble ... just do something like:
    #module Enumerable
    #  def my_each
    #    # your code here
    #  end
    #end

module Enumerable
  # Create #my_each, a method that is identical to #each but (obviously) does not
  # use #each. You'll need to remember the yield statement. Make sure it returns
  # the same thing as #each as well.
  def my_each
    0.upto(self.length - 1) { |x| yield(self[x]) }
  end


  # Create #my_each_with_index in the same way.
  def my_each_with_index
    0.upto(self.length - 1) { |x, y| yield(self[x], x) }
  end


  # Create #my_select in the same way, though you may use #my_each in your
  # definition (but not #each).
  def my_select
    arr = []

    self.my_each { |x| arr << x if yield x }

    p arr
  end


  # Create #my_all? (continue as above)
  def my_all
    #insert code here
    self.my_each { |x| return true if x != false || x != nil }
  end

end

["ant", "bear", "cat"].my_all { |x| x.length >=3 }
