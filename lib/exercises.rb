

=begin

Exercise 1

You have to write a simple encoder/decoder.
You are either given an array of "click", "clock", and "boing" elemets
or a string you have to encode into an array of those elements,
aka to ecode it into Click Code.
To encode a string into Click Code you do the following:
Every character of the string adds as many "click"s to the array as his
 position in the alphabet is.
After every character there is a "clock". Spaces are indicated as "boing".
Ignore punctuation.

The rspec will be provided.


Example
"a" --> ["click", "clock"]
"b" --> ["click","click", "clock"]
"ab" -- > ["click", "clock", "click", "click", "clock"]
"a b" -- > ["click", "clock", "boing", "click", "click", "clock"]

=end


def encode_decode(code)

end

=begin

write a method that takes any number of arguments.

If it has no argument, it should return the reciever unchanged.
If it has one argument, it should return the reciever unchanged if the
argument is true.
if the argument is false it should return false.
If it has two arguments, and the first argument is true,
it should return the index of the second argument
if the receiver is an array,
or it should return the value of the second argument
if the reciever is a hash.
If the first argument is false, then it should return a hash with
all elementsfrom both the reciever and the arguments being the keys,
 and the value being true.

You have to write the rspec files to check for the following conditions.

"should not throw an error when not given an argument"
"return the reciever if not given any arguments"
"should not throw an error when given one argument"
"return the index of the second argument if the first argument is > true <" do
"should not throw an error given 2 arguments" do
"return the value of the second argument if the first argument is > true <" do


=end

def morph

end
