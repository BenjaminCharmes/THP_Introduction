array = ["dwqdqwd.zxcxzvzx", "dqwdqwd.zxczxc", "sadasd-asdasd.zxczxc"] 
new_array = []
new_array = array.map{|word| word.gsub(".", " ")}.join(" ").split
array_first = []
array_last = []
new_array.each_with_index do |name, index|
  if index.even?
    array_first.push(name)
  else
    array_last.push(name)
  end 
end 

print array_first
print array_last