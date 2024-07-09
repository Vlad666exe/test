function onCreate()
	makeLuaSprite('bg', 'Plush/plushbg', -200, -500)
	addLuaSprite('bg')
	scaleObject("bg", 3, 3, true)
end
function onCountdownTick(counter)
    if counter == 0 then
        playSound('skib/intro3', 1)
    end
    if counter == 1 then
        playSound('skib/intro2', 1)
    end
    if counter == 2 then

        playSound('skib/intro1', 1)
    end
    if counter == 3 then

        playSound('skib/introGo', 1)
    end
end