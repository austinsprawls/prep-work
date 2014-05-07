require '01_no_repeats'
require 'rspec'

# Write a function, `no_repeats(year_start, year_end)`, which takes a
# range of years and outputs those years which do not have any
# repeated digits.
#
# You should probably write a helper function, `no_repeat?(year)` which
# returns true/false if a single year doesn't have a repeat.
#
# Difficulty: 1/5


describe "#no_repeats" do
  it "should return a no repeat year" do
    no_repeats(1234, 1234).should == [1234]
  end

  it "should not return a repeat year" do
    no_repeats(1123, 1123).should == []
  end

  it "should return only those years that have no repeated digits" do
    no_repeats(1980, 1987).should == [
      1980,
      1982,
      1983,
      1984,
      1985,
      1986,
      1987
    ]
  end
end

#MMy answer in Python

def no_repeat(year):
    year = str(year)
    if year[0] in year[1:]:
        return False
    elif year[0] not in year[1:]:
        return True
    else:
        return no_repeat(year[1:])
    return True

    
def no_repeats(year_start, year_end):
    if year_start == year_end and no_repeat(year_start):
        return year_start
    while year_start <= year_end:
        if no_repeat(year_start):
            print year_start
        year_start += 1
