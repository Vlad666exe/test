
function onCreate()
	makeLuaSprite('bgonly', 'Beware/bgonly', -900, -4630);
	addLuaSprite('bgonly',false);
	setScrollFactor('bgonly', 1.0, 1.0);
	scaleObject('bgonly', 4.5, 5);

	-- sprites that only load if Low Quality is turned off
		if not lowQuality then
		makeLuaSprite('skybg', 'Beware/skybg', -3150, -550);
		addLuaSprite('skybg',false);
		setScrollFactor('skybg', 0.1, 0.1);

		makeLuaSprite('ground1', 'Beware/ground1', -800, -250);
		addLuaSprite('ground1',false);
		setScrollFactor('ground1', 0.2, 0.2);

		makeLuaSprite('ground2', 'Beware/ground2', -800, -250);
		addLuaSprite('ground2',false);
		setScrollFactor('ground2', 0.3, 0.3);

		makeLuaSprite('ground3', 'Beware/ground3', -800, -250);
		addLuaSprite('ground3',false);
		setScrollFactor('ground3', 0.4, 0.4);

		makeLuaSprite('ground4', 'Beware/ground4', -800, -250);
		addLuaSprite('ground4',false);
		setScrollFactor('ground4', 0.5, 0.5);

		makeLuaSprite('ground5', 'Beware/ground5', -800, -250);
		addLuaSprite('ground5',false);
		setScrollFactor('ground5', 0.6, 0.6);

		makeLuaSprite('ground6', 'Beware/ground6', -800, -250);
		addLuaSprite('ground6',false);
		setScrollFactor('ground6', 0.7, 0.7);

		makeLuaSprite('ground7', 'Beware/ground7', -800, -250);
		addLuaSprite('ground7',false);
		setScrollFactor('ground7', 0.8, 0.8);
	
		makeLuaSprite('ground8', 'Beware/ground8', -800, -250);
		addLuaSprite('ground8',false);
		setScrollFactor('ground8', 0.9, 0.9);

		makeLuaSprite('ground9', 'Beware/ground9', -800, -250);
		addLuaSprite('ground9',false);
		setScrollFactor('ground9', 1.0, 1.0);

		makeLuaSprite('obj', 'Beware/obj', -600, -250);
		addLuaSprite('obj',false);
		setScrollFactor('obj', 0.4, 0.4);

		makeAnimatedLuaSprite('fogright', 'Beware/fogright',800, -350)
		addAnimationByPrefix('fogright','fogfullright','fogfullright', 24, true)
    	addLuaSprite('fogright',false);
    	objectPlayAnimation('fogright','fogfullright',false)
    	setScrollFactor('fogright', 1.5, 0.5)
		scaleObject('fogright', 7.6, 7.6);

		makeAnimatedLuaSprite('fogleft', 'Beware/fogleft',-1000, -350)
		addAnimationByPrefix('fogleft','fogfullleft','fogfullleft', 24, true)
    	addLuaSprite('fogleft',false);
    	objectPlayAnimation('fogleft','fogfullleft',false)
    	setScrollFactor('fogleft', 1.5, 0.5)
		scaleObject('fogleft', 7.6, 7.6);

		makeLuaSprite('picnic', 'Beware/picnic', -600, -250);
		addLuaSprite('picnic',false);
		setScrollFactor('picnic', 1.0, 1.0);
	end

	makeLuaSprite('shadows', 'Beware/shadows', -600, -250);
	scaleObject('shadows',2.5,2.5)
	addLuaSprite('shadows',false);
	setScrollFactor('shadows', 1.0, 1.0);
	

	makeLuaSprite('superdarkfromhell', 'black', -800, -500)
	makeGraphic("superdarkfromhell", 1, 1, '000000')
	scaleObject('superdarkfromhell', screenWidth * 5, screenHeight * 5)

	makeAnimatedLuaSprite('emotiontext', 'Beware/ooh', 900, 500)
	makeAnimatedLuaSprite('emotionstext2', 'Beware/ooh', 1100, 650)
	addAnimationByPrefix("emotiontext", "activate", "ooh", 24, true)
	addAnimationByPrefix("emotionstext2", "activation", "ooh", 24, true)
	makeAnimatedLuaSprite('emotiontext3', 'Beware/aah', 50, 100)
	makeAnimatedLuaSprite('emotionstext4', 'Beware/eeh', 500, 200)
	makeAnimatedLuaSprite('emotionstext5', 'Beware/uuh', 250, 50)
	addAnimationByPrefix("emotiontext3", "activate", "aahh", 24, true)
	addAnimationByPrefix("emotionstext4", "activation", "eehh", 24, true)
	addAnimationByPrefix("emotionstext5", "activation", "uuhh", 24, true)

	makeAnimatedLuaSprite('animatedfog', 'Beware/bigfog', -400, -200)
	addAnimationByPrefix("animatedfog", "fogger", "bigfog", 24, true)
	makeLuaSprite('backfog', 'Beware/bigfogback', -400, -300)
	scaleObject('backfog', 12, 12)
	scaleObject('animatedfog', 3.5, 3.5)

	makeAnimatedLuaSprite('radio_assets', 'Beware/radio_assets',460, 390)
	addAnimationByPrefix('radio_assets','radio','radio', 24, true)
