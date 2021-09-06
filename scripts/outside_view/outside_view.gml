/// @description outside_view()
function outside_view() {

	/*
	**  Usage:
	**      outside_view()
	**
	**  Returns:
	**      Whether or not the object is outside the view (View 0)
	*/
	return bbox_right < __view_get( e__VW.XView, 0 ) - 16 or bbox_left > __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) + 16 or bbox_bottom < __view_get( e__VW.YView, 0 ) - 16 or bbox_top > __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) + 16



}
