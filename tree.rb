class Tree
  attr_accessor :children, :name
  
  def initialize(name, children=[])
    @name = name
    @children = children
  end
  
  def visit(&block)
    block.call self
  end
  
  def visit_all(&block)
    visit &block
    children.each {|node| node.visit_all &block }
  end
end

ruby_tree = Tree.new("Ruby", [
  Tree.new("Reia"),
  Tree.new("MacRuby")
])


puts "Visiting a node"
ruby_tree.visit {|node| puts node.name}

puts "Visiting entire tree"
ruby_tree.visit_all {|node| puts node.name}