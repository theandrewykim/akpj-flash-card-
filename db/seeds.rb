User.create(username:"bob", password_hash:"password")

Deck.create(name:"best groups")
Deck.create(name:"worst groups")

Card.create(question: "Deck 1 Card 1", answer: "nothing", deck_id: 1)
Card.create(question: "Deck 1 Card 2", answer: "nothing", deck_id: 1)
Card.create(question: "Deck 1 Card 3", answer: "nothing", deck_id: 1)
Card.create(question: "Deck 1 Card 4", answer: "nothing", deck_id: 1)



Card.create(question:"Deck 2 Card 1", answer:"nothing", deck_id: 2 )
Card.create(question:"Deck 2 Card 2", answer:"nothing", deck_id: 2 )
Card.create(question:"Deck 2 Card 3", answer:"nothing", deck_id: 2 )
Card.create(question:"Deck 2 Card 4", answer:"nothing", deck_id: 2 )

# Card.all.save
# User.all.save
# Deck.all.save
# Round.all.save



# Deck.first.cards << Card.create(question: "who is the best group?", answer: "akpj")
# Deck.last.cards << Card.create(question:"who is the worst group?", answer:"Charlies group" )
# Deck.last.cards << Card.create(question:"who is the worst group?", answer:"Ryans group" )

