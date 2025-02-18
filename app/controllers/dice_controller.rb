class DiceController < ApplicationController
  def index
    cookies[:rolls] ||= "0"  # Initialize rolls as string
    cookies[:rolls] = cookies[:rolls].to_i + 1  # Convert to integer and increment

    cookies[:last_rolls] ||= [].to_json  # Initialize empty JSON array
    last_rolls = JSON.parse(cookies[:last_rolls])  # Parse stored JSON data
    new_roll = { die1: rand(1..6), die2: rand(1..6) }
    last_rolls << new_roll
    last_rolls = last_rolls.last(5)  # Keep last 5 rolls
    cookies[:last_rolls] = last_rolls.to_json  # Store back as JSON

    @die1, @die2 = new_roll.values_at(:die1, :die2)
    @total = @die1 + @die2
    @roll_count = cookies[:rolls].to_i  # Convert back to integer
    @previous_rolls = last_rolls

    render :template => "dice/index"
  end
end


#roll the dice page to be a game that recognizes the user.

#Internet has no way to hold state in memory. 
#Lifecycle does not care about anything else. Internet is stateless