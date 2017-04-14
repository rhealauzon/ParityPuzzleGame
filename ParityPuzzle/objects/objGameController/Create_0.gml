//make this a singleton essentially
if (instance_number(objGameController) > 1)
	instance_destroy(id);
	
else
{
	global.activeLevel = -1;
	global.NUM_LEVELS = 12;
	global.tutorialStep = 0;
	global.musicOn = true;
	global.levels[0] = false;
	
	var i;
	for (i = 1; i <= global.NUM_LEVELS; i++)
		global.levels[i] = false;
	
	//create a save file if it doesnt exist
	if (!saveFileExists())
		createSaveFile();
		
	//otherwise load one
	else
		loadGame();


	//create the sound controller
	instance_create_depth(0, 0, 0, objSoundController);	
}

//create the particle system!
global.P_System = part_system_create();
global.Particle = part_type_create();
part_system_depth(global.P_System, 90);

part_type_shape(global.Particle, pt_shape_disk);            //This defines the particles shape
part_type_size(global.Particle, 2, 4, -0.001, 0);                 //size
part_type_scale(global.Particle, 1, 1);                      //Scale
part_type_color1(global.Particle, c_white);                  //Colour
part_type_alpha1(global.Particle, 0.1);                      //Alpha
part_type_speed(global.Particle, 0.9, 1.0, 0, 0);         //The particles speed
part_type_direction(global.Particle, 56, 56, 0, 0);         //The direction
part_type_orientation(global.Particle, 0, 0, 0, 0, 1);       //This changes the rotation of the particle
part_type_blend(global.Particle, 0) ;                         //This is the blend mode, either additive or normal
part_type_life(global.Particle, 1700, 1700);                       //this is its lifespan in steps

//create an emitter
global.Particle_Emitter = part_emitter_create(global.P_System);
part_emitter_region(global.P_System, global.Particle_Emitter, -room_width * 2, room_width, room_height + 200, room_height + 200, ps_shape_rectangle, ps_distr_linear);
part_emitter_stream(global.P_System, global.Particle_Emitter, global.Particle, -8);

for (var i = 0; i < 60 * 20; i++)
{
	part_system_update(global.P_System);
}