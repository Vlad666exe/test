function onEvent(name, value1, value2)
	if name == "Add Camera Zoom Proper" then
		if cameraZoomOnBeat then
			setPropertyFromClass('flixel.FlxG', 'camera.zoom', getPropertyFromClass('flixel.FlxG', 'camera.zoom') + tonumber(value1))
			setProperty('camHUD.zoom', getProperty('camHUD.zoom') + tonumber(value2))
		end
	end
end