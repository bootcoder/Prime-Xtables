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


describe build_list(1) do

  it "will raise an error if no value is passed" do
    
  end

end


describe check_list(0,20) do
  
  it "returns a set of primes from separate text file" do
    check_list(0,5).should == [2, 3, 5, 7, 11]
  end

  it "returns a set equal in length to the max value passed" do
    check_list(0,10).should have(10).items
    check_list(0,10).should_not have(9).items
    check_list(0,10).should_not have(11).items
  end

end


describe print_xtables do

  it "should render a multiplication table of primes" do
    
  end

end