--	scaleObject('radio_assets', 2.5, 2.5)
    objectPlayAnimation('radio_assets','radio',false)
    setScrollFactor('radio_assets', 1.0, 1.0)

	makeAnimatedLuaSprite('saladhead', 'intros/introsaladhead', 490, 350)
	makeAnimatedLuaSprite('saladtext', 'intros/bewaretext', 50, 0)
	addAnimationByPrefix("saladhead", "fingers", "fingers", 24, true)
	addAnimationByIndices("saladtext", "text", "text", {1, 2, 3, 4, 5, 6, 7, 8}, 10, true)
	scaleObject('saladtext',2.5,2.5)
	makeLuaSprite('balck', 'black', 0, 0)
	makeGraphic("balck", 1, 1, '000000')
	scaleObject("balck", screenWidth * 5, screenHeight * 5)

	scaleObject('saladhead', 1.25, 1.25)

	addLuaSprite('bgonly', false);
	addLuaSprite('skybg', false);
	addLuaSprite('ground1', false);
	addLuaSprite('ground2', false);
	addLuaSprite('ground3', false);
	addLuaSprite('ground4', false);
	addLuaSprite('ground5', false);
	addLuaSprite('ground6', false);
	addLuaSprite('ground7', false);
	addLuaSprite('ground8', false);
	addLuaSprite('ground9', false);
	addLuaSprite('obj', false);
	addLuaSprite('fogleft', false);
	addLuaSprite('fogright', false);
	addLuaSprite('picnic', false);
	addLuaSprite('shadows', false);
	addLuaSprite('superdarkfromhell', false);
	doTweenAlpha('supersdarkfromhell', 'superdarkfromhell', 0, 0.01, 'linear')
	addLuaSprite('emotiontext', true);
	addLuaSprite('emotionstext2', true);
	addLuaSprite('emotiontext3', true);
	addLuaSprite('emotionstext4', true);
	addLuaSprite('emotionstext5', true);
	doTweenAlpha('emotiontextfade', 'emotiontext', 0, 0.01, 'linear')
	doTweenAlpha('emotionstext2fade', 'emotionstext2', 0, 0.01, 'linear')
	doTweenAlpha('emotiontextfade3', 'emotiontext3', 0, 0.01, 'linear')
	doTweenAlpha('emotionstext2fade4', 'emotionstext4', 0, 0.01, 'linear')
	doTweenAlpha('emotiontextfade5', 'emotionstext5', 0, 0.01, 'linear')
	setProperty('emotiontext.angle', -35)
	setProperty('emotionstext2.angle', 35)
	setProperty('emotiontext3.angle', -35)
	setProperty('emotionstext4.angle', 35)
	addLuaSprite('backfog', false);
	addLuaSprite('radio_assets', false);
	addLuaSprite('animatedfog', true);
	objectPlayAnimation('animatedfog', 'fogger')
	addLuaSprite('balck', true);
	addLuaSprite('saladhead', true);
	addLuaSprite('saladtext', true);
	setObjectCamera("saladhead", 'camOther')
	setObjectCamera("saladtext", 'camOther')
	setObjectCamera("balck", 'camOther')

	makeLuaSprite('fog', 'Beware/fogfade', -300, -250)
	scaleObject('fog',2.5,2.5)
	addLuaSprite('fog', true);

	setObjectCamera('white', 'camHUD')
	makeLuaSprite('white', 'Beware/white', -500, -500)
	addLuaSprite('white', true)
	scaleObject('white', 12.5, 12.5)
