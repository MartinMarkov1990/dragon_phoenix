"The Dragon and the Phoenix" by Martin Markov

Release along with an interpreter.

Part 0 - Words - Not for release

Yourself can be unclawed or clawed. Yourself is unclawed. Yourself can be hearty or dog-hearted. Yourself is dog-hearted. Yourself can be bitey or non-bitey. Yourself is non-bitey. Yourself can be winged or grounded. Yourself is grounded.
Instead of examining the player:
	say "[if player is hearty]You feel yourself better and wiser than you once were. It's like you grew up a whole year in a day. [run paragraph on]";
	say "[if player is bitey]Your muzzle has grown quite longer than you remember it. Running your tongue, it seems your teeth are also sharper. Also, your throat seems dry, almost burning. [run paragraph on]";
	say "[if player is winged]A pair of leathery wings sprout from your back[else]Your coat is black, soft and shiny[end if]. [run paragraph on]";
	say "[if player is clawed]Your claws have grown long and shine under the light almost like metal[else]Your paws are soft, smooth and agile. Your claws are white and neat, since Mom insists on cutting them for you[end if]."

Instead of taking the heart:
	say "The heart rises in the air, starts glowing, and turns into a ray of light that shoots straight at your heart. You feel a warm light spreading inside you. Your mind expands to new understanding and you feel you can now talk to people.";
	now the heart is nowhere;
	now the player is hearty.

Instead of taking the claw:
	say "The claw attaches itself to one of your claws. Suddenly, it, and all your other claws, start growing, and turn from white to a strange, metallic black. You feel dangerous.";
	now the claw is nowhere;
	now the player is clawed.

Instead of taking the wing:
	say "The wing is suddenly picked up by a gust of wind. It floats in the air, until landing softly on your back. You feel it splitting in two, and attaching the halves behind your shoulder plates. The process is not painful, takes only a couple of minutes, and then you feel lighter.";
	now the wing is nowhere;
	now the player is winged.
	
Instead of taking the ash:
	say "You try carefully picking the ash in your maw, but swallow it accidentally. Your intestines feel like they're on fire, and you wonder if your muzzle will fall off from the pain. Eventually the pain subsides. The fire, on the other hand, doesn't...";
	now the ash is nowhere;
	now the player is bitey.

Part 1 - In the park

Park is a room. "[if park is unvisited]You've been tugging at the end of your leash, but Mom's been holding you back the whole way.  Finally, you've reached the park. [end if]It is a beautiful day with neary a cloud roaming in the sky, and the park is full with people and other dogs.".
The ball is here. "[one of]Mom pulls out your favourite chewed out tennis ball, and throws it. 'Go [bold type]fetch the ball[roman type], Drake!'. The tennis ball rolls next to a large tree.[or]Your favourite ball is sitting next to a large tree.[stopping]". 
Mom is a person in the park.  "Mom is waiting for you."

Understand "fetch [something]" as taking.

After taking the ball:
	say "'Now [bold type]give me the ball[roman type], Drake!'".

Instead of giving the ball to Mom:
	move ball to Mom;
	say "'Good Boy!', says Mom, and gives you a treat. You gulp it immediately and wag your tail in delight".
	
Instead of waiting:
	say "You played in the park for hours, dashing around the people and chasing the other dogs. When Mom finally brought you home, you were so tired you were not even able to have your dinner. You just fell in your bed in the flat's corridor, and doze off.";
	move player to the tavern.



Part 2 - The Tavern

The Tavern is a room. "[if unvisited]In your sleep, you try rolling around in your bed. It feels surprusingly hard, and you wake up startled, next to a lit fireplace. [end if]You are in a large room with several long wooden tables with benches, and a bar. A large oaken log is slowly burning in the fireplace, producing more heat than light. Shadows dance around the room, barely lighting the faces of the people here. ".

