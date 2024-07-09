local direction = 1  -- 1 for right, -1 for left
local speed = 2

function onCreate()
	setProperty('defaultCamZoom', getProperty('defaultCamZoom') - 0.035)
    setProperty("skipCountdown", true)
end

function onCreatePost()
    addCharacterToList('the2ndsalad', 'bf')

    makeAnimatedLuaSprite('Cloudy', 'Dreaming/dreamscreen', 0, -20, true)
    addAnimationByPrefix('Cloudy', 'Mover', 'dreamscreen', 24, true)
    addLuaSprite('Cloudy', true)
    objectPlayAnimation('Cloudy', 'Mover', false)
    scaleObject('Cloudy', 1.68, 1.68)
    setObjectCamera('Cloudy', 'other')

    makeLuaSprite('Dark', 'Dreaming/black', -4150, -450)
    addLuaSprite('Dark', true)
    scaleObject('Dark', 57, 57)
    setObjectCamera('Dark', 'hud')

    setProperty('healthBar.alpha', 0)
    setProperty('healthBarBG.alpha', 0)
    setProperty('iconP1.alpha', 0)
    setProperty('iconP2.alpha', 0)

    setProperty('timeBar.visible', false)
    setProperty('timeBarBG.visible', false)

    makeLuaSprite('wallsSafe', 'Dreaming/butcheryback', -5000, -500)
    scaleObject('wallsSafe',4,4)
    addLuaSprite('wallsSafe', false)

	makeLuaSprite('wallsSafe2', 'Dreaming/butcheryfront', -5000, -500)
    addLuaSprite('wallsSafe2', true)
	scaleObject('wallsSafe2', 8, 8)

    noteTweenX('opponew0', 0, -1000, 1.5, 'quartInOut')
    noteTweenX('opponew1', 1, -1000, 1.5, 'quartInOut')
    noteTweenX('opponew2', 2, -1000, 1.5, 'quartInOut')
    noteTweenX('opponew3', 3, -1000, 1.5, 'quartInOut')

    noteTweenX('playnew0', 4, 415, 1, 'quartInOut')
    noteTweenX('playnew1', 5, 525, 1, 'quartInOut')
    noteTweenX('playnew2', 6, 635, 1, 'quartInOut')
    noteTweenX('playnew3', 7, 745, 1, 'quartInOut')


end

function startWalkingAnimation()
    doTweenX('moveRight', 'wallsSafe', -1330, 9, 'linear')
end

function startWalkingAnimation2()
    doTweenX('moveRight2', 'wallsSafe2', 80, 7.2, 'linear')
end

function startBoyfriendWalking()
    doTweenY('bfUp', 'boyfriend', getProperty('boyfriend.y') - 40, 0.5, 'linear')
end

function onTweenCompleted(tag)
    if tag == 'moveRight' then
        setProperty('wallsSafe.x', -5000)  -- Reset position instantly
        startWalkingAnimation()  -- Restart the tween
    end
	if tag == 'moveRight2' then
        setProperty('wallsSafe2.x', -5000)  -- Reset position instantly
        startWalkingAnimation2()  -- Restart the tween
    end
    if tag == 'bfUp' then
        doTweenY('bfDown', 'boyfriend', getProperty('boyfriend.y') + 40, 0.5, 'linear')
    elseif tag == 'bfDown' then
        startBoyfriendWalking()
    end
end

function onUpdate(elapsed)
    -- Your onUpdate logic if needed
end
function onTimerCompleted(ulisegas)
if ulisegas == 'uli' then
startVideo('hubertevent')
end
end
function onSongStart()
    startWalkingAnimation()
	startWalkingAnimation2()
	startBoyfriendWalking()
    setProperty('timeBar.visible', false)
    setProperty('timeBarBG.visible', false)
    setProperty('scoreTxt.visible', false)
    setProperty('timeTxt.visible', false)

    doTweenAlpha('Darkie', 'Dark', 0, 5, 'easeIn')
    doTweenAlpha('Notes', 'noteStrums', 0, 5, 'easeIn')
end

function onStepHit()
    if curStep == 305 then
        setProperty('dad.x', -1000)
        doTweenX('dad', 'dad', 40, 2, 'linear')

    elseif curStep == 317 then
		cancelTween('moveRight2')
		cancelTween('moveRight')
		cancelTween('bfDown')
		cancelTween('bfUp')

        setProperty('defaultCamZoom', getProperty('defaultCamZoom') + 0.035*2.85)
        doTweenZoom('waldo you idot', 'camGame', getProperty('defaultCamZoom'), crochet / 1000, 'quadInOut')
        doTweenAlpha('alphaFrontTwn', 'wallsSafe2', 0, crochet / 1000, 'quadInOut')
   
    elseif curStep == 400 then
		setProperty('defaultCamZoom', getProperty('defaultCamZoom') - 0.035*1.74)
        noteTweenX('oppo0', 0, 105, 0.0001, 'easeOut')
        noteTweenX('oppo1', 1, 217, 0.0001, 'easeOut')
        noteTweenX('oppo2', 2, 329, 0.0001, 'easeOut')
        noteTweenX('oppo3', 3, 439, 0.0001, 'easeOut')

        noteTweenX('flay0', 4, 715, 0.0001, 'quartInOut')
        noteTweenX('flay1', 5, 825, 0.0001, 'quartInOut')
        noteTweenX('flay2', 6, 935, 0.0001, 'quartInOut')
        noteTweenX('flay3', 7, 1045, 0.0001, 'quartInOut')

        setProperty('healthBar.alpha', 100)
        setProperty('healthBarBG.alpha', 100)
        setProperty('iconP1.alpha', 100)
        setProperty('iconP2.alpha', 100)

        setProperty("camHUD.alpha", 1)
        setProperty('scoreTxt.visible', true)
    elseif curStep == 1720 then
		runTimer('uli',2)
        cameraFade("hud", "FFFFFF", 1.5, true)
    end
end
