word = ARGV.shift
while gets
  print if /#{word}/
end