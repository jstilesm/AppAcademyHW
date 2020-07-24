class Stack

    def initialize
        @stack = []
    end

    def push(el)
        @stack.push(el)
      # adds an element to the stack
    end

    def pop
        @stack.pop
      # removes one element from the stack
    end

    def peek
        @stack[-1]
      # returns, but doesn't remove, the top element in the stack
    end
end

class Queue
    def initialize
        @queue = []
    end

    def enqueue(el)
        @queue.push(el)
    end

    def dequeue
        @queue.shift
    end

    def peek
        @queue[0]
    end
end


class Map
    # my_map = [[k1, v1], [k2, v2], [k3, v2], ...]

    def initialize
        @map = []
    end

    def set(key,value)
    
        checked = false
        i = 0
        while i < @map.length
            if @map[i][0] == key
                @map[i][1] = value
                checked = true
                break
            end
            i +=1
        end
        if checked == false
            @map << [key,value]
        end
    end

    def get(key)
        i = 0
        while i < @map.length
            if @map[i][0] == key
                return @map[i][1]
                break
            end
            i += 1
        end
    end

    def delete(key)
        new_map = []
        i = 0
        while i < @map.length
            if @map[i][0] != key
                new_map << @map[i]
            end
            i += 1
        end
        @map = new_map
    end

    def show
        p @map
    end
end