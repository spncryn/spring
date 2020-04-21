/// @desc Stores all the possible messages.
#region Ali
if global.dm_choose == 0 {
	switch global.c_variant {
		default : global.text_player_1 = "hey, what's up?"
					 global.text_other_1  = " "
					 break;
	}
}
#endregion

#region Nina
if global.dm_choose == 1 {
	switch global.c_variant {
		case 0 : global.text_player_1	= "cats or dogs?"
					global.text_other_1	= "ooo cats! you?" //CHOICE
	
					if op1 == 1  //cats
					{
						global.text_player_2	= "I'm a cat guy too!"
						global.text_other_2		= "haha nice!"
						global.text_player_3	= "yeah!"
						global.text_other_3		= " "
					}
	
					if op2 == 1  //dogs
					{
						global.text_player_2	= "I'm more into dogs myself."
						global.text_other_2		= "aww, that's too bad"
						global.text_player_3	= "guess you can say \ni love bitches, haha" 
						global.text_other_3		= " "
					}	
					break;
		default: 
		case 1:  global.text_player_1	= "you know your name means\n little girl in spanish?"
					global.text_other_1	= "am i supposed to be surprised" //CHOICE
					global.text_player_2	= "haha well... no i guess not"
					global.text_other_2		= "did you know your name means\n dumbass in english"
					global.text_player_3	= "haha..." 
					global.text_other_3		= " "
					break;
	}

}
#endregion

#region Hayley
if global.dm_choose == 2 {
	switch global.c_variant {
		case 0 : global.text_player_1		= "heyley"
					global.text_other_1		= "lol" 
					global.text_player_2	= "how are you doing?"
					global.text_other_2		= "good!"
					global.text_player_3	= "nice nice, any plans for\n this weekend?"
					global.text_other_3		= "probably gonna watch the office lol"
					global.text_player_4	= "haha, yeah, not much to\n do outside huh?"
					global.text_other_4		= "yep."
					global.text_player_5	= "so do you have any pets?" 
					global.text_other_5		= " "
		case 1 : global.text_player_1		= "heyyy"
					global.text_other_1		= "that's a lot of y's" 
					global.text_player_2	= "do you know what\n many y's means?"
					global.text_other_2		= "that you're a dumbass?"
					global.text_player_3	= "haha... it means im interested"
					global.text_other_3		= "in what, being a dumbass?"
					global.text_player_4	= "haha, no. in you. i mean we matched"
					global.text_other_4		= "yeah that was accidental"
					global.text_player_5	= "oh" 
					global.text_other_5		= "yep, finger slipped. sorry!"
					global.text_player_6	= "damn..." 
					global.text_other_6		= " "
		default: global.text_player_1		= "Hey! You from around here?"
					global.text_other_1		= "yeah" 
					global.text_player_2	= "Know any good spots for a date?"
					global.text_other_2		= "museums"
					global.text_player_3	= "Is there a museum you\nprefer in particular?"
					global.text_other_3		= "art"
					global.text_player_4	= "Bet I can guess your fave art style"
					global.text_other_4		= "go for it"
					global.text_player_5	= "Minimalism" 
					global.text_other_5		= " "
					break;
	}
}
#endregion

#region Mia
if global.dm_choose == 3 {
	switch global.c_variant {
		case 0 : global.text_player_1		= "are you an antiquer?"
					global.text_other_1		= "no, why" 
					global.text_player_2	= "i got some junk that hasn't been\n touched in years"
					global.text_other_2		= "hahahaha"
					global.text_player_3	= "pretty funny right?" 
					global.text_other_3		= " "
					break;
		case 1 : global.text_player_1		= "Mamma mia! Here I go again..."
					global.text_other_1		= "lol" 
					global.text_player_2	= "How could I resist ya?"
					global.text_other_2		= " "
					break;
		case 2 : global.text_player_1		= "you look kinda like updog"
					global.text_other_1		= "?" 
					global.text_player_2	= "you've got some updog going on"
					global.text_other_2		= "uh..."
					global.text_player_3	= "not much dog what's up with you" 
					global.text_other_3		= " "
					break;
	}
}
#endregion

