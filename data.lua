-- Recipes to modify.
if mods["space-age"] or mods["um-standalone-foundry"] then
	table.insert(data.raw.recipe["engine-unit"].categories, "metallurgy")
end

if mods["space-age"] or mods["um-standalone-electromagnetic-plant"] then
	table.insert(data.raw.recipe["electric-engine-unit"].categories, "electromagnetics")
end
