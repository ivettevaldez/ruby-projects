# Conditionals
puts "***** CONDITIONALS *****\n\n"

is_authenticated = true
role = :user

if role == :admin
    puts "Admin screen"
elsif role == :superadmin
    puts "Super Admin screen"
else
    puts "Login screen"
end

# Loops
puts "\n***** LOOPS *****\n\n"
puts "----- while -----\n"
x = 1
while x < 5 do
    puts "Hi #{x}"
    x += 1
end

puts "----- loop -----\n"
x = 1
loop do
    puts "Hi #{x}"
    x += 1
    break if x >= 5
end

puts "----- for -----\n"
for i in 1..4 do
    puts "Hi #{i}"
end

puts "----- each -----\n"
[1,2,3,4].each { |x| puts "Hi #{x}" }

puts "----- times -----\n"
4.times { |x| puts "Hi #{x}" }

# Ranges
puts "\n***** RANGES *****\n\n"

(1..6).class