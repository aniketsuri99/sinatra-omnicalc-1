require "sinatra"
require "sinatra/reloader"

get("/square/new") do
  erb(:new_square_calc)
end

get("/square/results") do
  
  @the_num = params.fetch("users_number").to_f
  @the_result = @the_num ** 2

  erb(:square_results)
end

get("/square_root/new") do
  erb(:new_square_root_calc)
end

get("/square_root/results") do
  
  @the_num = params.fetch("users_number").to_f
  @the_result = @the_num ** 0.5

  erb(:square_root_results)
end

get("/random/new") do
  erb(:random_calc)
end
get("/random/results") do
  
  @the_num1 = params.fetch("user_min").to_f
  @the_num2 = params.fetch("user_max").to_f
  @the_result = rand(@the_num1..@the_num2)
  

  erb(:random_results)
end


get("/payment/new") do
  erb(:payment_calc)
end

get("/payment/results") do
  
  @the_num1 = params.fetch("user_min").to_f
  @APR = params.fetch("APR").to_f
  @the_num2 = params.fetch("user_max").to_f
  @the_result = rand(@the_num1..@the_num2)
  

  erb(:random_results)
end

get("/") do
  "
  <h1>Welcome to your Sinatra App!</h1>
  <p>Define some routes in app.rb</p>
  "
end
