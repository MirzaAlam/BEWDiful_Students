require_relative "lib/player.rb"
require_relative "lib/game.rb"
require_relative "lib/secret.rb"

puts "Welcome to the secret number game!"
puts "This game was created by Brooks"
puts

puts "What's your name?"
name = gets.strip.capitalize

player = Player.new(name)

game = Game.new(player)

game.display_rules
game.start




