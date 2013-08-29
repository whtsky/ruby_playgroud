class Roman
  def self.method_missing(name, *args)
    roman = name.to_s
    if /^[IVXLC]+$/ =~ roman 
      roman.gsub!('IV', 'IIII')
      roman.gsub!('IX', 'VIIII')
      roman.gsub!('XL', 'XXXX')
      roman.gsub!('XC', 'LXXXX')
      
      return (roman.count('I') +
              roman.count('V') * 5 +
              roman.count('X') * 10 +
              roman.count('L') * 50 +
              roman.count('C') * 100)
    end
    super
  end
end

puts Roman.X
puts Roman.XC
puts Roman.XII
puts Roman.C
puts Roman.miaowu