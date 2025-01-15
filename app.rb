require "sinatra"
require "sinatra/reloader"

get("/") do
  title = "<h1>Welcome to Rock-Paper-Scissors!</h1>"
  erb(:index, layout: :layout,locals: { title: title, user: nil, computer: nil, result: nil })
end

get("/rock") do
  user = "<p>We played rock!</p>"
  computer = ["rock", "paper", "scissors"].sample
  result = ""

  if computer == "paper"
    result = "lost"
  elsif computer == "scissors"
    result = 'won'
  else 
    result = 'tied'
  end

  erb(:index, layout: :layout, locals: { title: nil, user: user, computer: computer, result: result })
end

get("/paper") do
  user = "<p>We played paper!</p>"
  computer = ["rock", "paper", "scissors"].sample
  result = ""

  if computer == "scissors"
    result = "lost"
  elsif computer == "rock"
    result = 'won'
  else 
    result = 'tied'
  end

  erb(:index, layout: :layout, locals: { title: nil, user: user, computer: computer, result: result })
end

get("/scissors") do
  user = "<p>We played scissors!</p>"
  computer = ["rock", "paper", "scissors"].sample
  result = ""
  
  if computer == "rock"
    result = "lost"
  elsif computer == "paper"
    result = 'won'
  else 
    result = 'tied'
  end

  erb(:index, layout: :layout, locals: { title: nil, user: user, computer: computer, result: result })
end
