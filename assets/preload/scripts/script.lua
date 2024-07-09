function onUpdate()
    setTextString('scoreTxt', 'Score: ' ..score.. ' | Accuracy: ' ..getRatingVar().. '%')
    setPropertyFromClass('ClientPrefs', 'scoreZoom', true)
end
function getRatingVar()
	return string.sub(tostring(rating*100), 1, 5)
end