function onCreate()

	makeLuaSprite('playa', 'playa', -1800, -400)
	scaleObject('playa', 1.5, 1.5); 
	addLuaSprite('playa',false)
	
    makeLuaSprite('stageback', 'stageback', -900, -380)
	addLuaSprite('stageback', false)
	setLuaSpriteScrollFactor('stageback', 0.5, 0.8)
	scaleObject('stageback', 1.2, 1.2);
	
	makeLuaSprite('stagefront', 'stagefront', -1500, 600)
	scaleObject('stagefront', 1.5, 1.5);
	addLuaSprite('stagefront', false)
		
	makeLuaSprite('stagecurtains', 'stagecurtains', -1600, -400)
	scaleObject('stagecurtains', 1.5, 1.5);
	addLuaSprite('stagecurtains', false)
	
	makeLuaSprite('sky', 'sky', -500, -200)
	scaleObject('sky', 1.8, 1.8);
	
	
	makeLuaSprite('city', 'city', 0, -200)
	scaleObject('city', 1.5, 1.5);
   
	
	makeLuaSprite('behindTrain', 'behindTrain', -400, -200)
	scaleObject('behindTrain', 1.4, 1.4);
  
	makeLuaSprite('street', 'street', -400, -200)
	scaleObject('street', 1.4, 1.4);
	

	
	makeLuaSprite('fernanmuro', 'fernanmuro', -1100, -400)
	scaleObject('fernanmuro', 1.2, 1.2);
	addLuaSprite('fernanmuro', false)
	
    makeLuaSprite('fernansilla', 'fernansilla', -400, 200)
	scaleObject('fernansilla', 1, 1);
	addLuaSprite('fernansilla', false)
	
	makeAnimatedLuaSprite('curly', 'curly', -500, 580)
	addAnimationByPrefix('curly','curly','curly',26, true)
	setLuaSpriteScrollFactor('curly', 1, 1)
	scaleObject('curly', 1, 1);

    makeLuaSprite('fernanmueble', 'fernanmueble', -940, 700)
	scaleObject('fernanmueble', 1, 1);
	addLuaSprite('fernanmueble', true)
	
	makeAnimatedLuaSprite('ranarene', 'ranarene', 120, 500)
	addAnimationByPrefix('ranarene','ranarene','rana rene',26, true)
	setLuaSpriteScrollFactor('ranarene', 1, 1)
	scaleObject('ranarene', 1, 1);
	

	
    makeLuaSprite('fernanraya', 'fernanraya', 500, -200)
	scaleObject('fernanraya', 1, 1);
	addLuaSprite('fernanraya', true)
	
	makeLuaSprite('vidas1', 'vidas1', -500, 0)
	scaleObject('vidas1', 0.5, 0.5);
	
	makeLuaSprite('vidas2', 'vidas2', -500, 0)
	scaleObject('vidas2', 0.5, 0.5);

	
	makeLuaSprite('vidas21', 'vidas21', -500, 0)
	scaleObject('vidas21', 0.5, 0.5);
	
	
	makeLuaSprite('vidas3', 'vidas3', -500, 0)
	scaleObject('vidas3', 0.5, 0.5);
	addLuaSprite('vidas3', true)
end

function onBeatHit() --for every beat

   if curBeat == 108 then
   removeLuaSprite('vidas3',false)
   addLuaSprite('vidas2', true)
   end
   
   if curBeat == 157 then
   removeLuaSprite('vidas2',false)
   addLuaSprite('vidas1', true)
   end
    
   if curBeat == 268 then
   removeLuaSprite('vidas1',false)
   addLuaSprite('vidas21', true)
   end	
   
   if curBeat == 270 then
   removeLuaSprite('vidas21',false)
   addLuaSprite('vidas2',true)
   end
   
   if curBeat == 448 then
   removeLuaSprite('vidas2',false)
   addLuaSprite('vidas1',true)
   end



   if curBeat == 228 then
	 removeLuaSprite('stageback',false)
	 removeLuaSprite('stagefront',false)
	 removeLuaSprite('stagecurtains',false)
	 end
	
   if curBeat == 228 and misses == 0 then
    setObjectOrder("curly",8)
	addLuaSprite('curly', true)
	end
   
   if curBeat == 297 then
  
   addLuaSprite('sky',false)
   addLuaSprite('city',false)
   addLuaSprite('behindTrain',false)
   addLuaSprite('street',false)
     setObjectOrder("sky",1)
	setObjectOrder("city", 2)
	setObjectOrder("behindTrain", 3)
	setObjectOrder("street", 3)
   end
   if curBeat == 297 and misses == 0 then 
   addLuaSprite('ranarene',true)
   end
end

function onStepHit() --for every step

end

function onUpdate()

end