end

function onCreatePost()
-- setPropertyFromGroup('strumLineNotes', 0, 'color', 000000)
-- setPropertyFromGroup('strumLineNotes', 1, 'color', 000000)
-- setPropertyFromGroup('strumLineNotes', 2, 'color', 000000)
-- setPropertyFromGroup('strumLineNotes', 3, 'color', 000000)
-- setPropertyFromGroup('strumLineNotes', 4, 'color', 000000)
-- setPropertyFromGroup('strumLineNotes', 5, 'color', 000000)
-- setPropertyFromGroup('strumLineNotes', 6, 'color', 000000)
-- setPropertyFromGroup('strumLineNotes', 7, 'color', 000000)

setProperty('healthBar.alpha', 0)
setProperty('healthBarBG.alpha', 0)
setProperty('iconP1.alpha', 0)
setProperty('iconP2.alpha', 0)
setProperty('scoreTxt.alpha', 0)

setProperty('showRating', false)
setProperty('showComboNum', false)

setProperty('radio_assets.alpha', 0)
setProperty('fog.alpha', 0)
setProperty('white.alpha', 0)
setProperty('dad.color', 000000)
setProperty('boyfriend.color', 000000)
setProperty('radio_assets.color', 000000)
setProperty('boyfriend.alpha', 0.2)
setProperty('dad.alpha', 0.2)
setProperty('timeBarBG.visible', false)
setProperty('timeBar.visible', false)
setProperty('timeTxt.visible', false)
setProperty("camHUD.alpha", 0)
noteTweenAlpha("notes", 0, 0, 0.01, "linear")
noteTweenAlpha("noted", 1, 0, 0.01, "linear")
noteTweenAlpha("notef", 2, 0, 0.01, "linear")
noteTweenAlpha("noteg", 3, 0, 0.01, "linear")
noteTweenAlpha("noteh", 4, 0, 0.01, "linear")
noteTweenAlpha("notej", 5, 0, 0.01, "linear")
noteTweenAlpha("notek", 6, 0, 0.01, "linear")
noteTweenAlpha("notel", 7, 0, 0.01, "linear")
end

function onBeatHit()
	if curBeat % 2 == 0 then
		objectPlayAnimation('radio_assets', 'radio', true);
	end
end

function onSongStart()
	runTimer('lfog',2,3)
	runTimer('rfog',2,3)
	doTweenX('skybg','skybg',-600, 50,'linear')
end

function onTimerCompleted(tag, loops, loopsLeft)
    if tag == 'rfog' and loopsLeft >= 2 then
	doTweenX('rfog','fogright',600, 2,'SmootherStepInOut')
	doTweenX('lfog','fogleft',-800, 2,'SmootherStepInOut')
  elseif tag == 'rfog' and loopsLeft <= 1 then
    doTweenX('rfog','fogright',800, 2,'SmootherStepInOut')
	doTweenX('lfog','fogleft',-1000, 2,'SmootherStepInOut')
	runTimer('lfog',2,3)
	runTimer('rfog',2,3)
  end
end

function onTweenCompleted(tag)
	if tag == 'skybg' then
		setProperty("skybg.x", -3150)
		doTweenX('skybg','skybg',-600, 50,'linear')
	end
end

