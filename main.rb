require_relative "lib/tree"
puts array3 = (1..20).to_a.sample(20)
array = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17]
array2 = [6,3,2,1,5,4,9,8,7,10]
pp = [14,11,8,7,5,6,12,1,13,15]
tree = Tree.new(array3)
tree.build_tree
tree.pretty_print
tree.delete 16
puts [" "," "," "]
tree.pretty_print