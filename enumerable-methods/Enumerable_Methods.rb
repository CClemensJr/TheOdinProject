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

end

[0, 2, 4, 5].my_each { |i| puts i }
