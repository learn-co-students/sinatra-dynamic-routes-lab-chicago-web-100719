require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @number = params[:number].to_i
    "#{@number ** 2}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @string = @phrase * @number 
    "#{@string}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @words = params.collect { |k, v| v }.join(" ") + "."
    "#{@words}"
  end

  get '/:operation/:number1/:number2' do
    @op = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    case
    when @op == "add"
      "#{@number1 + @number2}"
    when @op == "subtract"
      "#{@number1 - @number2}"
    when @op == "multiply"
      "#{@number1 * @number2}"
    when @op == "divide"
      "#{@number1 / @number2}"
    end
  end
end