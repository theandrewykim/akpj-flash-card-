
post '/decks/cards/:id/rounds' do
  @answered_card = Card.find(params[:id])
  User.create(username:"Asian Peter", password_hash:"GreekPeter")
  Round.create(user_id:1, deck_id:1)

#    @answered_card.deck.all_correct?


#   if @answered_card.answer == params[:answer][:answer]
#     @answered_card.guesses << Guess.create(round_id: 1, correct?: true)
#     #Put this in the model later
#     @card = @answered_card.deck.cards.sample

#     if @card.guesses.empty? || @card.correct_yet?
#       @card = @card.deck.cards.sample
#     end

#   else
#      @card.guesses << Guess.create(round_id: 1, correct?: false)
#      @card = @answered_card.deck.cards.sample
#         if @card.guesses.empty? || @card.correct_yet?
#       @card = @card.deck.cards.sample
#     end
#  erb :'/rounds/show'
#   end
# end


# if @answered_card.answer == params[:answer][:answer]
#     until @answered_card.deck.all_correct?
#       @card = @answered_card.deck.cards.sample
#         until !@card.correct_yet?
#           @card.deck.cards.sample
#         end
#       erb :'/rounds/show'
#     end
#      "THIS WORKED MAN"
#   end
# end

def pick_card(card)
    if card.correct_yet?
     @card = card.deck.cards.sample
   else
    pick_card(@card)
  end
end

if @answered_card.answer == params[:answer][:answer]
  @answered_card.guesses << Guess.create(round_id: 1, correct?: true)
if  !@answered_card.deck.all_correct?

    pick_card(@answered_card.deck.cards.sample)
    erb :'/rounds/show'
else
  "FINISHED"
end
end
end

# #   end
# # "THIS WORKED MAN"
# # end
# end









  # @card.guesses << Guess.new(round_id: 1)
  # erb :'/rounds/show'
