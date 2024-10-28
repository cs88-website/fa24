from classes import *

standard_cards = [
	TACard('Rachel, Bringer of Boba', 1200, 2200),
	TutorCard('RichRocks', 2400, 1000),
	TutorCard('Apoλλo, Answerer of Ed', 2300, 1100),
	TutorCard('Ratthew, King of the Rats', 2000, 1000),
	TutorCard('Hans, Compiler of Chaos', 2100, 1300),
	TACard('Cyrus, Cereal Consumer', 1500, 1500),
	TutorCard('jade, jabbering jester', 2299, 1001),
	TutorCard('Arnold, Description Here', 2300, 1100),
	TutorCard('Sophia, Soda Slayer', 1700, 1500),
	AICard('El Shroomster the Lamb, duh!', 1000, 2300),
	TACard('Abby, Queen of Geese', 2000, 1100),
	TutorCard('The λce', 1200, 2100),
	AICard('Amber, Aetherweaver', 1000, 2200),
	TACard('The Ace', 2100, 1200),
	AICard('Bashwat, Brains of the Balawat', 1700, 1700),
	AICard('Henry, Huggable Hipster', 1499, 1501),
	AICard('The Smasher', 2000, 1400),
	TutorCard('Ronald, Recursor of Recursion', 1000, 2300),
	TutorCard('Albs, Ahri Ace', 1700, 1100),
	TACard('Kevin, Random Schmoe Who Is Incredibly Powerful For Some Reason', 1600, 1700),
	TACard('λaryn, λord of λambdas', 1900, 1500),
	AICard('Alexander the Not So Great', 2100, 1300),
	AICard('λnto\'s λI ', 2000, 1000),
	TACard('Kotryna, Chaotic Neutral', 1900, 1500),
	TutorCard('Darlnim, Darklord', 1000, 2300),
	AICard('Jade, Lucky Fool', 1700, 1500),
	AICard('Anshu, Chieftain of Recursion', 1900, 1500),
	AICard('Rudy, Squirrel Whisperer', 2000, 1400),
	TACard('Christina, Stick Breaker', 1900, 1100),
	AICard('Adhvaith Thurvas, Caffeine-Powered Adverserial AI', 1200, 2100),
	TACard('Bryce, Fuzzy Fire Flinger', 1500, 1900),
	AICard('Zattack', 2000, 1400),
	InstructorCard('DeNero, Antihero', 6650, 6650),
	InstructorCard('Rao, Chaotic Wanderer', 0, 10000)
]

standard_deck = Deck(standard_cards)
player_deck = standard_deck.copy()
opponent_deck = standard_deck.copy()