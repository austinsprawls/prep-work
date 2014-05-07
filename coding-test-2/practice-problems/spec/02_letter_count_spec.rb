require '02_letter_count'
require 'rspec'

# Write a function, `letter_count(str)` that takes a string and
# returns a hash mapping each letter to its frequency. Do not include
# spaces.
#
# Difficulty: 1/5

describe "#letter_count" do
  it "handles a simple case" do
    letter_count("cat").should == {
      "c" => 1,
      "a" => 1,
      "t" => 1
    }
  end

  it "handles multiples of the same letter" do
    letter_count("moon").should == {
      "m" => 1,
      "o" => 2,
      "n" => 1
    }
  end

  it "handles a multi-word case" do
    letter_count("cats are fun").should == {
      "a" => 2,
      "c" => 1,
      "e"=> 1,
      "f" => 1,
      "n" => 1,
      "r" => 1,
      "s" => 1,
      "t" => 1,
      "u" => 1
    }
  end
end

#My solution in Python

def letter_count(string):
    new_string = string.replace(" ", "")
    freq = {}
    i = 1
    for letter in new_string:
        if letter not in freq:
            count = 0)
            for l in new_string[:]:
                if l == letter:
                    count += 1
            freq[letter] = count
        elif letter in freq:
            pass
    return freq
