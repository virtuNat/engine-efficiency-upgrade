-- Recipes to modify.
if mods["space-age"] or mods["um-standalone-foundry"] then
	local engine_recipe = data.raw.recipe["engine-unit"]
	if not engine_recipe.additional_categories then
		engine_recipe.additional_categories = {}
	end
	table.insert(engine_recipe.additional_categories, "metallurgy")
end

if mods["space-age"] or mods["um-standalone-electromagnetic-plant"] then
	local electric_engine_recipe = data.raw.recipe["electric-engine-unit"]
	if not electric_engine_recipe.additional_categories then
		electric_engine_recipe.additional_categories = {}
	end
	table.insert(electric_engine_recipe.additional_categories, "electromagnetics")
end
