def isValid(str)
    temp_str = str
    x = temp_str.split("")
    x.uniq!
    hash = {}
    x.each do |i|
       hash[i] = str.count(i)    
    end
    
    arr = hash.sort_by {|key,value| value}.first
    validator = 0,prev = arr[1],limiter = 1
    
    hash.each do |key,value| 
    if value==prev
        validator = "Yes, the string is valid"
    else
        if limiter == 1
            hash[key] = value-1
            limiter = 0
            value = hash[key]
            limiter = 0
        end
        return validator = "No, the string is not valid" if hash[key]!=prev
    end
    prev = value 
end
return validator
end

print "Input string: "
x = gets.chomp
puts isValid(x)


 