function getAccessLevelInt(accessLevel)
	local default = getAccessLevel()
	accessLevel = accessLevel or default

	if(accessLevel == "admin") then
		return 5;
	end

	if(accessLevel == "moderator") then
		return 4;
	end

	if(accessLevel == "overseer") then
		return 3;
	end

	if(accessLevel == "gm") then
		return 2;
	end

	if(accessLevel == "observer") then
		return 1;
	end

	return 0;
end

function checkAccessLevel(minAccessLevel)
	return getAccessLevelInt() >= getAccessLevelInt(minAccessLevel);
end
