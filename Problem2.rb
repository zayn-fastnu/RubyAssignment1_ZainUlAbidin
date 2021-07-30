def domino(str)
temp="", prev="", count=1, track=[] #initial arguments
str.split(",").each do |x| 
    temp = x[0]
    if temp == prev
        count = count +1 
    else
        if count>1
            track.push(count)
        end
        count = 1
    end
    track.push(count)
    prev = x[2]
end
return track.max
end

puts domino("1-1,3-5,5-2,2-3,2-4") 
puts domino("3-2,2-1,1-4,4-4,5-4,4-2,2-1")
puts domino("5-5,5-5,4-4,5-5,5-5,5-5,5-5,5-5,5-5,5-5") 
puts domino("1-1,3-5,5-5,5-4,4-2,1-3") 
puts domino("1-2,2-2,3-3,3-4,4-5,1-1,1-2")