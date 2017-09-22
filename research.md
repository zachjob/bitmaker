# String
* `length`: returns the number of elements in an object. Returns an integer.
`[1,2,3,4].length = #4`
* `strip`: Returns a copy of str with leading and trailing whitespace removed.
`"    hello    ".strip   #=> "hello"`
* `split`: Divides string into substrings based on a delimiter and returns an array with these substrings. Can be set by defining the pattern character, left as default will determine its own. Can also limit the number of objects set in the array after defining the pattern.
`"hello".split(//, 3)            #=> ["h", "e", "llo"]`
* `start_with`: Returns true if str starts with one of the prefixes given.
`"hello".start_with?("heaven", "hell")     #=> true`

# Array
* `first`: The special methods first and last will return the first and last elements of an array, respectively.
`arr.first #=> 1`
* `delete_at`: Deletes the element at the specified index, returning that element, or nil if the index is out of range.
`a = ["ant", "bat", "cat", "dog"]
a.delete_at(2)    #=> "cat"
a                 #=> ["ant", "bat", "dog"]`
* `delete`: Deletes all items from self that are equal to obj.
`a = [ "a", "b", "b", "b", "c" ]
a.delete("b")                   #=> "b"
a                               #=> ["a", "c"]`
* `pop`: Removes the last element from self and returns it, or nil if the array is empty.
`a = [ "a", "b", "c", "d" ]
a.pop     #=> "d"`

# Hash
* `to_a`: Converts hsh to a nested array of [ key, value ] arrays.
`h = { "c" => 300, "a" => 100, "d" => 400, "c" => 300  }
h.to_a   #=> [["c", 300], ["a", 100], ["d", 400]]`
* `has_key?`: Returns true if the given key is present in hsh.
`h = { "a" => 100, "b" => 200 }
h.has_key?("a")   #=> true`
* `has_value?`: Returns true if the given value is present for some key in hsh.
`h = { "a" => 100, "b" => 200 }
h.value?(100)   #=> true`

# Time
* `now`: Creates a new Time object for the current time. This is same as ::new without arguments.
`Time.now            #=> 2009-06-24 12:39:54 +0900`

# File
* `exist?`: Return true if the named file exists. Takes parameters the file name.
* `extname`: Returns the extension (the portion of file name in path starting from the last period).
`File.extname("test.rb")         #=> ".rb"`
