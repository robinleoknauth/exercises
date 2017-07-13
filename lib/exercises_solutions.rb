

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
Example
"a" --> ["click", "clock"]
"b" --> ["click","click", "clock"]
"ab" -- > ["click", "clock", "click", "click", "clock"]
"a b" -- > ["click", "clock", "boing", "click", "click", "clock"]

=end




def encode_decode(code)
  array_result = []
  string_result = ""

  alphabet = ("a".."z").to_a
  value = 0

  if code.class == Array
    code.each do |el|
      if el == "click"
        value += 1
      elsif el == "clock"
        string_result << alphabet[value - 1]
        value = 0
      elsif el == "boing"
        string_result << " "
      end
    end
    return string_result
  elsif code.class == String
    code.chars.each do |ch|
      if alphabet.include?(ch)
        (alphabet.index(ch) + 1).times do
          array_result << "click"
        end
        array_result << "clock"
      elsif ch == " "
        array_result << "boing"
      end
    end
    return array_result
  end
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

You have to write the rspec files to check for all these conditions.

=end


class Array
  def morph(*args)
    return self if args.size == 0
    return self if args.size == 1 && args[0] == true
    return false if args.size == 1 && args[0] == false
    if args.size == 2 && args[0] == true
      return self.index(args[1])
    elsif args[0] == false
      result = {}

      self.each do |el|
        result[el] = true
      end

      args.each do |el|
        result[el] = true
      end
      result
    end
  end
end

class Hash
  def morph(*args)
    return self if args.size == 0
    return self if args.size == 1 && args[0] == true
    return false if args.size == 1 && args[0] == false
    if args.size >= 2 && args[0] == true
      return self[args[1]]
    elsif args[0] == false
      result = {}

      self.each do |el|
        result[el] = true
      end

      args.each do |el|
        result[el] = true
      end
      result
    end
  end
end

# p ["hello", 1, 2, 3].morph
#
# p ["hello", 1, 2, 3].morph(false, 1, "ay", "boo")
#
# p ["hello", 1, 2, 3].index("hello")

hash = {monkey: 1, elephant: 1, donkey: 2 }
#
# p hash.morph(true)
p hash.morph(true, :elephant)
p hash.morph(false, "cigar", true, :tiger)


# p { "monkey" => 1 }.morph
# p {monkey: 1, elephant: 1, donkey: 2 }.morph(true)
# p {monkey: 1, elephant: 1, donkey: 2 }.morph(false, "cigar", true, tiger)
