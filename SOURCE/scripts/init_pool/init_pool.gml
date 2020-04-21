/// @cred https://github.com/adenhumbert/shuffle-deck-and-map-cards
// Destroy any existing pool
if ds_exists(pool, ds_type_list) {
   ds_list_clear(pool)
   show_debug_message("Pool cleared.")
} else {
   pool = ds_list_create()
   show_debug_message("Pool created.")
}

ds_list_add(pool, "ali"   )
ds_list_add(pool, "Nina"  )
ds_list_add(pool, "hayley")
ds_list_add(pool, "Mia"   )
ds_list_add(pool, "Cassie")
ds_list_add(pool, "Tessa" )
show_debug_message("Deck initialised.")

return pool;