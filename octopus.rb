Fish_array = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']


def On_tothe_2(array)
    longest_string = ''
    array.each do |ele1|
        array.each do |ele2|
            if ele2 < ele1 
                longest_string = ele1
            end
        end
    end
    longest_string
end

p On_tothe_2(Fish_array)


 class Array

  def my_quick_sort(&prc)
    prc ||= proc {|a, b| a<=>b}
    return self if size < 2

    pivot = first
    left = self[1..-1].select{|el| prc.call(el, pivot) == -1}
    right = self[1..-1].select{|el| prc.call(el, pivot) != -1}
    left.my_quick_sort(&prc) + [pivot] + right.my_quick_sort(&prc)
  end  
end

  p Fish_array.my_quick_sort {|a, b| a.length<=>b.length}[-1]
#   p [1,13,5,7,0].my_quick_sort


def O_n_time (array)
    longest_string = ''
    array.each do |ele|
        longest_string = ele if longest_string.length < ele.length
    end
    longest_string
end

p O_n_time(Fish_array)


tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]

# O(n) time
def slow_dance (direction, array)
    array.each_with_index do |ele,i|
        return i if ele == direction
    end
end

p slow_dance("up", tiles_array) # => 0
p slow_dance("right-down", tiles_array) # => 3

new_tiles_data_structure = {"up" => 0, "right-up" => 1, "right" => 2, "right-down" => 3, "down" => 4, "left-down" => 5, "left" => 6,  "left-up"=> 7 }

# O(1) time
def fast_dance (direction,hash)

    hash.each do |k,v|
        return v if k == direction
    end
end

p fast_dance("up", new_tiles_data_structure)# => 0
p fast_dance("right-down", new_tiles_data_structure)# => 3