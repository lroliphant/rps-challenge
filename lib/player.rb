class Player

  attr_accessor :chosen
  attr_reader :selection

  def initialize
    @selection = ["rock", "paper", "scissors" ]
    @chosen = ""
  end

  def choose(choice)
    @chosen = ""
    case choice
    when "rock"
      self.chosen = "rock"
    when "paper"
      self.chosen = "paper"
    when "scissors"
      self.chosen = "scissors"
    else
      raise "You have not made a valid selection"
    end
      self.chosen
  end

end
