require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:root)
end

# If the user plays rock
get("/rock") do

  moves = ["rock", "paper", "scissors"]
  @opponent_move = moves.sample

  if @opponent_move == "rock"
    @result = "tied"
  elsif @opponent_move == "paper"
    @result = "lost"
  elsif @opponent_move == "scissors"
    @result = "won"
  end

  erb(:rock)
end

# If the user plays paper
get("/paper") do

  moves = ["rock", "paper", "scissors"]
  @opponent_move = moves.sample

  if @opponent_move == "rock"
    @result = "won"
  elsif @opponent_move == "paper"
    @result = "tied"
  elsif @opponent_move == "scissors"
    @result = "lost"
  end

  erb(:paper)
end

# If the user plays scissors
get("/scissors") do

  moves = ["rock", "paper", "scissors"]
  @opponent_move = moves.sample

  if @opponent_move == "rock"
    @result = "lost"
  elsif @opponent_move == "paper"
    @result = "won"
  elsif @opponent_move == "scissors"
    @result = "tied"
  end

  erb(:scissors)
end
