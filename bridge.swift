#!/usr/bin/swift sh

import DeckOfPlayingCards // @NSHipster ~> 4.0.0
import PlayingCard
import Cycle // @NSHipster == bb11e28
class Player {
    var name: String
    var hand: [PlayingCard] = []
    
    init(name: String) {
        self.name = name
    }
}

extension Player: CustomStringConvertible {
    var description: String {
        var description = "\(name):"
        
        let cardsBySuit = Dictionary(grouping: hand) { $0.suit }
        for (suit, cards) in cardsBySuit.sorted(by: { $0.0 > $1.0 }) {
            description += "\t\(suit) "
            description += cards.sorted(by: >)
                .map{ "\($0.rank)" }
                .joined(separator: " ")
            description += "\n"
        }
        
        return description
    }
}

var north = Player(name: "North")
var west = Player(name: "West")
var east = Player(name: "East")
var south = Player(name: "South")

var deck = Deck.standard52CardDeck()
deck.shuffle()

let players = [north, west, east, south]
var round = players.cycled()

while let card = deck.deal(),
    let player = round.next()
{
    player.hand.append(card)
}

for player in players {
    print(player)
}
