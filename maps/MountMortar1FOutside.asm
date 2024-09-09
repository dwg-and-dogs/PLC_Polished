MountMortar1FOutside_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  3, 33, ROUTE_42, 3
	warp_event 17, 33, ROUTE_42, 4
	warp_event 37, 33, ROUTE_42, 5
	warp_event 17,  5, MOUNT_MORTAR_2F_INSIDE, 1
	warp_event 11, 21, MOUNT_MORTAR_1F_INSIDE, 1
	warp_event 29, 21, MOUNT_MORTAR_1F_INSIDE, 2
	warp_event 17, 29, MOUNT_MORTAR_B1F, 2
	warp_event  7, 13, MOUNT_MORTAR_1F_INSIDE, 3
	warp_event 33, 13, MOUNT_MORTAR_1F_INSIDE, 4

	def_coord_events

	def_bg_events
	bg_event 25, 22, BGEVENT_ITEM + HYPER_POTION, EVENT_MOUNT_MORTAR_1F_OUTSIDE_HIDDEN_HYPER_POTION

	def_object_events
	itemball_event 13, 15, ETHER, 1, EVENT_MOUNT_MORTAR_1F_OUTSIDE_ETHER
	itemball_event 31, 18, REVIVE, 1, EVENT_MOUNT_MORTAR_1F_OUTSIDE_REVIVE
