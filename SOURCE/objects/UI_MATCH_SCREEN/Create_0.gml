/// @description Init
startmovement = false // Have the elements begun to animate into place?
hasmoved      = false // Have the elements already animated into place?
fadeAlpha     = 0     // Controls overall alpha of elements 
timer         = 0     // Introduces a short delay before the screen appears
DESTROY       = false // This will control how the match screen's exit behaviour
if !audio_is_playing(wav_match) audio_play_sound(wav_match, 1, false)