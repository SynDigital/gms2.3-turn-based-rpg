function sequence_layer_draw_begin () {
	if (event_type != ev_draw || event_number != 0) return;
	
	// Create
	if (!surface_exists(global.seqSurf)) {
		global.seqSurf = surface_create(global.Resolution.width, global.Resolution.height);
	}
	
	// Set target
	surface_set_target(global.seqSurf);
}

function sequence_layer_draw_end () {
	if (event_type != ev_draw || event_number != 0) return;
	
	surface_reset_target();
}