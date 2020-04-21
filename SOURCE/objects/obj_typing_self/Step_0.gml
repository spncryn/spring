if instance_exists(dm_player)
{
image_alpha = dm_player.image_alpha;
}

if(alarm[0] == -1)
{
	alarm[0]= rs*1; //this can be changed to make longer pauses
}