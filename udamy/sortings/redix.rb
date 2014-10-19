# This sort is very good with string, phone number, social security numbers etc
# input = [911, 383, 544, 548, 359, 479]

p input = [911, 583, 544, 548, 553, 579]
max = input.max

puts
(max.to_s.length - 1).downto(0) do |indx|

  0.upto(input.length - 2) do |i|
    i.upto(input.length - 1) do |j|
      input[i], input[j] = input[j], input[i] if input[i].to_s[indx] > input[j].to_s[indx]
    end
  end

  puts 'Iteration #' + (max.to_s.length - indx).to_s + ': ' + input.inspect
end




