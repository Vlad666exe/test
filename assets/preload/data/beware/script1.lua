-- function onCreatePost()
        
--     BFAlpha = 0.35
--     DADAlpha = 0.35


--     checkCharacter() --about Character Y Fix
--     checkSong() --about show     

-- --------------------------------------------------

--     if showBF then

--         bfimage = getProperty('boyfriend.imageFile')
--         bfframe = getProperty('boyfriend.animation.frameName')
--         bfx = getProperty('boyfriend.x')

--         bfscaleX = getProperty('boyfriend.scale.x')
--         bfscaleY = getProperty('boyfriend.scale.y')
--         bfoffsetX = getProperty('boyfriend.offset.x')
--         bfoffsetY = getProperty('boyfriend.offset.y')
--         bfflipX = getProperty('boyfriend.flipX')
        
--         setObjectOrder('bfPhantom',getObjectOrder('boyfriendGroup')-1)
--         makeAnimatedLuaSprite('bfPhantom',bfimage,930,0)
--         addLuaSprite('bfPhantom',true)
--         setProperty('bfPhantom.offset.x',bfoffsetX)
--         setProperty('bfPhantom.color','00000')
--         setProperty('bfPhantom.offset.y',bfoffsetY)
--         setProperty('bfPhantom.scale.y',bfscaleY)
--         setProperty('bfPhantom.alpha',0.5)
--         setProperty('bfPhantom.y',getProperty('boyfriend.y') + getProperty('boyfriend.frameHeight')*getProperty('boyfriend.scale.y') * 1 - bfoffsetY * 2 + BFYFix)
--     end

-- -----------------------------boyfriend sprite---------------------

--     if showDAD then
--         dadimage = getProperty('dad.imageFile')
--         dadframe = getProperty('dad.animation.frameName')
--         dadx = getProperty('dad.x')

--         dadscaleX = getProperty('dad.scale.x')
--         dadscaleY = getProperty('dad.scale.y')
--         dadflipX = getProperty('dad.flipX')

--         setObjectOrder('dadPhantom',getObjectOrder('dadGroup')-1)
--         makeAnimatedLuaSprite('dadPhantom',dadimage,-50,0)
--         addLuaSprite('dadPhantom',true)
--         setProperty('dadPhantom.y', 0)
--         setProperty('dadPhantom.color','00000')
--         setProperty('dadPhantom.scale.y',dadscaleY)
--         setProperty('dadPhantom.alpha',DADAlpha)
--         setProperty('dadPhantom.y',0 + getProperty('dad.frameHeight') * getProperty('dad.scale.y') * 1 - dadoffsetY * 2 + DADYFix)
--     end
-- end
    
-- --------------------------dad sprite--------------------------


-- function onUpdate()


--     bfframe = getProperty('boyfriend.animation.frameName')
--     addAnimationByPrefix('bfPhantom','b',bfframe,1,true)
--     objectPlayAnimation("bfPhantom","b",true)
--     bfoffsetX = getProperty('boyfriend.offset.x')
--     bfoffsetY = getProperty('boyfriend.offset.y')
--     setProperty('bfPhantom.offset.x',bfoffsetX)
--     setProperty('bfPhantom.offset.y',getProperty('boyfriend.frameHeight')*getProperty('boyfriend.scale.y')-bfoffsetY)

-- -----------------------------boyfriend playanim---------------

--     dadframe = getProperty('dad.animation.frameName')
--     addAnimationByPrefix('dadPhantom','d',dadframe,1,true)
--     objectPlayAnimation("dadPhantom","d",true)
--     dadoffsetX = getProperty('dad.offset.x')
--     dadoffsetY = getProperty('dad.offset.y')

-- -----------------------------dad playanim---------------

-- end

-- function onEvent(name,value1,value2)
--     if name == "Change Character" then
    
--     checkCharacter()
    
--         if value1 == "BF" or value1 == "bf" then
--             bfimage = getProperty('boyfriend.imageFile')
--             bfframe = getProperty('boyfriend.animation.frameName')
--             bfx = getProperty('boyfriend.x')

--             bfscaleX = getProperty('boyfriend.scale.x')
--             bfscaleY = getProperty('boyfriend.scale.y')
--             bfoffsetX = getProperty('boyfriend.offset.x')
--             bfoffsetY = getProperty('boyfriend.offset.y')
--             bfflipX = getProperty('boyfriend.flipX')
            
--             setObjectOrder('bfPhantom',getObjectOrder('boyfriendGroup')-1)
--             makeAnimatedLuaSprite('bfPhantom',bfimage,bfx,0)
--             addLuaSprite('bfPhantom',false)
--             setProperty('bfPhantom.offset.x',bfoffsetX)
--             setProperty('bfPhantom.offset.y',bfoffsetY)
--             setProperty('bfPhantom.scale.x',bfscaleX)
--             setProperty('bfPhantom.scale.y',bfscaleY)
--             setProperty('bfPhantom.alpha',BFAlpha)
--             setProperty('bfPhantom.flipX', bfflipX)
--             setProperty('bfPhantom.flipY', true)
--             setProperty('bfPhantom.y',getProperty('boyfriend.y') + getProperty('boyfriend.frameHeight')*getProperty('boyfriend.scale.y') * 2 - bfoffsetY * 2 + BFYFix)
--         end

--         if value1 == "Dad" or value1 == "dad" then
--             dadimage = getProperty('dad.imageFile')
--             dadframe = getProperty('dad.animation.frameName')
--             dadx = getProperty('dad.x')

--             dadscaleX = getProperty('dad.scale.x')
--             dadscaleY = getProperty('dad.scale.y')
--             dadoffsetX = getProperty('dad.offset.x')
--             dadoffsetY = getProperty('dad.offset.y')
--             dadflipX = getProperty('dad.flipX')

--             setObjectOrder('dadPhantom',getObjectOrder('dadGroup')-1)
--             makeAnimatedLuaSprite('dadPhantom',dadimage,dadx,0)
--             addLuaSprite('dadPhantom',false)
--             setProperty('dadPhantom.scale.x',dadscaleX)
--             setProperty('dadPhantom.scale.y',dadscaleY)
--             setProperty('dadPhantom.alpha',DADAlpha)
--             setProperty('dadPhantom.flipY', true);
--             setProperty('dadPhantom.flipX', dadflipX)
--             setProperty('dadPhantom.y',getProperty('dad.y') + getProperty('dad.frameHeight') * getProperty('dad.scale.y') * 2 - dadoffsetY * 2 + DADYFix)
--         end
--     end
-- end

-- function checkCharacter()

--     -----------------------

--     if boyfriendName =='YourBFName' then
--         BFYFix = 0
--     elseif boyfriendName =='YourBFName2' then
--         BFYFix = 0
--     else
--         BFYFix = 0    
--     end
    
--     ------------boyfriend-----------
    
--     if dadName == 'YourDadName' then
--         DADYFix = 0
--     elseif dadName == 'YourDadName2' then
--         DADYFix = 0
--     else
--         DADYFix = 0    
--     end
    
--     ------------dad-----------

    
-- end

-- function checkSong()

--     if songName == 'YourSongName' then
--         showBF = false
--         showDAD = false
--         showGF = false
--     elseif songName == 'YourSongName2' then
--         showBF = true
--         showDAD = true
--         showGF = true    
--     else
--         showBF = true
--         showDAD = true
--         showGF = true    
--     end    
    
-- end