The tavern keeper is a man in the tavern. "A surly, bald man stands behind the bar, absent-mindedly washing a glass with an extremely dirty cloth.".
Understand "bald man" or "barkeep" or "barkeeper" or "bartender" as tavern keeper.

A stranger is a person in the tavern. "A tall man wearing a [list of things worn by the stranger] is sitting, cross-legged, next to the fire. He is carrying [a list of things carried by the stranger]. Many silver hairs shimmer in his otherwise dark beard. A raven is sitting on his shoulder.". The stranger is carrying a long staff and wearing a long, gray cloak and an eyepatch.
Understand "tall man" or "cloaked man" or "cloaked stranger" or "Odin" as the stranger. 
The raven is an animal. The raven is here. The raven is scenery.

The phoenix engraving is in the tavern. "Above the fireplace hangs a peculiar engraving of a bird that appears to be on fire. You notice that occasionally the tall man throws a look at it and appears very thoughtful.".
Instead of touching the engraving:
	if the player is grounded:
		say "You can hardly reach the engraving from the ground.";
	otherwise:
		say "You spread your wings and smoothly glide to the engraving as soon as you touch it, it gains colour in a flurry of sparks. Its [if player is bitey]flames, [end if][if player is hearty]eyes, [end if][if player is clawed]clawes, [end if][if player is bitey or player is hearty or player is clawed]and [end if]wings start glowing.";
	if the player is winged and the player is clawed and the player is bitey and the player is hearty:
		say "The bird on the engraving seems to come to live as it radiates sunlight. Suddenly, with a bright flash, it turns into a small, crimson egg.";
		say "Touching the egg seems to make the entire world spin.";
		end the story saying "You wake up in your own bed. Once more, your coat is black and shiny, instead of made of scales, you have no wings on your back, and the fire inside your lungs seems to have quelled. Curiously though, under your paws you feel a warm, oval object.".
	
The claw, heart, ash and wing are things in the Tavern.

The front door is a door. "A door made out of brown logs held together by metal rings is on the [if location is front lawn]wall of the Tavern[else]south wall. The coat rack and the welcome mat next to it suggest it is the front door[end if]." The front door is south of the tavern and north of the Front Lawn.
The indefinite article of the front door is "the".

The description of the front lawn is "Outside the tavern, you see it is a large building painted white, with a red roof and a small brick chimney.[line break]There is a large empty space on which several carts are parked.[line break]A wide dirt road stretches in front of you. To the east a large statue towers in the middle of the village square with. To the west you can see a tall metal fence surrounding a number of graves overgrown with ivy, with a mausoleum made of white stone in the back of it."

The green door is a door. "[if location is tavern]Next to the far side of the bar, on the west side of the tavern, there is a green door with a circular window, apparently leading to the garden.[otherwise]Through the green door's window you can see the tavern keeper still 'cleaning' the same glass."
The green door is west of the Tavern.
The green door is east of the Garden.
Understand "garden door" or "door with window" or "green door with window" as the green door.
The indefinite article of the green door is "the".

The description of the garden is "A number of sickly-looking vegetables grow around the garden of the tavern. A huge rose bush grows next to the wall of the tavern. A dinky door blocks a trail into the hill behind the tavern.".
The dinky door is a door in the garden. The dinky door is north of the garden. The dinky door is south of the Hill. The dinky door is not lockable. The dinky door is scenery.

The description of the hill is "You stand amid the golden wheat at the top of the hill. You can see the tavern's red roof, and the door to its garden. To the north, you can see a trail leading off into the mountains. To the west you see a forest in the distance.".

Part 3 - The Mountain

The Mountain Trail is north of the hill.

Part 4 - The Forest

The Forest Entrance is west of the hill.

Part 5 - The Village Square
 
The Village Square is east of the front lawn.

Part 6 - Graveyard

The Graveyard Entrance is west of the front lawn.
The metal door is a door. The metal door is south of the graveyard entrance and west of the graveyard.
The metal door is locked. The matching key of the metal door' is the round iron key.

