require_relative "lib/tree"
puts array3 = (1..20).to_a.sample(20)
tree = Tree.new(array3)
tree.build_tree
tree.pretty_print
tree.delete 16
puts [" "," "," "]
tree.pretty_print