-- function onSpawnNote()
-- 	setPropertyFromGroup('unspawnNotes', 0, 'color', 000000)
-- 	setPropertyFromGroup('unspawnNotes', 1, 'color', 000000)
-- 	setPropertyFromGroup('unspawnNotes', 2, 'color', 000000)
-- 	setPropertyFromGroup('unspawnNotes', 3, 'color', 000000)
-- 	setPropertyFromGroup('unspawnNotes', 4, 'color', 000000)
-- 	setPropertyFromGroup('unspawnNotes', 5, 'color', 000000)
-- 	setPropertyFromGroup('unspawnNotes', 6, 'color', 000000)
-- 	setPropertyFromGroup('unspawnNotes', 7, 'color', 000000)
-- 	setPropertyFromGroup('grpNoteSplashes', 0, 'color', 000000)
-- 	setPropertyFromGroup('grpNoteSplashes', 1, 'color', 000000)
-- 	setPropertyFromGroup('grpNoteSplashes', 2, 'color', 000000)
-- 	setPropertyFromGroup('grpNoteSplashes', 3, 'color', 000000)
-- 	setPropertyFromGroup('grpNoteSplashes', 4, 'color', 000000)
-- 	setPropertyFromGroup('grpNoteSplashes', 5, 'color', 000000)
-- 	setPropertyFromGroup('grpNoteSplashes', 6, 'color', 000000)
-- 	setPropertyFromGroup('grpNoteSplashes', 7, 'color', 000000)

-- end

