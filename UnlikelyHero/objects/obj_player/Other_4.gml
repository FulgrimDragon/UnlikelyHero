/// @desc auto save

//overwrite old save
if (file_exists(SAVEFILE)) file_delete(SAVEFILE);

//create new save
var _file;
_file = file_text_open_write(SAVEFILE);
file_text_write_real(_file,room);
file_text_write_real(_file,global.points);
file_text_write_real(_file,global.ammo);
file_text_close(_file);
