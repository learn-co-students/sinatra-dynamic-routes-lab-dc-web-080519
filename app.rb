require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name].reverse
    "#{@name}"
  end

  #Create a dynamic route at get '/square/:number' that accepts a number and returns the square of that number. Note: Remember that values in params always come in as strings, and your return value for the route should also be a string (use .to_i and .to_s).
  get '/square/:number' do
    @number = params[:number].to_i**2
    "#{@number}"
  end

  # Create a dynamic route at get '/say/:number/:phrase' that accepts a number and a phrase and returns that phrase in a string the number of times given.
  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    array = Array.new(@number).fill(@phrase)
  end

  # Create a dynamic route at get '/say/:word1/:word2/:word3/:word4/:word5' that accepts five words and returns a string containing all five words (i.e. word1 word2 word3 word4 word5).
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    array = []
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    array += [@word1, @word2, @word3, @word4, @word5]
    array.join(" ") + "."
  end
  
  # Create a dynamic route at get '/:operation/:number1/:number2' that accepts an operation (add, subtract, multiply or divide) and performs the operation on the two numbers provided. For example, going to /add/1/2 should render 3.
  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i

    if @operation == "add"
      sum = @number1 + @number2
      "#{sum}"
    elsif @operation == "subtract"
      sum = @number1 - @number2
      "#{sum}"
    elsif @operation == "multiply"
      product = @number1 * @number2
      "#{product}"
    elsif @operation == "divide"
      remainder = @number1 / @number2.to_f
      "#{remainder}"
    end
  end



end