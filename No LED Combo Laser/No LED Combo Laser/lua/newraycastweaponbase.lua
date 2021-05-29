Hooks:PostHook(NewRaycastWeaponBase, "toggle_gadget", "NoLedComboLaser_post_NewRaycastWeaponBase_toggle_gadget", function(self, ...)
	local gadget_on = self._gadget_on or 0
	local gadgets = self._gadgets
	if gadgets then
		if gadget_on > 0 and gadgets[gadget_on] == "wpn_fps_upg_fl_ass_utg" then
			self:toggle_gadget(...)
		end
	end
end)
