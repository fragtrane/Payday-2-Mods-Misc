Hooks:Add("LocalizationManagerPostInit", "ShortColorPackNames_hook_LocalizationManagerPostInit", function(loc)
	loc:add_localized_strings({
		bm_global_value_wcs = "CP1",
		bm_global_value_wcc = "CP2",
		bm_global_value_ocp = "CP3",
		bm_global_value_faco = "JFSP1",
		bm_global_value_sawp = "JFSP2"
	})
end)
