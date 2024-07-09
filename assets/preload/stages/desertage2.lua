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
	addLuaSprite('shadows',false);
	setScrollFactor('shadows', 1.0, 1.0);
		scaleObject('shadows',2.5,2.5)
	makeAnimatedLuaSprite('radio_assets', 'Beware/radio_assets',460, 390)
	addAnimationByPrefix('radio_assets','radio','radio', 24, true)
--	scaleObject('radio_assets', 2.5, 2.5);
    addLuaSprite('radio_assets',false);
    objectPlayAnimation('radio_assets','radio',false)
    setScrollFactor('radio_assets', 1.0, 1.0)

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
	addLuaSprite('radio', false);
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