#region Cassie
if global.dm_choose == 4 {
	switch global.c_variant {
		case 0 : global.text_player_1	= "hey"
					global.text_other_1	= "hey there, your cute :)" //CHOICE
	
					if op1 == 1
					{
						global.text_player_2	= "*you're"
						global.text_other_2		= "k"
						global.text_player_3	= "i was just kidding" 
						global.text_other_3		= " "
					}
	
					if op2 == 1
					{
						global.text_player_2	= "thanks you too!"
						global.text_other_2		= "what are you up to?"
						global.text_player_3	= "nothing much just watching a show"
						global.text_other_3		= "what show?"
						global.text_player_4	= "its called welcome to the nhk"
						global.text_other_4		= "i know what that is!"
						global.text_player_5	= "oh nice! i like it so far."
						global.text_other_5		= "nvm not the show i was thinking of" //CHOICE
					}
	
					if op2 == 1
					{
						global.text_player_6	= "its just some anime"
						global.text_other_6		= "whats it about"
						global.text_player_7	= "a guy who's depressed and anxious"
						global.text_other_7		= "is it good?"
						global.text_player_8	= "so he shuts himself away for years"
						global.text_other_8		= "oh so its about a neet!"
						global.text_player_9	= "then he meets this girl"
						global.text_other_9		= "hello?"
						global.text_player_10	= "he thinks she'll save him"
						global.text_other_10	= "are you getting my messages?"
						global.text_player_11	= "yea, turns out she's as shitty as him"
						global.text_other_11	= "oh"
						global.text_player_12	= "she only likes him because..."
						global.text_other_12	= "... because?"
						global.text_player_13	= "he's the only person she thinks..."
						global.text_other_13	= "why are you typing like this?"
						global.text_player_14	= "is more unworthy of life than her."
						global.text_other_14	= "i see..."
						global.text_player_15	= "honestly its pretty relatable" //UNMATCHED
						global.text_other_15	= " "
					}
	
					if op1 == 1
					{
						global.text_player_6	= "gotcha, anyways you doing anything?"
						global.text_other_6		= "nah just hanging out"
						global.text_player_7	= "you want to hang out sometime?"
						global.text_other_7		= "cant with corona and all"    //CHOICE
					}
	
					if op1 == 1
					{
						global.text_player_8	= "true, how are you dealing with it all?"
						global.text_other_8		= "lol not well im so fucking bored"
						global.text_player_9	= "for sure i understand that"
						global.text_other_9		= "at this point i even miss going to work"
						global.text_player_10	= "yeah same..."
						global.text_other_10	= "what do you do?"
						global.text_player_11	= "im a game developer"
						global.text_other_11	= "oh cool! anything i've heard of?"
						global.text_player_12	= "nah probably not"
						global.text_other_12	= "do you enjoy it?"
						global.text_player_13	= "i have complex feelings about it"
						global.text_other_13	= "better than hating it right?"
						global.text_player_14	= "for sure! i get hung up on the bad parts"
						global.text_other_14	= "i think we all do that :)"
						global.text_player_15	= "what do you do?"
						global.text_other_15	= "hey sorry, i've gotta head out"
						global.text_player_16	= "all good! i enjoyed chatting"
						global.text_other_16	= "same! text me later!"
						global.text_player_17	= "whats your number?"		///END PHONE DIES
						global.text_other_17	= " "
					}
	
					//CANT
					if op3 == 1 {
						global.text_player_8	= "i understand" //UNMATCHED
						global.text_other_8		= " "
					}
					break;
					
		default: global.text_player_1	= "hey"
					global.text_other_1	= "hey there, your cute :)" //CHOICE
	
					if op1 == 1
					{
						global.text_player_2	= "*you're"
						global.text_other_2		= "k"
						global.text_player_3	= "i was just kidding" 
						global.text_other_3		= " "
					}
	
					if op2 == 1
					{
						global.text_player_2	= "thanks you too!"
						global.text_other_2		= "what are you up to?"
						global.text_player_3	= "nothing much just watching a show"
						global.text_other_3		= "what show?"
						global.text_player_4	= "its called welcome to the nhk"
						global.text_other_4		= "i know what that is!"
						global.text_player_5	= "oh nice! i like it so far."
						global.text_other_5		= "nvm not the show i was thinking of" //CHOICE
					}
	
					if op2 == 1
					{
						global.text_player_6	= "its just some anime"
						global.text_other_6		= "whats it about"
						global.text_player_7	= "a guy who's depressed and anxious"
						global.text_other_7		= "is it good?"
						global.text_player_8	= "so he shuts himself away for years"
						global.text_other_8		= "oh so its about a neet!"
						global.text_player_9	= "then he meets this girl"
						global.text_other_9		= "hello?"
						global.text_player_10	= "he thinks she'll save him"
						global.text_other_10	= "are you getting my messages?"
						global.text_player_11	= "yea, turns out she's as shitty as him"
						global.text_other_11	= "oh"
						global.text_player_12	= "she only likes him because..."
						global.text_other_12	= "... because?"
						global.text_player_13	= "he's the only person she thinks..."
						global.text_other_13	= "why are you typing like this?"
						global.text_player_14	= "is more unworthy of life than her."
						global.text_other_14	= "i see..."
						global.text_player_15	= "honestly its pretty relatable" //UNMATCHED
						global.text_other_15	= " "
					}
	
					if op1 == 1
					{
						global.text_player_6	= "gotcha, anyways you doing anything?"
						global.text_other_6		= "nah just hanging out"
						global.text_player_7	= "you want to hang out sometime?"
						global.text_other_7		= "cant with corona and all"    //CHOICE
					}
	
					if op1 == 1
					{
						global.text_player_8	= "true, how are you dealing with it all?"
						global.text_other_8		= "lol not well im so fucking bored"
						global.text_player_9	= "for sure i understand that"
						global.text_other_9		= "at this point i even miss going to work"
						global.text_player_10	= "yeah same..."
						global.text_other_10	= "what do you do?"
						global.text_player_11	= "im a game developer"
						global.text_other_11	= "oh cool! anything i've heard of?"
						global.text_player_12	= "nah probably not"
						global.text_other_12	= "do you enjoy it?"
						global.text_player_13	= "i have complex feelings about it"
						global.text_other_13	= "better than hating it right?"
						global.text_player_14	= "for sure! i get hung up on the bad parts"
						global.text_other_14	= "i think we all do that :)"
						global.text_player_15	= "what do you do?"
						global.text_other_15	= "hey sorry, i've gotta head out"
						global.text_player_16	= "all good! i enjoyed chatting"
						global.text_other_16	= "same! text me later!"
						global.text_player_17	= "whats your number?"		///END PHONE DIES
						global.text_other_17	= " "
					}
	
					//CANT
					if op3 == 1 {
						global.text_player_8	= "i understand" //UNMATCHED
						global.text_other_8		= " "
					}
					break;
	}
}
#endregion

