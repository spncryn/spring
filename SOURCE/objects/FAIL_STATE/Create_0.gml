/// @description Init
image_speed = 0
image_index = 0
depth       = -10

ALPHA       = 0
FADE_STATE  = 1
TEXT_ALPHA  = 0
FADE_SPEED  = 0.01
TIMER       = room_speed

if audio_is_playing(ogg_breakbot) audio_sound_gain(ogg_breakbot, 0, room_speed * 3)

TEXT = ""
if global.MATCHES > 0 {
	TEXT = choose("I guess I never grew up after all...", 
	"She doesn't give a damn about me...",
	"Where did I go wrong...?",
	"Damnit, why did I...?",
	"I don't understand...")
} else {
	TEXT = "I guess there never was anything for me, was there..."
}