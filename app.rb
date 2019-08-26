require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name].reverse
    "#{@name}"
  end

  get '/square/:number' do
    number = params[:number]
    (number.to_i**2).to_s
  end

  get '/say/:number/:phrase' do
    string = ""
    (params[:number].to_i).times do
      string += "#{params[:phrase]}\n"
    end
    string
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    if params[:operation] == "add"
      @solution = params[:number1].to_i + params[:number2].to_i
    elsif params[:operation] == "subtract"
      @solution = params[:number2].to_i - params[:number1].to_i
    elsif params[:operation] == "multiply"
      @solution = params[:number1].to_i * params[:number2].to_i
    else params[:operation] == "division"
      @solution = params[:number1].to_i / params[:number2].to_i
    end
    "#{@solution}"
  end 

  # get "/multiply/:num1/:num2" do
  #   @product = params[:num1].to_i * params[:num2].to_i
  #   "#{@product}"
  # end

end