#region Tessa
if global.dm_choose == 5
{
	switch global.c_variant
	{
		case 0 : global.text_player_1	= "what are your turnip prices?"	
			global.text_other_1		= "300 right now!" 
			global.text_player_2	= "nice, that's pretty good!"
			global.text_other_2		= "yeah! whats yours?" //CHOICE
			
	
			if op1 == 1  //switch
			{
				global.text_player_3	= "oh, well i actually don't have a switch"
				global.text_other_3		= "ah"
				global.text_player_4	= "lol" 
				global.text_other_4		= " "
			}
	
			if op2 == 1  //dont like animal crossing
			{
				global.text_player_3	= "oh, im not a fan of AC"
				global.text_other_3		= "oh... why'd you ask then?"
				global.text_player_4	= "i hear people are really into it!"
				global.text_other_4		= "ok"
				global.text_player_5	= "do you like any other games?" 
				global.text_other_5		= " "
			}
			break;
			
		case 1 : global.text_player_1	= "what's up four eyes?"
			global.text_other_1			= "you're one to talk!"
			
			if op1 == 1 //JK
			{
				global.text_player_2	= "I'm just kidding, they look great."
				global.text_other_2		= "thanks!"
				global.text_player_3	= "how blind are you?"
				global.text_other_3		= "just a little near-sightedness"
				global.text_player_4	= "well i'll just have to get closer then"
				global.text_other_4		= "haha, ur kinda funny"
				global.text_player_5	= "do you want to hear a joke"
				global.text_other_5		= "sure!"
				global.text_player_6	= "what does a horny toad say?"
				global.text_other_6		= "probably 'what's up four eyes'"
				global.text_player_7	= "what no... hey!"
				global.text_other_7		= "lol"
				global.text_player_8	= "i really can't beat that"
				global.text_other_8		= "i didn't think you would"
				global.text_player_9	= "so what else do you like besides jokes?"
				global.text_other_9		= "being outdoors mostly"
				global.text_player_10	= "oh yeah? what do you do out there?"
				global.text_other_10	= "some hiking. i like backpacking"
				global.text_player_11	= "oh nice, where do you hike at?"
				global.text_other_11	= " "
			}
			
			if op2 == 2 //double down
			{
				global.text_player_2	= "oh i don't actually have a prescription"
				global.text_other_2		= "what?"
				global.text_player_3	= "yeah these are just for aesthetics lol"
				global.text_other_3		= " "
			}
			break;
			
		default: global.text_player_1	= "what are your turnip prices?"	
			global.text_other_1		= "300 right now!" 
			global.text_player_2	= "nice, that's pretty good!"
			global.text_other_2		= "yeah! whats yours?" //CHOICE
			
	
			if op1 == 1  //switch
			{
				global.text_player_3	= "oh, well i actually don't have a switch"
				global.text_other_3		= "ah"
				global.text_player_4	= "lol" 
				global.text_other_4		= " "
			}
	
			if op2 == 1  //dont like animal crossing
			{
				global.text_player_3	= "oh, im not a fan of AC"
				global.text_other_3		= "oh... why'd you ask then?"
				global.text_player_4	= "i hear people are really into it!"
				global.text_other_4		= "ok"
				global.text_player_5	= "do you like any other games?" 
				global.text_other_5		= " "
			}
			break;
			
			
	}
}
#endregion


