-- Recipes to add.
if mods["space-age"] or mods["um-standalone-foundry"] then
	local engine_recipe = table.deepcopy(data.raw.recipe["engine-unit"])
	engine_recipe.name = "engine-pressing"
	engine_recipe.category = "metallurgy"
	engine_recipe.enabled = true

	data:extend {engine_recipe}
end

if mods["space-age"] or mods["um-standalone-electromagnetic-plant"] then
	local electric_engine_recipe = table.deepcopy(data.raw.recipe["electric-engine-unit"])
	electric_engine_recipe.name = "electric-engine-magnetizing"
	electric_engine_recipe.category = "electromagnetics"
	electric_engine_recipe.enabled = true

	if mods["Cerys-Moon-of-Fulgora"] then
		table.insert(electric_engine_recipe.surface_conditions, {
			property = "cerys-ambient-radiation",
			min = 400,
		})
	end

	data:extend {electric_engine_recipe}
end
