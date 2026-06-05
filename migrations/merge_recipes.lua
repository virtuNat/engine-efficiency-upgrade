for _, surface in pairs(game.surfaces) do
	for _, foundry in pairs(surface.find_entities_filtered {name = "foundry"}) do
		local recipe, quality = foundry.get_recipe()
		if recipe ~= nil and recipe.name == "engine-pressing" then
			foundry.set_recipe(data.raw.recipe["engine-unit"], quality)
		end
	end

	for _, emag_plant in pairs(surface.find_entities_filtered {name = "electromagnetic-plant"}) do
		local recipe, quality = emag_plant.get_recipe()
		if recipe ~= nil and recipe.name == "electric-engine-magnetizing" then
			emag_plant.set_recipe(data.raw.recipe["electric-engine-unit"], quality)
		end
	end
end
