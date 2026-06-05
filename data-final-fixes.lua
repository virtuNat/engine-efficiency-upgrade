-- Enable the electric engine recipe on Cerys.
local recipe = data.raw.recipe["electric-engine-magnetizing"]

if mods["Cerys-Moon-of-Fulgora"] then
	if recipe.surface_conditions then
		for key, surface_conditions in pairs(recipe.surface_conditions) do
			if surface_conditions.property == "cerys-ambient-radiation" then
				recipe.surface_conditions[key] = nil
			end
		end
	end
end
