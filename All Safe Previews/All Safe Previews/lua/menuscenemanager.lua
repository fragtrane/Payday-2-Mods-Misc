--Disable Weapon Preview Rotation by Offyerrocker
Hooks:PostHook(MenuSceneManager, "set_scene_template", "AllSafePreviews_MenuSceneManager_set_scene_template", function(self, ...)
	self._disable_rotate = true
end)

--Stop the breathing effect
Hooks:PostHook(MenuSceneManager, "setup_camera", "AllSafePreviews_MenuSceneManager_setup_camera", function(self, ...)
	if self._shaker then
		self._shaker:stop_all()
	end
end)
