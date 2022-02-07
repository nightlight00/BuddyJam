
view_width = 1920 / 4;
view_height = 1080 / 4;

window_scale = 2;

window_set_size(view_width * window_scale, view_height * window_scale);
window_center();

surface_resize(application_surface, view_width * window_scale, view_height * window_scale);

screenshake_magnitude = 0;
screenshake_time = 0;