status = Hash.new

status["name"]="toshi"
status["hp"]=10
status["mp"]=5
status["job"]="fighter"

puts "name:" + status["name"]
puts "hp:" + status["hp"].to_s

st = {
    "name" => "toshi",
    "hp" => 10,
    "mp" => 5,
    "job" =>"fighter"
}
puts "name:" + st["name"]
puts "hp:" + st["hp"].to_s

st = {
    :name => "toshi",
    :hp => 10,
    :mp => 5,
    :job =>"fighter"
}
puts "name:" + st[:name]
puts "hp:" + st[:hp].to_s

st = {
    name: "toshi",
    hp: 10,
    mp: 5,
    job: "fighter"
}
puts "name:" + st[:name]
puts "hp:" + st[:hp].to_s

st.each do |k, v|
    puts k.to_s+":"+v.to_s
end
