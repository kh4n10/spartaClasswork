def deck_of_cards
	deck = []
	suits = ["♠", "♥", "♦", "♣"]
	suits.each do |suit|
		num = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A"]
		num.map! { |n| suit + n.to_s }
		deck.push(num)
	end
	deck.flatten.shuffle
end


# deals card method
def deal_card(hand, deck)
	hand.push(deck.pop)
end

# global variables
player_hand = []
dealer_hand = []
deck = deck_of_cards


# dealihg loop
2.times do
	deal_card(player_hand, deck)
	deal_card(dealer_hand,deck)
end

# puts player_hand
# puts dealer_hand

puts "player hand is #{player_hand}"
puts "dealers hand is #{dealer_hand}"

def check_value_both_hands (player_hand, dealer_hand)
	player_hand.map! { |card| card.chars.drop(1).join.to_i }
	puts player_hand.reduce(:+)
	# puts dealer_hand.to_i.reduce(:+)
end

puts check_value_both_hands(player_hand, dealer_hand)

