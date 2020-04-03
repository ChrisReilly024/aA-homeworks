# DIY ADTs
# Exercise 1 - Stack
# Let's write a Stack class. To do this, use the following framework:

class Stack
    attr_reader :array
    def initialize
        @array = []
    end
    
    def push(el)
        array << el
    end
    
    def pop
        array.pop
    end
    
    def peek
        array.last
    end
end
# To test that your code works, create a new instance of the Stack class, and play around with adding and removing elements. Remember, a stack follows the principle of LIFO!

# Exercise 2 - Queue
# Now let's write a Queue class. We will need the following instance methods: enqueue(el), dequeue, and peek.

class Queue
    attr_reader :array
    def initialize
        @array = []
    end

    def enqueue(el)
        array.unshift(el)
    end

    def dequeue
        array.shift
    end

    def peek
        array.last
    end
end


# Test your code to ensure it follows the principle of FIFO.

# Exercise 3 - Map
# As you saw in the videos for tonight, a map can be implemented using a 2D array. Let's write a Map class (following a similar pattern to Stack and Queue) that implements a map using only arrays.

# Remember, a map stores information in key-value pairs, where the keys are always unique. When implemented with arrays, a map might look something like this: my_map = [[k1, v1], [k2, v2], [k3, v2], ...].

# Our Map class should have the following instance methods: set(key, value), get(key), delete(key), show. Note that the set method can be used to either create a new key-value pair or update the value for a pre-existing key. It's up to you to check whether a key currently exists!

class Map
    attr_reader :array
    def initialize
        @array = []
    end
    def set(k,v)
        pos = array.index {|keys| keys[0] == k}
        pos ? array[pos][1] = v : array.push([k,v])
    end
    def get(k)
        array.each {|pairs| return pairs if pairs[0] == k}
    end
    def delete(k)
        array.each {|pairs| array.delete(pairs) if pairs[0] == k}
    end
end


# As always, test your code thoroughly to make sure all properties of maps are enforced.