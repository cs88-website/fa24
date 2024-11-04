from classes import *

standard_cards = [
	TACard('Rachel, Bringer of Boba', 1200, 2200),
	TutorCard('RichRocks', 1800, 1600),
	TutorCard('Apoλλo, Answerer of Ed', 2000, 1400),
	TutorCard('Ratthew, King of the Rats', 2000, 1000),
	TutorCard('Hans, Compiler of Chaos', 1600, 1800),
	TACard('Cyrus, Cereal Consumer', 1500, 1500),
	TutorCard('jade, jabbering jester', 2299, 1001),
	TutorCard('Arnold, Description Here', 2100, 1300),
	TutorCard('Sophia, Soda Slayer', 1100, 2000),
	AICard('El Shroomster the Lamb, duh!', 1000, 2300),
	TACard('Abby, Queen of Geese', 1000, 2100),
	TutorCard('The λce', 1600, 1500),
	AICard('Amber, Aetherweaver', 1000, 2000),
	TACard('The Ace', 2000, 1000),
	AICard('Bashwat, Brains of the Balawat', 2400, 1000),
	AICard('Henry, Huggable Hipster', 1499, 1501),
	AICard('The Smasher', 1500, 1800),
	TutorCard('Ronald, Recursor of Recursion', 1000, 2300),
	TutorCard('Albs, Ahri Ace', 1700, 1100),
	TACard('Kevin, Random Schmoe Who Is Incredibly Powerful For Some Reason', 2200, 1100),
	TACard('λaryn, λord of λambdas', 2400, 1000),
	AICard('Alexander the Not So Great', 1600, 1600),
	AICard('λnto\'s λI ', 2000, 1000),
	TACard('Kotryna, Chaotic Neutral', 1600, 1600),
	TutorCard('Darlnim, Darklord', 1600, 1500),
	AICard('Jade, Lucky Fool', 1600, 1600),
	AICard('Anshu, Chieftain of Recursion', 2000, 1400),
	AICard('Rudy, Squirrel Whisperer', 1500, 1700),
	TACard('Christina, Stick Breaker', 1900, 1100),
	AICard('Adhvaith Thurvas, Caffeine-Powered Adverserial AI', 1800, 1500),
	TACard('Bryce, Fuzzy Fire Flinger', 1600, 1600),
	AICard('Zattack', 2100, 1300),
	InstructorCard('DeNero, Antihero', 6650, 6650),
	InstructorCard('Rao, Chaotic Wanderer', 0, 10000)
]

standard_deck = Deck(standard_cards)
player_deck = standard_deck.copy()
opponent_deck = standard_deck.copy()