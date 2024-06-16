function onEvent(name, value1, value2)
	if name == "White Screen Flash" then
		if flashingLights then
			cameraFlash('game', '0xFFffffff', tonumber(value1), true)
			cameraFlash('hud', '0xFFffffff', tonumber(value2), true)
		end
	end
end