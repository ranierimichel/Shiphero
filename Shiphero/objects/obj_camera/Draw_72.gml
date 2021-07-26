/// @description 3d camera

// Update 3d camera
//var _camW = camera_get_view_width(camera);
//var _camH = camera_get_view_height(camera);
//var _camX = camera_get_view_x(camera) + _camW / 2;
//var _camY = _camH + 200; //camera_get_view_y(camera) + _camH / 2;
//var _camX1 = _camW/2;
//var _camY1 = 0;

if(instance_exists(obj_ship_father)){
	camxfrom = lerp(camxfrom,obj_ship_father.x,.05);
	camyfrom = lerp(camyfrom,obj_ship_father.y+200,.05);
}

camxto = camxfrom;
camyto = 0;

var _viewMat = matrix_build_lookat(camxfrom, camyfrom, camDist, camxto, camyto, 0, 0, 1, 0);
var _projMat = matrix_build_projection_perspective_fov(camFov, camAsp, 3, 30000);

camera_set_view_mat(camera, _viewMat);
camera_set_proj_mat(camera, _projMat);

camera_apply(camera);