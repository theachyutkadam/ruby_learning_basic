class Athlete
  DEFAULT_COLOUR = 'white'

  def initialize
    @sock_colour = DEFAULT_COLOUR
    @shirt_colour = DEFAULT_COLOUR
    @headband_colour = DEFAULT_COLOUR
  end

  def play_game_for(team)
    get_dressed(team.colour)
    warmup
  end

  private

  def warmup
    p "#{self} is warming up"
  end

  def get_dressed(colour)
    @sock_colour = colour
    @shirt_colour = colour
    @headband_colour = colour
  end
  # private :warmup, :get_dressed
end

class Team
  attr_reader :colour

  def initialize(colour)
    @colour = colour
    @members = []
  end

  def recruit(athlete)
    @members << athlete unless @members.include? athlete
  end

  def play
    @members.each{|m| m.play_game_for(self)}
  end
end

# instantiate
athlete1 = Athlete.new
athlete2 = Athlete.new
athlete3 = Athlete.new
athlete4 = Athlete.new
team1 = Team.new('green')
team2 = Team.new('blue')

# teams recruit players
team1.recruit(athlete1)
team1.recruit(athlete2)

team2.recruit(athlete3)
team2.recruit(athlete4)

# play game
team1.play
team2.play

p ' game'
p team1.inspect
p team2.inspect
