"The Dragon and the Phoenix" by Martin Markov

Release along with an interpreter.

Include Rideable Vehicles by Graham Nelson



Part -1 - Debug stuff - Not for release

[just doesn't work]
Teleporting is an action applying to two things.
Instead of teleporting:
	if the second noun is a room:
		now the noun is in the second noun;
	otherwise:
		now the noun is in the location of the player.
	
Rule for deciding the scope of the player while teleporting:
	repeat with item running through things:
		place item in scope.
			
Understand "teleport [something] to [somewhere]" or "port [something] [somewhere]" as teleporting.



Part 0 - Words

Chapter 1 - Things and values

[send to their proper locations when ready]The claw, heart, ash and wing are things.

When play begins: now the right hand status line is "Time: [time of day]".

A thing can be violent or peaceful. Things are usually peaceful.
A thing can be flammable or non-flammable. Things are usually non-flammable.
A mortal is a kind of animal. A mortal can be dead or alive. A mortal is usually alive. Mortals are usually violent.

A wasp is a kind of mortal.
The bird of prey is a mortal. Understand "the bird" as the bird of prey.

A worm chow is a kind of thing. A worm chow is edible. A worm chow has a number called saturation.
A carapace is a kind of worm chow. A carapace usually has saturation 4. There are three carapaces.

The bottle of wine is a thing.

A zombie is a kind of mortal. A zombie is usually flammable.
Instead of attacking a zombie when the player is clawed:
	say "You claw and claw, but it doesn't seem to stop the zombie menace.".
There are four zombies.
	

Chapter 2 - Verbs

The block burning rule is not listed in the check burning rulebook.
Check burning something:
	If the player is non-bitey:
		say "How exactly are you planning to burn it?" instead;
	If the noun is non-flammable:
		say "That's not gonna end up alright." instead.
Carry out burning something:
	if the noun is a mortal:
		now the noun is dead;
	now the noun is nowhere.
Report burning something:
	say "You burn [the noun] to crisps.".

Check attacking something:
	if the noun is peaceful, say "You don't think [the noun] is threatening." instead;
	if the player is unclawed, say "You can hardly do anything to [the noun] like that." instead.
The block attacking rule is not listed in the check attacking rulebook.
Carry out attacking something:
	now the noun is nowhere.	
Report attacking something:
	say "You claw [the noun] into a thousand pieces.";
Instead of attacking the bird of prey when the player is unclawed:
	say "You stand your ground against the bird. It flies away, cawing loudly.";
	now the bird of prey is nowhere.
After attacking a mortal when the player is clawed:
	now the noun is dead;
	continue the action.

Waiting more is an action applying to one number. 
Understand "wait [a time period]" or "wait for [a time period]" or "wait for a/an [a time period]" or "wait a/an [a time period]" as waiting more. 
Carry out waiting more: 
	let the target time be the time of day plus the time understood; 
	decrease the target time by one minute; 
	while the time of day is not the target time: 
		follow the turn sequence rules. 
Report waiting more: 
	say "It is now [time of day + 1 minute]." 




Chapter 3 - Phoenix parts

Yourself can be unclawed or clawed. Yourself is unclawed. Yourself can be hearty or dog-hearted. Yourself is dog-hearted. Yourself can be bitey or non-bitey. Yourself is non-bitey. Yourself can be winged or grounded. Yourself is grounded.
Instead of examining the player:
	say "[if player is hearty]You feel yourself better and wiser than you once were. It's like you grew up a whole year in a day. [run paragraph on]";
	say "[if player is bitey]Your muzzle has grown quite longer than you remember it. Running your tongue, it seems your teeth are also sharper. Also, your throat seems dry, almost burning. [run paragraph on]";
	say "[if player is winged]A pair of leathery wings sprout from your back[else]Your coat is black, soft and shiny[end if]. [run paragraph on]";
	say "[if player is clawed]Your claws have grown long and shine under the light almost like metal[else]Your paws are soft, smooth and agile. Your claws are white and neat, since Mom insists on cutting them for you[end if]."

Instead of taking the heart:
	say "The heart rises in the air, starts glowing, and turns into a ray of light that shoots straight at your heart. You feel a warm light spreading inside you. Your mind expands to new understanding and you feel you can now talk to people.";
	now the heart is nowhere;
	repeat with N running from 1 to the number of filled rows in the Table of Hints:
		choose row N in the Table of Hints;
		if the item entry is "heart", blank out the whole row;
	sort Table of Hints in item order;
	now the player is hearty.

Instead of taking the claw:
	say "The claw attaches itself to one of your claws. Suddenly, it, and all your other claws, start growing, and turn from their normal white to a strange, metallic black. You feel dangerous.";
	now the claw is nowhere;
	repeat with N running from 1 to the number of filled rows in the Table of Hints:
		choose row N in the Table of Hints;
		if the item entry is "claw", blank out the whole row;
	sort Table of Hints in item order;
	now the player is clawed.

Instead of taking the wing:
	say "The wing is suddenly picked up by a gust of wind. It floats in the air, until landing softly on your back. You feel it splitting in two, and attaching the halves behind your shoulder plates. The process is not painful, takes only a couple of minutes, and then you feel lighter.";
	now the wing is nowhere;
	repeat with N running from 1 to the number of filled rows in the Table of Hints:
		choose row N in the Table of Hints;
		if the item entry is "wing", blank out the whole row;
	sort Table of Hints in item order;
	now the player is winged.
	
Instead of taking the ash:
	say "You try carefully picking the ash in your maw, but swallow it accidentally. Your intestines feel like they're on fire, and you wonder if your muzzle will fall off from the pain. Eventually the pain subsides. The fire, on the other hand, doesn't...";
	now the ash is nowhere;
	repeat with N running from 1 to the number of filled rows in the Table of Hints:
		choose row N in the Table of Hints;
		if the item entry is "ash", blank out the whole row;
	sort Table of Hints in item order;
	now the player is bitey.


Chapter 4 - Tables

Table of Hints
item	hint
"heart"	"Having trouble navigating the forest? Listen to my raven, he knows the way."
"heart"	"To cross the lake, find something to carry your weight."
"heart"	"Helping others is a reward in itself, but may provide you with actual rewards, if you are persistent enough."
"claw"	"You can sneak down past the barkeep if you try hard enough, or you bribe him with some old wine."
"claw"	"Zombies don't like being [bold type]burned[roman type], nor the midday sun. Remember, you can [bold type]wait[roman type] for some hours, if necessary."
"claw"	"Sometimes hexes can be helpful."
"wing"	"The wing is in the mountains."
"ash"	"The ash is under the village monument."
"final"	"After getting everything, touch the engraving of the phoenix."



Part 1 - In the park

Park is a room. "[if park is unvisited]You've been tugging at the end of your leash, but Mom's been holding you back the whole way.  Finally, you've reached the park. [italic type](This is a tutorial, if you want to skip it, just [bold type]wait[italic type].).[roman type][end if]It is a beautiful day with neary a cloud roaming in the sky, and the park is full with people and other dogs.".
The ball is here. "[one of]Mom pulls out your favourite chewed out tennis ball, and throws it. 'Go [bold type]fetch the ball[roman type], Drake!'. The tennis ball rolls next to a large tree.[or]Your favourite ball is sitting next to a large tree.[stopping]". 
Mom is a person in the park.  "Mom is waiting for you."

The white dog is an animal. The white dog can be known, smelled, heard, examined or unknown. The white dog is unknown. The description of the white dog is "Actually a lovely dog-lady, a tad older and wiser than you, but still quite jovial and mischevious.". The white dog is nowhere.

Understand "fetch [something]" as taking.

After taking the ball:
	say "'Now [bold type]give me the ball[roman type], Drake!'".

Instead of giving the ball to Mom:
	move ball to Mom;
	say "'Good Boy!', says Mom, and gives you a treat. You gulp it immediately and wag your tail in delight.";
	now the white dog is in the park;
	say "A big white dog runs over to play with you.";
	say "'It seems you've found a friend, Drake!. Go [bold type]examine[roman type] her!'".
	
After examining the white dog when the white dog is unknown:
	now the white dog is examined;
	say "'Now try [bold type]smell[roman type]ing her, Drake.'";
Instead of smelling the white dog when the white dog is examined:
	say "In the time-honoured tradition of dogs, you smell each other's behinds. She's been eating fish.";
	say "'Good, Drake! Now [bold type]listen[roman type] to her!";
	now the white dog is smelled.
Instead of listening to the white dog when the white dog is smelled:
	say "She barks at you happily. You wag your tail.";
	say "'Why don't you [bold type]tell[roman type] her about something now?'";
	now the white dog is heard.
Instead of telling the white dog about something when the the white dog is heard:
	say "You bark at the white dog about [the second noun].";
	say "'Very good! Now try [bold type]go[roman type]ing [bold type]north[roman type], then [bold type]look[roman type]ing around and [bold type]go[roman type]ing back [bold type]south[roman type].'";

The Alley is north of the park. "You find yourself into a small allery. People are coming or going to the park. The trees are fewer here, and the asphalt starts overwhelming the grass.". The willow is a supporter in the alley. "A willow tree is dropping its branches over the alley." A birdhouse is on the willow. "A couple of sparrows have made their home in the crown of the willow, chirping happily while continuing work on their nest.".  The birdhouse is fixed in place. The willow is fixed in place. Understand "sparrow nest" as the birdhouse.
After going to the park from the alley:
	say "'Good boy, Drake! Now, go do whatever you want. I'll be here, [bold type]wait[roman type]ing.'".	
	
Instead of waiting or waiting more in the Park:
	say "You played in the park for hours, dashing around the people and chasing the other dogs. When Mom finally brought you home, you were so tired you were not even able to have your dinner. You just fell in your bed in the flat's corridor, and doze off.";
	move player to the tavern.



Part 2 - The Tavern

The Tavern is a room. "[if unvisited]In your sleep, you try rolling around in your bed. It feels surprusingly hard, and you wake up startled, next to a lit fireplace. [end if]You are in a large room with several long wooden tables with benches, and a bar. Next to it you can see a stairway leading down. A large oaken log is slowly burning in the fireplace, producing more heat than light. Shadows dance around the room, barely lighting the faces of the people here. ".

The tavern keeper is a man in the tavern. "A surly, bald man stands behind the bar, absent-mindedly washing a glass with an extremely dirty cloth.".
Understand "bald man" or "barkeep" or "barkeeper" or "bartender" as tavern keeper.

A stranger is a person in the tavern. "A tall man wearing a [list of things worn by the stranger] is sitting, cross-legged, next to the fire. He is carrying [a list of things carried by the stranger]. Many silver hairs shimmer in his otherwise dark beard. A raven is sitting on his shoulder.[if the stranger is not talked to] He seems like a person that would be worthwile to [bold type]listen to[roman type].[end if]". The stranger is carrying a long staff and wearing a long, gray cloak and an eyepatch. The stranger can be talked to. The stranger is not talked to.
Understand "tall man" or "cloaked man" or "cloaked stranger" or "Odin" as the stranger. 
The raven is an animal. The raven is here. The raven is scenery.
Instead of listening to the stranger:
	If the stranger is not talked to:
		say "The stranger looks at you, then turns his gaze to the engraving.[paragraph break]'They say the phoenix is reborn again, after it dies, pup.', he starts. 'And that is true.'.[paragraph break]'And yet, here it is, turned into a lifeless representation of what it once was.'[paragraph break]'Everything is made of base parts, and the phoenix is no exception.'[paragraph break]'Some time ago, its essence got taken from it. I don't know how, or who did it - I only found out when it was too late.'[paragraph break]'I do know, however, that the phoenix's parts - its heart, wing, ash, and claw, are here.'[paragraph break]'Find them. Come back here. Touch the engraving. I'll make sure to return you to your home, with the reward you deserve.'";
		now the stranger is talked to;
	otherwise:
		choose a random row from Table of Hints;
		say "[hint entry]".
Instead of listening to raven:
	say "[one of]The raven caws and looks to the north[or]The raven looks west[or]The raven looks south[or]The raven is silent[cycling]."

The phoenix engraving is in the tavern. "Above the fireplace hangs a peculiar engraving of a bird that appears to be on fire. You notice that occasionally the tall man throws a look at it and appears very thoughtful.".
Instead of touching the engraving:
	if the player is grounded:
		say "You can hardly reach the engraving from the ground.";
	otherwise:
		say "You spread your wings and smoothly glide to the engraving as soon as you touch it, it gains colour in a flurry of sparks. Its [if player is bitey]flames, [end if][if player is hearty]eyes, [end if][if player is clawed]clawes, [end if][if player is bitey or player is hearty or player is clawed]and [end if]wings start glowing.";
	if the player is winged and the player is clawed and the player is bitey and the player is hearty:
		say "The bird on the engraving seems to come to live as it radiates sunlight. Suddenly, with a bright flash, it turns into a small, crimson egg.";
		say "Touching the egg seems to make the entire world spin.";
		end the story finally saying "You wake up in your own bed. Once more, your coat is black and shiny, instead of made of scales, you have no wings on your back, and the fire inside your lungs seems to have quelled. Curiously though, under your paws you feel a warm, oval object.".
	
The front door is a door. "A door made out of brown logs held together by metal rings is on the [if location is front lawn]wall of the Tavern[else]south wall. The coat rack and the welcome mat next to it suggest it is the front door[end if]." The front door is south of the tavern and north of the Front Lawn.
The indefinite article of the front door is "the".

The Basement is down from the tavern. "Jars, bottles, crates and boxes of all kinds are scattered around the basement." The cheese is here. "A hunk of yellow cheese is sitting on one of the boxes.". The round iron key is here. "Something is shimmering on a crate in the furthest corner. On closer inspection it seems to be an iron key with a round end.".

Instead of going to the basement:
	if the tavern keeper is carrying the bottle of wine:
		say "The barkeep nods at you.";
		continue the action;
	if a random chance of 1 in 6 succeeds:
		say "You manage to sneak by the tavern keeper and go downstairs.";
		continue the action;
	otherwise:
		say "The barkeep glares at you."
Instead of giving the bottle of wine to the tavern keeper:
	move the bottle of wine to the tavern keeper;
	say "The barkeep grunts something in thanks, then nods towards the staircase.".

The description of the front lawn is "Outside the tavern, you see it is a large building painted white, with a red roof and a small brick chimney.[line break]There is a large empty space on which several carts are parked.[line break]A wide dirt road stretches in front of you. To the east a large statue towers in the middle of the village square with. To the west you can see a tall metal fence surrounding a number of graves overgrown with ivy, with a mausoleum made of white stone in the back of it."

The green door is a door. "[if location is tavern]Next to the far side of the bar, on the west side of the tavern, there is a green door with a circular window, apparently leading to the garden.[otherwise]Through the green door's window you can see the tavern keeper still 'cleaning' the same glass."
The green door is west of the Tavern.
The green door is east of the Garden.
Understand "garden door" or "door with window" or "green door with window" as the green door.

The description of the garden is "A number of sickly-looking vegetables grow around the garden of the tavern. A huge rosebush grows next to the wall of the tavern. A dinky door blocks a trail into the hill behind the tavern.".
The dinky door is a door in the garden. The dinky door is north of the garden. The dinky door is south of the Hill. The dinky door is not lockable. The dinky door is scenery.
A rose is a kind of worm chow. The saturation of a rose is always 12. The rosebush is a supporter in the garden. The rosebush is scenery. Ten roses are on the rosebush.
Rule for listing contents of the rosebush:
	say "[if the number of roses that are on the rosebush is greater than 1]several roses are scattered like blotches of blood red paint[else]a single rose is drawing the eye, its petals the colour of blood[end if]" instead. 
Understand "red rose" as rose.
Understand "bush" as rosebush.
Instead of putting something on the rosebush:
	if the noun is a rose:
		say "You can't really reattach the rose to the bush.";
	otherwise:
		say "The rosebush can't really support that.".

The description of the hill is "You stand amid the golden wheat at the top of the hill. You can see the tavern's red roof, and the door to its garden. To the north, you can see a trail leading off into the mountains. To the west you see a forest in the distance.".



Part 3 - The Mountain

The Mountain Trail is north of the hill.



Part 4 - The Forest

The Forest Entrance is west of the hill. "As you proceed west, you enter a forest of tall beech trees. At first walking around seems easy, but you can see that the trees get thicker, and there are more and more bushes in the way.[line break]There are two paths leading deeper into the forest. The trail to the west appears to be sloping down quite steeply. There's a sign next to it saying 'DANGER! WASPS! There is another trail to the north. It appears that the trees are particularly trick that way.".

The Wasp Hive is west of the Forest Entrance. "As you continue down the trail, [if any wasps are in the wasp hive]you hear a faint buzzing, which gradually gets louder. Suddenly, [number of wasps in the wasp hive in words] wasp[s] surround[end if][if number of wasps in the wasp hive is 1]s[end if][if any wasps are in the wasp hive] you. You don't think you'll be able to proceed[otherwise] you enjoy some peace and quiet. Down, beneath the trees, you can see the sparkling blue of lake water[end if]."[fix the text when visited]
Three wasps are here. The wasps are scenery.
After attacking the wasps:
	say "You claw the wasp into a thousand pieces.";
	say "The wasp's carapace falls next to its lifeless body.";
	now a random carapace not in the location of the player is in the location of the player.

Instead of going west in the wasp hive when wasps are in the wasp hive:
	say "There [if number of wasps in the wasp hive is greater than 1]are[else]is[end if] [number of wasps in the wasp hive in words] wasp[s] buzzing angrily at you. You won't be able to go that way."
	
The Forest Lake is west of the wasp hive. "You come accross a huge lake in the middle of the forest. To the west, in the lake's center, is an island, dominated by an oak so huge that its branches are reaching over the water. Lillies are scattered accross the lake's surface. A bunch of other flowers are littered on its banks."
The Forest Island is a room. "Landing on the island in the middle of the lake, you are stunned by the largeness of the tree. It did seem big from the other side of the lake, but standing under it, you feel that it's almost impossibly huge, and incomprehensibly old.". The forest island is west of the forest lake.
The huge tree is scenery in the forest island. The tree hollow is a container in the forest island. "[if the tree hollow is closed]On the bark you can see a tree hollow that's... closed with a door?[else]The tree hollow's gates are swinging freely in the wind.". The tree hollow is closed and locked. The holes are a part of the tree hollow. "[if the tree hollow is closed]There are fourteen holes on the gates of the hollow. You hear a faint whistling coming from them.[else]The caterpillars disappeared inside the holes. They seem to be creeping around the hollow.". The holes are fixed in place. The branch is a supporter. "The lowest branch of the tree is swooping down near the ground, entwined with the roots.". The branch is fixed in place. The nest of caterpillars is an animal on the branch. "[if unvisited]You notice a small nest, with [else]In the nest, [end if][count of nest] caterpillar[s] crawling around it. There are also a number of unhatched eggs. You feel like they need some help surviving. Perhaps you can give them some food: a flower, or part of an insect?". The nest of caterpillars has a number called count. The count of the caterpillars is 2.
The heart is in the tree hollow.
Instead of giving worm chow to the nest:
	say "The catterpillars seem to like it!";
	increase the count of the nest of caterpillars by the saturation of the noun;
	now the noun is nowhere.
	
An every turn rule:
	If the count of the nest of caterpillars is greater than 13 and the hollow is closed:
		say "You've taken good care of the caterpillars, and now it pays off. Fourteen of them crawl out of the nest and onto the doors of tree hollow. They plug in the little holes tightly. The wind, having nowhere to escape, now blows the doors open.";
		now the tree hollow is unlocked;
		now the tree hollow is open;
	otherwise:
		if the bird of prey is in the garden:
			let eaten be a random number between 1 and 3;
			say "The bird attacks the catterpillars, eating [eaten] of them, then flies away.";
			decrease the count of the nest of caterpillars by eaten;
			now eaten is 0;
			now the bird of prey is nowhere;
		otherwise:
			if the count of the nest of caterpillars is greater than 5 and the bird of prey is not dead and the tree hollow is closed and a random chance of 1 in 3 succeeds:
				say "A bird of prey appears from between the trees.";
				now the bird of prey is in the forest island.

A grassmaze room is a kind of room.
Instead of going nowhere from a grassmaze room:
	if a random chance of 1 in 2 succeeds:
		say "You get lost in the forest, somehow getting back at the forest entrance.";
		now the player is in the forest entrance;
	otherwise:
		say "You try to proceed, but are stopped by a wall of trees, bushes and brambles. This might not be the right way.".
		
The Thick Forest is a grassmaze room. "The forest is getting so thick you can hardly walk around the trees, and when you do, you get stuck in the ". The thick forest is north of the forest entrance. The large leaf is a rideable vehicle. The large leaf is here. "An extraordinary large mullein plant grows here. Its leaves are so large it seems they can support your weight.". The large leaf is portable.
Understand "leaves" or "mullein leaf" or "mullein leaves" as the large leaf.

Instead of going somewhere when the player is on the large leaf:
	If the location is the Forest Lake or the location is the Forest Island:
		continue the action;
	otherwise:
		say "Unsurprisingly, the leaf doesn't quite move. Try saying 'VROOM-VROOM', that'll TOTALLY work.".
Instead of going to the forest island when the player is in the forest lake and the player is not on the large leaf:
	if the player is grounded:
		say "You need to cross the lake somehow.";
	otherwise:
		say "You rise up in the air on your scaly wings, and fly over the lake.";
		continue the action.
Instead of going to the forest lake when the player is in the forest island and the player is not on the large leaf:
	if the player is grounded:
		say "You need to cross the lake somehow.";
	otherwise:
		say "You rise up in the air on your scaly wings, and fly over the lake.";
		continue the action.
Before going to the forest island when the player is in the forest lake and the player is on the large leaf:
	say "You gently float to the island on the mullein's leaf".
Before going to the forest lake when the player is in the forest island and the player is on the large leaf:
	say "You gently float to the lakeshore on the mullein's leaf".

The Dark Forest is a grassmaze room. "Trudging deeper in the forest, the canopy is letting very little pass trough, and it is getting hard to see.". The dark forest is north of the thick forest. A daffodil is a kind of worm chow. The saturation of the daffodil is 5. There are three daffodils in the dark forest.

The Wet Forest is a grassmaze room. "A stream is rumbling along nearby. Now not only trees, but also reeds and water are in your way.". The wet forest is west of the dark forest. The wet forest is north of the forest lake.



Part 5 - The Village Square
 
The Village Square is east of the front lawn.



Part 6 - Graveyard

The Graveyard Entrance is west of the front lawn.
The metal door is a door. "A door of old, yellowed iron, with a heavy padlock, is barring the entrance to the cemetary. The padlock is [if unlocked]unlocked[else]locked[end if]." The metal door is south of the graveyard entrance. The metal door is locked. The matching key of the metal door is the round iron key.
Before going from the graveyard entrance to the graves when the player is winged:
	say "You spread your wings and fly over the metal bars.";
	now the player is in the graves instead.
Before going from the graves to the graveyard entrance when the player is winged:
	say "You spread your wings and fly over the metal bars.";
	now the player is in the graveyard entrance instead.
The Graves are south of the metal door. "The graves here are dillapidated, nearly crumbling, and covered with ivy and various weeds. The villagers don't seem to be taking much care of them. ". Two zombies are in the graves.
Instead of doing something other than attacking, burning, looking or going when a zombie is in the location of the player, say "The zombie is in your face, preventing you from doing that.".
The stone door is a door. "[if closed]A heavy stone door blocks the entrance to the mausoleum. [initial appearance of the plaque][otherwise]The stone door is open to the side.[end if]". The stone door is closed and unopenable. The stone door is inside from the graves and outside from the Mausoleum.
The plaque is part of the stone door. "A weird stone plaque with some odd, geometric-shaped depressions, is on the door. There [is-are a list of things which are on the plaque]". The plaque is a supporter. The plaque is fixed in place.
Instead of putting something on the plaque:
	say "This doesn't seem to be possible.".
A round plate, a square plate, a triangle plate, and a hexagon plate are on the plaque. The round plate, the square plate, the triangle plate and the hexagon plate are fixed in place.
Instead of pushing the round plate:
	if there is an alive zombie not in the graves:
		say "The plate slides backwards and falls down somewhere. You hear a thunderclap behind you. Another zombie shows up behind you, seemingly from nowhere.";
		move a random alive zombie not in the graves to the graves;
		now the round plate is nowhere;
	otherwise:
		say "Nothing seems to happen.".
Instead of pushing the square plate:
	if there is an alive zombie not in the graves:
		say "The plate slides backwards and falls down somewhere. You hear a thunderclap behind you. Another zombie shows up behind you, seemingly from nowhere.";
		move a random alive zombie not in the graves to the graves;
		now the square plate is nowhere;
	otherwise:
		say "Nothing seems to happen.".
Instead of pushing the triangle plate:
	if there is an alive zombie not in the graves:
		say "The plate slides backwards and falls down somewhere. You hear a thunderclap behind you. Another zombie shows up behind you, seemingly from nowhere.";
		move a random alive zombie not in the graves to the graves;
		now the triangle plate is nowhere;
	otherwise:
		say "Nothing seems to happen.".
Instead of pushing the hexagon plate:
	say "The plate slides backwards and falls down somewhere. The stone door opens with a deep rumble.";
	now the hexagon plate is nowhere;
	now the stone door is open.
The description of the Mausoleum is "The mausoleum hasn't seen daylight in years. Cobwebs are littered in the corners, and an assortment of old, dry bones are scattered around in the dust.". The tomb is a container in the mausoleum. The tomb is closed, openable and not lockable. "An ancient tomb covered by a stone plate is laying in the middle of the room.". The claw is in the tomb.
An every turn rule:
	If time of day is 12 pm and there are alive zombies in the graves:
		repeat with z running through all alive zombies in the graves:
			now z is nowhere;
	if time of day is 3 pm:
		If there are alive zombies not in the graves:
			move a random alive zombie not in the graves to the graves;
		If there are alive zombies not in the graves:
			move a random alive zombie not in the graves to the graves.