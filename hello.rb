require 'discordrb'
require 'dotenv/load'

bot = Discordrb::Commands::CommandBot.new token: "#{ENV['TOKEN']}", client_id: ENV['CLIENT_ID'], prefix: '!'

bot.command :hello do |event|
  greeting = ["Hello", "Go to hell", "What's up", "Good bye", "Guten Tag"].sample
  event.send_message("#{greeting}, #{event.user.name}!")
end

bot.command :test do |event|
  event.send_message("Hello")
end

bot.run
