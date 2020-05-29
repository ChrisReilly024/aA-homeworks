class Queue
    def initialize
        @array = []
    end

    def enqueue(el)
        @array.unshift(el)
    end

    def dequeue
        @array.sahift
    end

    def peek
        @array[0]
    end
end