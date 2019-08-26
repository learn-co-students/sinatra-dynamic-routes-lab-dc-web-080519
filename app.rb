require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]
    @name.reverse
  end
  
  get '/square/:number' do
    @num = params[:number].to_i
    square = @num ** 2
    square.to_s
  end

  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @input = params[:phrase]
    repeated = []
    @num.times {repeated << @input}
    repeated
    # binding.pry
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    combo = [@word1, @word2, @word3, @word4, @word5]
    "#{combo.join(" ")}."
  end

  get '/:operation/:number1/:number2' do
    @op = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    if @op == "add"
      solution = @num1 + @num2
    elsif @op == "subtract"
      solution = @num1 - @num2
    elsif @op == "multiply"
      solution = @num1 * @num2
    elsif @op == "divide"
      solution = @num1 / @num2
    end
    solution.to_s
  end

end