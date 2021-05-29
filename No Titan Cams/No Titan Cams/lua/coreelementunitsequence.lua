core:module("CoreElementUnitSequence")
core:import("CoreMissionScriptElement")
core:import("CoreCode")
core:import("CoreUnit")

ElementUnitSequence = ElementUnitSequence or class(CoreMissionScriptElement.MissionScriptElement)

--no titans tyvm
local orig_ElementUnitSequence_on_executed = ElementUnitSequence.on_executed
function ElementUnitSequence:on_executed(...)
	if self._values.enabled and Global.game_settings and not Network:is_client() then
		local trigger_list = self:values() and self:values().trigger_list
		if trigger_list and trigger_list[1] and trigger_list[1].notify_unit_sequence == "deathwish" then
			return
		end
	end
	orig_ElementUnitSequence_on_executed(self, ...)
end
