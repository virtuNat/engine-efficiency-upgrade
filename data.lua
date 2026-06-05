-- Recipes to modify.
if mods["space-age"] or mods["um-standalone-foundry"] then
	local engine_recipe = data.raw.recipe["engine-unit"]
	if not engine_recipe.additional_categories then
		engine_recipe.additional_categories = {}
	end
	table.insert(engine_recipe.additional_categories, "metallurgy")

	-- local engine_recipe = table.deepcopy(data.raw.recipe["engine-unit"])
	-- engine_recipe.name = "engine-pressing"
	-- engine_recipe.category = "metallurgy"
	-- engine_recipe.enabled = true

	-- data:extend {engine_recipe}
end

if mods["space-age"] or mods["um-standalone-electromagnetic-plant"] then
	local electric_engine_recipe = data.raw.recipe["electric-engine-unit"]
	if not electric_engine_recipe.additional_categories then
		electric_engine_recipe.additional_categories = {}
	end
	table.insert(electric_engine_recipe.additional_categories, "electromagnetics")

	-- local electric_engine_recipe = table.deepcopy(data.raw.recipe["electric-engine-unit"])
	-- electric_engine_recipe.name = "electric-engine-magnetizing"
	-- electric_engine_recipe.category = "electromagnetics"
	-- electric_engine_recipe.enabled = true

	-- data:extend {electric_engine_recipe}
end
