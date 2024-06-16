local epicCoolCameraShit = true;
function onCreate()
        makeLuaSprite('bg', 'stone-bridge', 0, 0)
		setScrollFactor('bg', 1.0, 1.0)
        addLuaSprite('bg', false)
        
        makeAnimatedLuaSprite('rain', 'rain', 0, 0)
        addAnimationByPrefix('rain', 'rain', 'rain', 24, true)
        playAnim('rain', 'rain', true)
		setScrollFactor('rain', 1.3, 1.3)
        addLuaSprite('rain', true)

        setProperty('skipArrowStartTween', true)
end

function onCreatePost()
	for i=0,3 do
        setPropertyFromGroup('opponentStrums', i, 'x', -200) --fuckouttahere
        if not middlescroll then
            setPropertyFromGroup('playerStrums', i, 'x', _G['defaultOpponentStrumX'..i])
        end
    end
    setScrollFactor('boyfriend', 1.2, 1.2)
    setTextFont('scoreTxt', 'Minecraftia-Regular.ttf')
    setProperty('scoreTxt.y', getProperty('scoreTxt.y') - 5)
    setTextFont('timeTxt', 'Minecraftia-Regular.ttf')
    setProperty('timeTxt.y', getProperty('timeTxt.y') - 5)
    setTextFont('botplayTxt', 'Minecraftia-Regular.ttf')
    setProperty('botplayTxt.y', getProperty('botplayTxt.y') - 5)
    
end

function onUpdate()
    if epicCoolCameraShit == true then
        if mustHitSection then
            setProperty('defaultCamZoom', 1.2)
        else
            setProperty('defaultCamZoom', 1.5)
        end
    end
end

function onBeatHit()
    if curBeat == 127 or curBeat == 159 or curBeat == 243 or curBeat == 323 then
        epicCoolCameraShit = false
    end
    if curBeat == 132 or curBeat == 228 or curBeat == 260 or curBeat == 456 then
        epicCoolCameraShit = true
    end
end

function noteMiss(membersIndex, noteData, noteType, isSustainNote)
    doTweenColor('turnRed', 'boyfriend', '0xFFff0000', 0.00001, 'linear')
    playSound('hurt3')
    runTimer('stupidColorTimer', 0.05)
end

function onTimerCompleted(tag, loops, loopsLeft)
    if tag == 'stupidColorTimer' then
        doTweenColor('returnToNorm', 'boyfriend', '0xFFffffff', 0.2, 'linear')
    end
end

function onGameOver()
    restartSong(true)
end