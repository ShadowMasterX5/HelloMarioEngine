/// @description Save Fullscreen + Filtering + VSync Settings

//Open the file
var file = file_text_open_write("Settings.dat")

//Save fullscreen settings
file_text_write_string(file,string(fullscreen))
file_text_writeln(file)

//Save filtering settings
file_text_write_string(file,string(filter))
file_text_writeln(file)

//Save vsync settings
file_text_write_string(file,string(vsync))

//Close the file
file_text_close(file)

