
# 10. Write a piece of code to demonstrate the difference between `include` and `extend` in using Ruby modules with classes to include methods. Make sure to demonstrate calling the methods with your code.

module Quiz
    def def1
      p "this is def1 in module Quiz"
    end
end

class Class1
    include Quiz
end

class Class2
    extend Quiz
end

Class1.new.def1 #will call Quiz>def1
# Class1.def1 #error, include requries creation of new Class

# Class2.new.def1 #error, extend inheritence not carried over if creating new
Class2.def1 #will call Quiz>def1
