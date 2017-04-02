// Unregister the sound controller
gmwUnregisterObject(id, global.DEFAULT_GROUP);

gmwUnregisterGroup(global.DEFAULT_GROUP);

// Unload the sound banks
gmwUnloadBank(global.TEST_BANK);
gmwUnloadBank(global.INIT_BANK);

// Stop GMWWise
gmwStop();

