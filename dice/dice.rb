# Create a method in the dice class called `roll` that returns a random number
# between 1 and 6

#To test your solution run `rspec dice_spec.rb` in your terminal

class Dice

  def roll
    1 + rand(6)
  end

end
