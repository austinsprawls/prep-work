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
    if n == 0:
        count +=  1
    elif n == 1:
        count +=  3
    else:
        count = 0
        coins = [n/2, n/3, n/4]
        coins.sort()
        print "The sorted coins list is: " + str(coins)
        for coin in coins:
            print "on coin value: " + str(coin)
            if coin == 1:
                coins.remove(coin)
                count += 3
                print "updated count is: " + str(count)
                print "updated coins list is " + str(coins)
            elif coin == 0:
                coins.remove(coin)
                count += 1
                print "updated count is: " + str(count)
            else:
                return count + wonky_coins(coin)
    return count
                
