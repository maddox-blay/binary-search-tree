require_relative "node"

class Tree
  def initialize(array)
    @array = array
    @root = nil
  end

  def pretty_print(node = @root, prefix = '', is_left = true)
    pretty_print(node.right, "#{prefix}#{is_left ? '│   ' : '    '}", false) if node.right
    puts "#{prefix}#{is_left ? '└── ' : '┌── '}#{node.value}"
    pretty_print(node.left, "#{prefix}#{is_left ? '    ' : '│   '}", true) if node.left
  end


  def insert(value)
    newnode = Node.new value
    if @root.nil?
      @root = newnode 
    else
      parent_node = @root
      while true
        if value > parent_node.value 
          if parent_node.right.nil?
            parent_node.right = newnode
            break
          end
          parent_node = parent_node.right
        elsif value < parent_node.value
          if parent_node.left.nil?
            parent_node.left = newnode
            break
          end
          parent_node = parent_node.left
        end
      end
    end
  end

  def balance(_array, balanced_array = [])
    if _array.size <= 1
      balanced_array << _array[0] unless _array[0].nil?
      return balanced_array 
    end
    mid = _array.size / 2
    midpoint = _array[mid]
    balanced_array << midpoint
    left = _array[0...mid]
    right = _array[(mid+1)..]
    balance(left, balanced_array)
    balance(right, balanced_array)
    return balanced_array
  end

  def inorder(parent = @root, array = [])
    return array if parent.nil?
    inorder(parent.left, array) unless parent.left.nil?
    array << parent.value
    inorder(parent.right, array) unless parent.right.nil?
    return array
  end

  def build_tree
    @array.each {|value| insert value}
    array = balance(inorder)
    @root = nil
    array.each {|value| insert value }
    return @root
  end

end
