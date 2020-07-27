class GraphNode
    attr_accessor :val, :neighbors

    def initialize(val)
        self.val = val
        self.neighbors = []
    end
end

a = GraphNode.new('a')
b = GraphNode.new('b')
c = GraphNode.new('c')
d = GraphNode.new('d')
e = GraphNode.new('e')
f = GraphNode.new('f')
a.neighbors = [b, c, e]
c.neighbors = [b, d]
e.neighbors = [a]
f.neighbors = [e]

require "byebug"

def bfs(starting_node, target_value)
    visited = []
    queue = [starting_node]
    until queue.empty?
        first = queue.shift
        if first.val == target_value
            return first
        elsif visited.include?(first)
            break
        end
        visited << first
        queue.concat(first.neighbors)
    # If you find the target_value return the node with that value, 
    # and if no node is found return nil.
    end
    nil
end

# what node has access to all others

p bfs(a, "b")

p bfs(a, "f")