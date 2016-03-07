User.create(username:"Bob", password_hash:"password")
User.create(username:"Peter", password_hash:"password123")

Deck.create(name:"state capitals")
Deck.create(name:"math")

Card.create(question: "New York", answer: "Albany", deck_id: 1)
Card.create(question: "Georgia", answer: "Atlanta", deck_id: 1)
Card.create(question: "Mississippi", answer: "Jackson", deck_id: 1)
Card.create(question: "New Jersey", answer: "Trenton", deck_id: 1)
Card.create(question: "Texas", answer: "Austin", deck_id: 1)

Card.create(question: "5 + 5", answer: "10", deck_id: 2)
Card.create(question: "20 x 5", answer: "100", deck_id: 2)
Card.create(question: "250 - 50", answer: "200", deck_id: 2)
Card.create(question: "100 / 25", answer: "4", deck_id: 2)
Card.create(question: "250 + 250", answer: "500", deck_id: 2)



# Deck.create(name:"best groups")
# Deck.create(name:"worst groups")

# Card.create(question: "Deck 1 Card 1", answer: "nothing", deck_id: 1)
# Card.create(question: "Deck 1 Card 2", answer: "nothing", deck_id: 1)
# Card.create(question: "Deck 1 Card 3", answer: "nothing", deck_id: 1)
# Card.create(question: "Deck 1 Card 4", answer: "nothing", deck_id: 1)



# Card.create(question:"Deck 2 Card 1", answer:"nothing", deck_id: 2 )
# Card.create(question:"Deck 2 Card 2", answer:"nothing", deck_id: 2 )
# Card.create(question:"Deck 2 Card 3", answer:"nothing", deck_id: 2 )
# Card.create(question:"Deck 2 Card 4", answer:"nothing", deck_id: 2 )
