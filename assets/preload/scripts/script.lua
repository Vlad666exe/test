local curHealthInt = 20;

function onCreatePost()
    setProperty('healthBarBG.alpha', 0.00001)
    setProperty('healthBar.alpha', 0.00001)
    setProperty('iconP1.alpha', 0.00001)
    setProperty('iconP2.alpha', 0.00001)
    setProperty('botplayTxt.y', getProperty('healthBar.y') - 4)
    
    makeAnimatedLuaSprite('healthHearts', 'health', 650, 80)
    if downscroll then
        setProperty('healthHearts.y', 600)
    end
    for i=0,20 do        
        addAnimationByPrefix('healthHearts', 'idle'..i, 'static'..i..'_0', 24, true)
    end
    playAnim('healthHearts', 'idle'..curHealthInt, true)
    setObjectCamera('healthHearts', 'hud')
    setGraphicSize('healthHearts', getProperty('healthHearts.width') * 6)
    setProperty('healthHearts.antialiasing', false)
    if middlescroll then
        setProperty('healthHearts.y', getProperty('healthBar.y') - 40)
        screenCenter('healthHearts', 'x')
    end
    addLuaSprite('healthHearts', true)
end

function onUpdate(elapsed)
    if getProperty('health') >= 0 then
        setProperty('health', 2)
    end
    if curHealthInt <= 0 then
        setProperty('health', -1)
    end
end
function noteMiss(membersIndex, noteData, noteType, isSustainNote)
    curHealthInt = curHealthInt - 1
    playAnim('healthHearts', 'idle'..curHealthInt, true)
end
function goodNoteHit(membersIndex, noteData, noteType, isSustainNote)
    if curHealthInt < 20 then
        curHealthInt = curHealthInt + 1
    end
    playAnim('healthHearts', 'idle'..curHealthInt, true)
end