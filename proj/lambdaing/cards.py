from classes import *

standard_cards = [
	TACard('Rachel, Bringer of Boba', 1200, 2200),
	TutorCard('RichRocks', 2100, 1000),
	TutorCard('Apoλλo, Answerer of Ed', 2100, 1300),
	TutorCard('Ratthew, King of the Rats', 2000, 1000),
	TutorCard('Hans, Compiler of Chaos', 1600, 1500),
	TACard('Cyrus, Cereal Consumer', 1500, 1500),
	TutorCard('jade, jabbering jester', 2299, 1001),
	TutorCard('Arnold, Description Here', 2000, 1200),
	TutorCard('Sophia, Soda Slayer', 1200, 2200),
	AICard('El Shroomster the Lamb, duh!', 1000, 2300),
	TACard('Abby, Queen of Geese', 2000, 1300),
	TutorCard('The λce', 1200, 2000),
	AICard('Amber, Aetherweaver', 2100, 1200),
	TACard('The Ace', 1700, 1500),
	AICard('Bashwat, Brains of the Balawat', 1000, 2000),
	AICard('Henry, Huggable Hipster', 1499, 1501),
	AICard('The Smasher', 1300, 2000),
	TutorCard('Ronald, Recursor of Recursion', 1000, 2300),
	TutorCard('Albs, Ahri Ace', 1700, 1100),
	TACard('Kevin, Random Schmoe Who Is Incredibly Powerful For Some Reason', 1800, 1500),
	TACard('λaryn, λord of λambdas', 1500, 1700),
	AICard('Alexander the Not So Great', 1600, 1700),
	AICard('λnto\'s λI ', 2000, 1000),
	TACard('Kotryna, Chaotic Neutral', 1300, 2100),
	TutorCard('Darlnim, Darklord', 1600, 1500),
	AICard('Jade, Lucky Fool', 2400, 1000),
	AICard('Anshu, Chieftain of Recursion', 1100, 2300),
	AICard('Rudy, Squirrel Whisperer', 1200, 2000),
	TACard('Christina, Stick Breaker', 1900, 1100),
	AICard('Adhvaith Thurvas, Caffeine-Powered Adverserial AI', 2100, 1100),
	TACard('Bryce, Fuzzy Fire Flinger', 2200, 1200),
	AICard('Zattack', 1000, 2100),
	InstructorCard('DeNero, Antihero', 6650, 6650),
	InstructorCard('Rao, Chaotic Wanderer', 0, 10000)
]

standard_deck = Deck(standard_cards)
player_deck = standard_deck.copy()
opponent_deck = standard_deck.copy()