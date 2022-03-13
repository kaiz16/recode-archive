# You will write a method, only_name that takes in an Array of Hashes
# The method returns a new array containing the names of each hash.
# You have to use .map to solve this

def only_name(arr)
    # Write your code here
    return arr.map { |hash| hash["name"] }
end


pets = [
  {"type"=>"dog", "name"=>"Ralph"},
  {"type"=>"cat", "name"=>"Sunny"},
  {"type"=>"rat", "name"=>"Saki"},
  {"type"=>"dog", "name"=>"Fluffy"},
  {"type"=>"cat", "name"=>"Mr. Tibbers"}
]
print only_name(pets) == ["Ralph", "Sunny", "Saki", "Fluffy", "Mr. Tibbers"]
puts

countries = [
 {"name"=>"Japan", "continent"=>"Asia"},
 {"name"=>"Germany", "continent"=>"Europe"},
 {"name"=>"Kenya", "continent"=>"Africa"},
]
print only_name(countries) == ["Japan", "Germany", "Kenya"]
puts