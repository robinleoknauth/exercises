

# 1...
# Write a Proc, foo, that will sort these objects according to the
# number of methods they have. (Object has 56 methods, String has 174)


# foo = -> (arg) { arg.methods.size }
# p ["string",{hash:4},Object.new, ["array"], 4, :symbol].sort_by(&foo)

foo = -> (a,b) { a.methods.count <=> b.methods.count }
p ["string",{hash:4},Object.new, ["array"], 4, :symbol].sort(&foo)



# 2...
# Printing these objects returns something like "#<Foo:0x007f92f082af70>".
# I'd like to print "<Foo: name: xfrt, age: 34>" instead
class Foo
  def initialize(name, age, glutenfree)
    @name = name
    @age = age
    @glutenfree = glutenfree
  end

  def to_s
    if @glutenfree == false
      "<Foo: name: #{@name}, age: #{@age}>"
    else
      "<Foo: name: #{@name}, age: #{@age}, glutenfree>"
    end
  end
end

class Bar < Foo
end

# Generates fake names and such, for testing
def _fake_data
  name = ("a".."z").to_a.sample(4).join
  age = 18+((rand+rand+rand)/3*20).floor
  glutenfree = rand(2) == 1
  [name, age, glutenfree]
end

p Foo.new(*_fake_data).to_s #=> <Foo: name: xfrt, age: 34, glutenfree>
p Bar.new(*_fake_data).to_s #=> <Bar: name: koug, age: 21>


# 3...
# The String and Symbol class share many methods. But the Symbol class has two
# unique methods the String class doesn't have. Monkeypatch the String class so
# that Symbols will listen to those two methods, correctly.
