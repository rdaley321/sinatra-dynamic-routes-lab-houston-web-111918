require_relative 'config/environment'

class App < Sinatra::Base
  get "/reversename/:name" do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get "/square/:number" do
    @number = params[:number].to_i
    "#{@number*@number}"
  end
  
  get "/say/:number/:phrase" do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    string = ""
    @number.times do |i|
      string << @phrase
    end
    string
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
    
    get '/:operation/:number1/:number2' do
      @operation = params[:operation]
      @number1 = params[:number1]
      @number2 = params[:number2]
      string = ""
      if @operation == "add"
        string << "#{@number1 + @number2}"
      elsif @operation == "subtract"
        string << "#{@number1 - @number2}"
      elsif @operation == "multiply"
        string << "#{@number1 * @number2}"
      elsif @operation == "divide"
        string << "#{@number1 / @number2}"
      end
      string
    end
  end
  
end