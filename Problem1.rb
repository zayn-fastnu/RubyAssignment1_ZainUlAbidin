print "Enter value of n: "
n = gets.chomp.to_i
print "Enter value of k: "
k = gets.chomp.to_i

if k >=n 
    k = k%n
end 
n.times do |i|
    
    break puts "Output (Safe place): #{i+1}" if k==0
    k = k-1
end