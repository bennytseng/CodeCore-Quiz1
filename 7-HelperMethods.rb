# 7. Implement the following code in Ruby: Create a module called HelperMethods that include a method called `titleize` that does the following: it takes in a string and returns the string back after capitalizing each word in that string. For example if you pass to the method a string "hello world" you should get back "Hello World". The methods should not capitalize the following words: in, the, of, and, or, from.

module HelperMethods
  def titleize(str)
    arr = str.split(" ")
    n_arr = []
    censor = ["in", "the", "of", "and", "or", "from"]
    arr.map do |x|
      if censor.include? x
        n_arr << x
      else
        n_arr << x.capitalize
      end
    end
    p n_arr
  end
end


a = ""
a.extend(HelperMethods)
a.titleize("hello world in the quite old or from and of range")
