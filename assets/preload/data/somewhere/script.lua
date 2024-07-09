function onStepHit()
    if curStep == 320 then
        playSound('dialogue', 1)
end
    if curStep == 1744 then
    setProperty('Cloudy.alpha', 0)
    setProperty('scoreTxt.alpha', 0)
    setProperty('timeTxt.alpha', 0)
    setProperty('strumLineNotes.visible', false)
    end
    if curStep == 1795 then
        playSound('dialogue2', 1)
    end
end

function onCreate()
    setPropertyFromClass('GameOverSubstate', 'characterName', 'roger-kill')
end