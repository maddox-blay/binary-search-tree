require_relative "lib/tree"
puts array3 = (1..100).to_a.sample(100)
array = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17]
array2 = [6,3,2,1,5,4,9,8,7,10]
tree = Tree.new(array3)
tree.build_tree
tree.pretty_print

