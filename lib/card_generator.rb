require_relative 'card'
require 'byebug'

class CardGenerator
  # name, dribbling, shot_power, sprint_speed, passing, stamina
  PLAYERS = [["Cristiano Ronaldo", 92, 92, 92, 83, 92],
             ["Lionel Messi", 97, 85, 87, 88, 74],
             ["Neymar", 96, 78, 90, 81, 79],
             ["Luis Suárez", 86, 87, 77, 83, 89],
             ["Robert Lewandowski", 85, 86, 82, 83, 79],
             ["Gareth Bale", 89, 91, 95, 86, 78],
             ["Eden Hazard", 93, 79, 87, 84, 77],
             ["Luka Modrić", 86, 73, 71, 92, 83],
             ["Mesut Özil", 86, 70, 68, 89, 69],
             ["Gonzalo Higuaín", 84, 86, 81, 73, 73],
             ["Sergio Agüero", 89, 87, 86, 79, 74],
             ["Paul Pogba", 89, 90, 79, 85, 91],
             ["Antoine Griezmann", 87, 81, 86, 79, 75],
             ["Kevin De Bruyne", 85, 85, 78, 89, 85],
             ["Marco Reus", 86, 87, 91, 86, 73],
             ["Alexis Sánchez", 89, 84, 84, 80, 85],
             ["Toni Kroos", 78, 87, 37, 89, 78],
             ["Iniesta", 90, 65, 73, 92, 64],
             ["James Rodríguez", 84, 86, 75, 80, 68],
             ["Pierre-Emerick Aubameyang", 82, 81, 96, 77, 79],
             ["Arturo Vidal", 76, 84, 74, 84, 93],
             ["Ivan Rakitić", 84, 84, 65, 87, 76],
             ["David Silva", 85, 71, 65, 91, 73],
             ["Arjen Robben", 91, 86, 86, 84, 68],
             ["Paulo Dybala", 91, 82, 85, 83, 83],
             ["Marco Verratti", 88, 66, 64, 90, 77],
             ["David Alaba", 79, 83, 86, 83, 87],
             ["Henrikh Mkhitaryan", 87, 87, 84, 85, 85],
             ["Christian Eriksen", 84, 80, 74, 89, 88],
             ["Thomas Müller", 75, 77, 79, 75, 90],
             ["Thiago", 90, 75, 68, 90, 74],
             ["Jordi Alba", 80, 64, 93, 79, 90],
             ["SUPER TRUNFO", 99, 99, 99, 99, 99]]

  def perform
    cards = []
    position_count = 0

    (1..8).to_a.each do |n|
      ["A", "B", "C", "D"].each do |l|
        player = PLAYERS[position_count]
        cards << Card.new("#{n.to_s}#{l}", *player) # Uses thes splat (*) operator to convert an array into arguments
        position_count += 1
      end
    end

    player = PLAYERS[position_count]
    cards << Card.new("ST", *player) # uses thes splat (*) operator to convert an array into arguments

    cards
  end
end