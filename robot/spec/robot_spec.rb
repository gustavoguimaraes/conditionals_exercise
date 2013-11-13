require_relative "../robot"

RSpec.configure do |config|
  config.mock_framework = :mocha
end

describe Robot do

  let(:robot) { Robot.new }
  
  context "after the 15th" do

    before(:each) do
      date = mock()
      date.stubs(:day => 17)
      Date.stubs(:today => date) 
    end

    it "should be happy if the day of the month is after the 15th AND
    the temperature is hotter than 70 degrees." do
      robot.temperature(71).should eq("I am happy")
    end

    it "should be happy if the day of the month is after the 15th AND
    the temperature is hotter than 70 degrees." do
      robot.temperature(100).should eq("I am happy")
    end

    it "should be very happy if the day of the month is after the 15th AND
    the temperature is hotter than 100 degrees" do
      robot.temperature(101).should eq("I am very happy")
    end

    it "should be miserable if its after the 15th AND
    the temperature is 70 degrees or colder" do
      robot.temperature(70).should eq("I am miserable")
    end
  end

  context "before the 15th" do

    before(:each) do
      date = mock()
      date.stubs(:day => 14)
      Date.stubs(:today => date) 
    end

    it "should be sad if the day of the month is on or before the 15th AND
    the temperature is hotter than 70 degrees." do
      robot.temperature(71).should eq("I am sad")
    end

    it "should be sad if the day of the month is on or before the 15th AND
    the temperature is hotter than 70 degrees." do
      robot.temperature(100).should eq("I am sad")
    end

    it "should be very sad if the day of the month is on or before the 15th AND
    the temperature is hotter than 100 degrees" do
      robot.temperature(101).should eq("I am very sad")
    end

    it "should be very miserable if its on or before the 15th AND
    the temperature is 70 degrees or colder" do
      robot.temperature(70).should eq("I am very miserable")
    end
    
  end

  context "your name begins with a-j" do
    # if your name begins with the letters a-j
    # your robots optimal weight is your weight - 100, 
    # and if that is greater than 30 your robots optimal weight is 300
    it "weight less than 31" do
      robot.optimal_weight(110).should eq(10)
    end

    it "weight greater than 30" do
      robot.optimal_weight(131).should eq(300)
    end

    # if you name begins with the letters k-z
    # your robots optimal weight is your weight + 46, 
    # and if that is greater than or equal to 50 your robots optimal weight is 0
    # if that is less than 50 your robots optimal weight is 1000

  end

  context "your name beings with k-z" do
    it "weight less than 50" do
      robot.optimal_weight(3).should eq(1000)
    end

    it "weight greater than or equal to 50" do
      robot.optimal_weight(4).should eq(0)
    end
  end

  it "#optimal_height" do
    robot.optimal_height(43).should eq(307.14285714285717)
  end

end