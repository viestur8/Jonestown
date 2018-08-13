  require 'sinatra'
  require 'swapir'
  require './products.rb'

  macaroon = QuickDeath.new('macaroon', '/cookies/3macaroons.jpeg', '$9.99', "Our famous Three Flavor Macaroons - Choice of Cyanide, Arsenic or Both")

  dare = QuickDeath.new('Truth or dare', '/cookies/truth_or_dare_cookies.jpeg', '$19.99', "For a more Exciting and Lethal Game night")
  bery = QuickDeath.new('Happy Berry', '/cookies/raspbery_on_top.jpeg', '$19.99', "A Classy night out..")


my_cookies = {
  macaroon: macaroon,
  dare: dare,
  bery: bery
  }
 happy = SlowDeath.new('Happy Birthday, ...', '/cakes/birthday_cake.jpg', '$199.99', "For a more Exciting Day in the Office")

 chair = SlowDeath.new('LZ Boy', '/cakes/chair.jpg', '$199.99', "After a long day at the Office")

 wedding1 = SlowDeath.new('True Love', '/cakes/wedding.jpg', '$199.99', "True Love Knows No Bounds")

 my_cakes = {
   happy: happy,
   chair: chair,
   wedding1: wedding1
 }


get '/' do
    erb :home
end

get '/cookies' do
      @cookies = my_cookies
      puts "HELLO WORLD"
      puts @cookies
      puts "HELLO WORLD"
    erb :cookies
end

get '/cakes' do
      @cakes = my_cakes
      puts "HELLO WORLD"
      puts @cakes
      puts "HELLO WORLD"
    erb :cakes
end
