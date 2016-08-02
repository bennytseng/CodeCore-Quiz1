# Codecore - Benny Tseng
# Aug 2, 2016
#
# QUIZ 1
#
#  2. Stacks and Queues
#
#  A stack works on items last one in first one out (LIFO) as opposed to a queue where first in first out (FIFO) methods are applied

class Stack
  def add(x)
    arr << x
  end
  def remove
    arr.pop
  end
end

class Queue
  def add(x)
    arr << x
  end
  def remove
    arr.shift
  end
end
