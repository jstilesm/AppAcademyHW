  require "byebug"
  class LRUCache
    attr_reader :array, :length
    
    def initialize(length)
        @array = []
        @length = length
    end

    def count
      self.array.length
    end

    def add(el)
      # adds element to cache according to LRU principle
    #  adds an element if it is not already there, it removes the element and adds it
    # adds to back when adds new, 
    # when at max size, deletes front and adds to back
    # debugger
        if self.array.include?(el)
            self.array.delete(el)
            self.array.push(el)
        elsif self.count >= @length
            # debugger
            self.array.push(el)
            self.array.shift
        else
            self.array.push(el)
        end

    end

    def show
      p self.array
    end

    private
    # helper methods go here!

  end

  johnny_cache = LRUCache.new(4)

  johnny_cache.add("I walk the line")
  johnny_cache.add(5)

  johnny_cache.count # => returns 2

  johnny_cache.add([1,2,3])
  johnny_cache.add(5)
  johnny_cache.add(-5)
  johnny_cache.add({a: 1, b: 2, c: 3})
  johnny_cache.add([1,2,3,4])
  johnny_cache.add("I walk the line")
  johnny_cache.add(:ring_of_fire)
  johnny_cache.add("I walk the line")
  johnny_cache.add({a: 1, b: 2, c: 3})


  johnny_cache.show # => prints [[1, 2, 3, 4], :ring_of_fire, "I walk the line", {:a=>1, :b=>2, :c=>3}]
