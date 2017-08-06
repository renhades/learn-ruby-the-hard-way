input_file = ARGV[0]

def print_all(f)
  puts f.read()
end

def rewind(f)
  f.seek(0, IO::SEEK_SET)
   IO::SEEK_SET, IO::SEEK_CUR, IO::SEEK_END
   都是用來指向檔案中的位置
   SEEK_SET: 指向 offset 所指定的位置 (從 0 開始)
   SEEK_CUR: 指向當前位置加上 offset 後的位置
   SEEK_END: 指向 offset 所指定的位置，從文字最後面倒數 (offset 須用負數)
end

def print_a_line(line_count, f)
  puts "{line_count} {f.readline()}"
end

current_file = File.open(input_file)

puts "First let's print the whole file:"
puts  a blank line

print_all(current_file)

puts "Now let's rewind, kind of like a tape."

rewind(current_file)

puts "Let's print three lines:"

current_line = 1
print_a_line(current_line, current_file)

current_line = current_line + 1
print_a_line(current_line, current_file)

current_line = current_line + 1
print_a_line(current_line, current_file)
