require_relative 'player'

class Game

  attr_reader :selection

  def initialize player
    @player = player
    @selection = ["rock", "paper", "scissors" ]
  end


  def computer_choice
    selection[rand(3)]
  end

  def result player
    # fail 'Please choose one of the options: rock, scissors or paper' if player.select == ""
    if win? player
      "You win!"
    elsif draw? player
      "Draw!"
    else
      "You lost, sorry!"
    end
  end

  def win? player
    # TODO refactor opportunity here - christ knows how though
    player.select == 'rock' && self.computer_choice == 'scissors' ||
    player.select == 'scissors' && self.computer_choice == 'paper' ||
    player.select == 'paper' && self.computer_choice == 'rock'
  end

  def draw? player
    player.select == self.computer_choice
  end

end
