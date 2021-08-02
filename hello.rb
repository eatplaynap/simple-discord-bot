require 'discordrb'
require 'dotenv/load'

bot = Discordrb::Bot.new(token: ENV['TOKEN'], client_id: ENV['CLIENT_ID'])


bot.message do |event|
  greeting = ["Hello", "Go to hell", "What's up", "Good bye"].sample
  event.send_message("#{greeting}, #{event.user.name}")
end

bot.run
