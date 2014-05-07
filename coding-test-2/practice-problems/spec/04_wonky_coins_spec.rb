require '04_wonky_coins'
require 'rspec'

# Catsylvanian money is a strange thing: they have a coin for every
# denomination (including zero!). A wonky change machine in
# Catsylvania takes any coin of value N and returns 3 new coins,
# valued at N/2, N/3 and N/4 (rounding down).
#
# Write a method `wonky_coins(n)` that returns the number of coins you
# are left with if you take all non-zero coins and keep feeding them
# back into the machine until you are left with only zero-value coins.
#
# Difficulty: 3/5

describe "#wonky_coins" do
  it "handles a simple case" do
    wonky_coins(1).should == 3
  end

  it "handles a larger case" do
    wonky_coins(5).should == 11
    # 11
    # => [2, 1, 1]
    # => [[1, 0, 0], [0, 0, 0], [0, 0, 0]]
    # => [[[0, 0, 0], 0, 0], [0, 0, 0], [0, 0, 0]]
  end

  it "handles being given the zero coin" do
    wonky_coins(0).should == 1
  end

end

#solution in progress ...

def wonky_coins(n):
    total = 0
    if n == 0:
        total +=  1
    elif n == 1:
        total +=  3
    else:
        total = 0
        coins = [n/2, n/3, n/4]
        coins.sort()
        for coin in coins:
            if coin == 1:
                count = coins.count(1)
                coins.remove(coin)
                total = total +  (count * 3)
            elif coin == 0:
                count = coins.count(0)
                coins.remove(coin)
                total = total + (count* 1)
            else:
                return total + wonky_coins(coin)
    return total
