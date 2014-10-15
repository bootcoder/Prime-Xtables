require_relative "../Prime-Xtables.rb"

describe is_prime?(11) do
  
  it "returns true for numbers which are primes" do
    is_prime?(11).should == true
    is_prime?(97).should == true
    is_prime?(7919).should == true
  end
  
  it "returns false for number which are not primes" do
    is_prime?(12).should == false
    is_prime?(33).should == false
    is_prime?(7917).should == false
  end

  it "does not raise an error if no value is passed" do
    is_prime?.should == false
  end

  it "returns false for any negative value passed" do
    is_prime?(-100).should == false
    is_prime?(-78).should == false
    is_prime?(-56).should == false
  end

end
