require 'pipelining'

describe "pipe" do
  it "can reverse a list" do
    result = (pipe [1,2,3] do
      reverse
    end)
    result.should == [3,2,1]
  end

  it "can combine two messages" do
    result = pipe [1,2,3] do
      reverse
      first
    end
    result.should == 3
  end

  it "can use methods which take arguments" do
    result = pipe [1,2,3] do
      push 4
      push 5
    end
    result.should == [1,2,3,4,5]
  end

  it "can take blocks" do
    result = pipe [1,2,3] do
      reject { |x| x == 1 }
    end
    result.should == [2,3]
  end
end
