Hooks:PostHook(BlackMarketTweakData, "_init_player_styles", "OutfitLockedBugfix_post_BlackMarketTweakData__init_player_styles", function(self)
	for _, outfit_data in pairs(self.player_styles) do
		--Remove redundant achievement locks
		if outfit_data.locks and outfit_data.locks.achievement then
			outfit_data.locks = nil
		end
		--Check for variations
		if outfit_data.material_variations then
			for _, variation_data in pairs(outfit_data.material_variations) do
				--Remove redundant achievement locks
				if variation_data.locks and variation_data.locks.achievement then
					variation_data.locks = nil
				end
			end
		end
	end
end)
