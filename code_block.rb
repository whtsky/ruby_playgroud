def call_block(&block)
  puts "Before"
  block.call
  puts "After"
end

def yield_block
  puts "Before yield"
  yield
  puts "After yield"
end

call_block { puts "block" }
yield_block { puts "block" }