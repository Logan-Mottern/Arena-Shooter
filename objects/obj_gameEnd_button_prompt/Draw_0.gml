//Locate Camera

var cx = camera_get_view_x(view_camera[0]);
var cy = camera_get_view_y(view_camera[0]);
var cw = camera_get_view_width(view_camera[0]);

//Draw Score

draw_set_font(fnt_gameEnd);
draw_set_colour(c_red);
draw_text(cx + (cw / 2), cy + 100, string(eaa));

