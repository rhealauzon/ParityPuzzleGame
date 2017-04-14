part_type_destroy(global.Particle);
part_emitter_destroy(global.P_System, global.Particle_Emitter);
part_system_destroy(global.P_System);
game_restart();