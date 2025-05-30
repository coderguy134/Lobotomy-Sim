x = camera_get_view_x(view_camera[0]) + offsetx + offsetxx
y = camera_get_view_y(view_camera[0]) + offsety

offsetxx += (cameraoffx - camera_get_view_x(view_camera[0])) / 20
offsetyy += (cameraoffy - camera_get_view_y(view_camera[0])) / 20

cameraoffx = camera_get_view_x(view_camera[0])
cameraoffy = camera_get_view_y(view_camera[0])

if abs(offsetxx) > 992 {
	offsetxx -= sign(992)
}
if abs(offsetyy) > 734 {
	offsetyy -= sign(734)
}