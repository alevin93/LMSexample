execVM "publicEventHandlers.sqf";
{
	if ((side _x) == WEST) then
		{
		_x addEventHandler ["Killed",
		{
			_unitSide = side (_this select 0);
			_killerSide = side (_this select 1);
			if (_unitSide == _killerSide) then
			{
				"BLUFOR TEAMKILL" remoteExec ["hint"];
			}
			else {
				publicVariableServer "bluforKilled";
			}
		}];
	};
	if ((side _x) == EAST) then
		{
		_x addEventHandler ["Killed",
		{
			_unitSide = side (_this select 0);
			_killerSide = side (_this select 1);
			if (_unitSide == _killerSide) then
			{
				"OPFOR TEAMKILL" remoteExec ["hint"];
			}
			else {
				publicVariableServer "opforKilled";
			}
		}];
	};
	if ((side _x) == INDEPENDENT) then
		{
		_x addEventHandler ["Killed",
		{
			_unitSide = side (_this select 0);
			_killerSide = side (_this select 1);
			if (_unitSide == _killerSide) then
			{
				"INDEPENDENT TEAMKILL" remoteExec ["hint"];
			}
			else {
				publicVariableServer "indKilled";
			}
		}];
	};
} forEach allUnits;