function onStepHit()
	if curStep == 50 then
	end
	if curStep == 58 then
		doTweenAlpha('bl', 'balck', 0, 1, 'linear')
		doTweenAlpha('blead', 'saladhead', 0, 1, 'linear')
		doTweenAlpha('blext', 'saladtext', 0, 1, 'linear')
		doTweenAlpha('hud', 'camHUD', 1, 1, 'linear')
	end
	if curStep == 61 then
		noteTweenAlpha("notes", 0, 1, 1, "linear")
		noteTweenAlpha("noted", 1, 1, 1, "linear")
		noteTweenAlpha("notef", 2, 1, 1, "linear")
		noteTweenAlpha("noteg", 3, 1, 1, "linear")
		noteTweenAlpha("noteh", 4, 1, 1, "linear")
		noteTweenAlpha("notej", 5, 1, 1, "linear")
		noteTweenAlpha("notek", 6, 1, 1, "linear")
		noteTweenAlpha("notel", 7, 1, 1, "linear")
	end
	if curStep == 175 then
		doTweenZoom('zoo', 'camGame', 1.2, 6)
		doTweenAlpha('rad', 'radio_assets', 1, 7, 'linear')
		doTweenColor("colorrads", "radio_assets", "FFFFFF", 6, "linear")
		setProperty("opponentCameraOffset[0]", getProperty 'opponentCameraOffset[0]' - 200) 
	end
	if curStep == 192 then
		setProperty("gfCameraOffset[1]", 1900)
		setProperty("boyfriendCameraOffset[0]", getProperty 'boyfriendCameraOffset[0]' - 10)
	end
	if curStep == 207 then
		setProperty('healthBar.alpha', 100)
		setProperty('healthBarBG.alpha', 100)
		setProperty('iconP1.alpha', 100)
		setProperty('iconP2.alpha', 100)
		setProperty('scoreTxt.alpha', 100)
		setProperty('showRating', true)
		setProperty('showComboNum', true)
		setProperty('fog.alpha', 1)
		doTweenAlpha('das', 'dad', 1, 1)
		doTweenAlpha('dasss', 'backfog', 0, 0.01)
		doTweenAlpha('dasas', 'animatedfog', 0, 0.01)
		doTweenAlpha('bos', 'boyfriend', 1, 1)
		doTweenColor("colort", "dad", "FFFFFF", 0.1, "linear")
		doTweenColor("colortss", "boyfriend", "FFFFFF", 0.1, "linear")
		doTweenX('move', 'fog', 3000, 10, 'linear')
		-- setPropertyFromGroup('strumLineNotes', 0, 'color', 'FFFFFF')
		-- setPropertyFromGroup('strumLineNotes', 1, 'color', 'FFFFFF')
		-- setPropertyFromGroup('strumLineNotes', 2, 'color', 'FFFFFF')
		-- setPropertyFromGroup('strumLineNotes', 3, 'color', 'FFFFFF')
		-- setPropertyFromGroup('strumLineNotes', 4, 'color', 'FFFFFF')
		-- setPropertyFromGroup('strumLineNotes', 5, 'color', 'FFFFFF')
		-- setPropertyFromGroup('strumLineNotes', 6, 'color', 'FFFFFF')
		-- setPropertyFromGroup('strumLineNotes', 7, 'color', 'FFFFFF')
	end
	if curStep == 207 then
		doTweenAlpha('whitefadein', 'white', 1, 0.1, 'linear')
	end
	if curStep == 209 then
		doTweenAlpha('whitefadeout', 'white', 0, 0.1, 'linear')
	end
	if curStep == 459 then
		setProperty('cam.x', 1500)
		setProperty("boyfriendCameraOffset[1]", 100)
		doTweenZoom('zoominonthat', 'camGame', 1.2, 3.7)
		doTweenAlpha('GOAWAYSALAD', 'dad', 0, 1, 'linear')
		doTweenAlpha('supersevildarkfromhell', 'superdarkfromhell', 1, 1, 'linear')
	end
	if curStep == 465 then
		doTweenAlpha('fadeintexts', 'emotiontext', 1, 0.5, 'linear')
		objectPlayAnimation('emotiontext', 'activate')
	end
	if curStep == 467 then
		doTweenAlpha('fadeintexts2', 'emotionstext2', 1, 0.5, 'linear')
		objectPlayAnimation('emotionstext2', 'activation')
	end
	if curStep == 479 then
		doTweenAlpha('supersevildarkfromhell', 'superdarkfromhell', 0, 0.2, 'linear')
		doTweenAlpha('fadeintexts2', 'emotionstext2', 0, 0.2, 'linear')
		doTweenAlpha('fadeintexts', 'emotiontext', 0, 0.2, 'linear')
		doTweenAlpha('comeback', 'dad', 1, 0.2, 'linear')
		setProperty("boyfriendCameraOffset[1]", 0)
	end
	if curStep == 623 then
		doTweenAlpha('supersevildarkfromhell', 'superdarkfromhell', 1, 0.2, 'linear')
		doTweenAlpha('GOAWAYBF', 'boyfriend', 0, 0.2, 'linear')
	end
	if curStep == 624 then
		doTweenAlpha('fadeintextscome', 'emotiontext3', 1, 0.2, 'linear')
		objectPlayAnimation('emotiontext3', 'activate')
	end
	if curStep == 625 then
		doTweenAlpha('fadeintextscomes', 'emotionstext4', 1, 0.2, 'linear')
		doTweenAlpha('fadeintextsgo', 'emotiontext3', 0, 0.5, 'linear')
		objectPlayAnimation('emotionstext4', 'activation')
	end
	if curStep == 626 then
		doTweenAlpha('fadeintextscomess', 'emotionstext5', 1, 0.2, 'linear')
		doTweenAlpha('fadeintextsgoes', 'emotionstext4', 0, 0.5, 'linear')
		objectPlayAnimation('emotionstext5', 'activation')
	end
	if curStep == 627 then
		doTweenAlpha('fadeintextscomess', 'emotionstext5', 0, 0.3, 'linear')
		doTweenAlpha('supersevildarkfromhell', 'superdarkfromhell', 0, 0.3, 'linear')
		doTweenAlpha('GOAWAYBF', 'boyfriend', 1, 0.3, 'linear')
	end
	if curStep == 928 then
		doTweenAlpha("camHUDThing", "camHUD", 0, 2, "linear")
		doTweenAngle("camHUDThingAGAIN", "camHUD", -20, 4, "sineInOut")
		doTweenY("onceMoreSmh", "camHUD", 300, 3, "sineInOut")
		cameraFade("game", "000000", 1.4)
	end
end