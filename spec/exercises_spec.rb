require 'exercises'

describe "exercises.rb" do
  describe "encode_decode" do

    it "should not throw an error" do
      expect { encode_decode("abc") }.not_to raise_error
    end

    it "returns an array if the input is a string" do
      expect(encode_decode("abc").class).to eq(Array)
    end

    it "returns a string if the input is an array" do
      expect(encode_decode(["click", "clock", "click", "click", "clock", "click", "click", "click", "clock"]).class).to eq(String)
    end

    it "returns the right encoded message if given a string as input" do
      expect(encode_decode("this is a test how this works!")).to eq(["click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "clock", "click", "click", "click", "click", "click", "click", "click", "click", "clock", "click", "click", "click", "click", "click", "click", "click", "click", "click", "clock", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "clock", "boing", "click", "click", "click", "click", "click", "click", "click", "click", "click", "clock", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "clock", "boing", "click", "clock", "boing", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "clock", "click", "click", "click", "click", "click", "clock", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "clock", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "clock", "boing", "click", "click", "click", "click", "click", "click", "click", "click", "clock", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "clock", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "clock", "boing", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "clock", "click", "click", "click", "click", "click", "click", "click", "click", "clock", "click", "click", "click", "click", "click", "click", "click", "click", "click", "clock", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "clock", "boing", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "clock", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "clock", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "clock", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "clock", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "clock"])
    end

    it "returns the right dencoded message if given a array as input" do
      expect(encode_decode(["click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "clock", "click", "click", "click", "click", "click", "click", "click", "click", "clock", "click", "click", "click", "click", "click", "click", "click", "click", "click", "clock", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "clock", "boing", "click", "click", "click", "click", "click", "click", "click", "click", "click", "clock", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "clock", "boing", "click", "clock", "boing", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "clock", "click", "click", "click", "click", "click", "clock", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "clock", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "clock", "boing", "click", "click", "click", "click", "click", "click", "click", "click", "clock", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "clock", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "clock", "boing", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "clock", "click", "click", "click", "click", "click", "click", "click", "click", "clock", "click", "click", "click", "click", "click", "click", "click", "click", "click", "clock", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "clock", "boing", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "clock", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "clock", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "clock", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "clock", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "click", "clock"])).to eq("this is a test how this works")
    end
  end

  describe "morph" do
    hash = {monkey: 1, elephant: 1, donkey: 2 }
    it "should not throw an error when not given an argument" do
      expect { ["hello", 1, 2, 3].morph }.not_to raise_error
    end

    it "return the reciever if not given any arguments" do
      expect( ["hello", 1, 2, 3].morph ).to eq(["hello", 1, 2, 3])
    end

    it "should not throw an error when given one argument" do
      expect { ["hello", 1, 2, 3].morph(true) }.not_to raise_error
    end

    it "return the index of the second argument if the first argument is > true <" do
      expect( ["hello", 1, 2, 3].morph(true) ).to eq(["hello", 1, 2, 3])
    end

    it "should not throw an error given 2 arguments" do
      expect { ["hello", 1, 2, 3].morph(true, 1) }.not_to raise_error
    end

    it "return the value of the second argument if the first argument is > true <" do
      expect( hash.morph(true, :elephant) ).to eq(1)
    end

  end

end
