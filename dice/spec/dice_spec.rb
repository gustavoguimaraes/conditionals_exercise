require_relative '../dice'

describe Dice, "#roll" do

  it "should return an Integer" do
    expect(Dice.new.roll).to be_a(Integer)
  end

  it "should return a number greater than 0" do
    Dice.new.roll.should be > 0
  end

  it "should return a number less than 7" do
    Dice.new.roll.should be < 7
  end

end