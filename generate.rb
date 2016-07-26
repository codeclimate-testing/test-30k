file = 0
line = "x = 5\n"

30_000.times do |i|
  if i % 1_000 == 0
    file += 1
  end

  File.open("#{file}.js", "a") do |f|
    f.write line
  end
end
