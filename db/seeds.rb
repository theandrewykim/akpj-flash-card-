User.new(username:"Bob", password_hash:"password")
User.new(username:"Peter", password_hash:"password123")

User.all.each do |user|
  n=0
  user.rounds << Round.new(deck_id:n, user_id:n)
  n+=1
end



Deck.new(name:"best groups")
Deck.new(name:"worst groups")

Card.new(question: "Deck 1 Card 1", answer: "nothing", deck_id: 1)
Card.new(question: "Deck 1 Card 2", answer: "nothing", deck_id: 1)
Card.new(question: "Deck 1 Card 3", answer: "nothing", deck_id: 1)
Card.new(question: "Deck 1 Card 4", answer: "nothing", deck_id: 1)



Card.new(question:"Deck 2 Card 1", answer:"nothing", deck_id: 2 )
Card.new(question:"Deck 2 Card 2", answer:"nothing", deck_id: 2 )
Card.new(question:"Deck 2 Card 3", answer:"nothing", deck_id: 2 )
Card.new(question:"Deck 2 Card 4", answer:"nothing", deck_id: 2 )

# Card.all.save
# User.all.save
# Deck.all.save
# Round.all.save



# Deck.first.cards << Card.create(question: "who is the best group?", answer: "akpj")
# Deck.last.cards << Card.create(question:"who is the worst group?", answer:"Charlies group" )
# Deck.last.cards << Card.create(question:"who is the worst group?", answer:"Ryans group" )
