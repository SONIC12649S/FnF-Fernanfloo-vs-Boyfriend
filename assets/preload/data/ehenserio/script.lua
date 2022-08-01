local allowCountdown = false
function onStartCountdown()
        if not allowCountdown and isStoryMode and not seenCutscene then --Block the first countdown
                setProperty('camGame.visible',false);
	            setProperty('camHUD.visible',false);
	            runTimer('fernan',1,1);

	allowCountdown = true;
	return Function_Stop;
end
setProperty('camGame.visible',true);
setProperty('camHUD.visible',true);
   
return Function_Continue;
end

function onTimerCompleted(tag, loops, loppsLeft)

    if tag == 'fernan' then
        startVideo('fernan');
    end
end


function onUpdate(elapsed)
-- This is how I do it
-- Alpha is +16
-- X is +0
-- Y is +8
-- Angle is +24

-- Opponent arrows: 0-3
-- Player arrows: 4-7
-- hide and show the opponents arrows
for i=0,3 do
-- Alpha is 0-1 (0 being invisible)
noteTweenAlpha(i+16, i, 0, 0.01)
end
end