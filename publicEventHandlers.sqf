killLimit = 3;
bluforDeaths = 0;
opforDeaths = 0;

"bluforKilled" addPublicVariableEventHandler
{
	bluforDeaths = bluforDeaths + 1;
	if (opforDeaths >= killLimit) then
	{
		"OPFOR IS ERADICATED" remoteExec ["hint"];
	};
};
"opforKilled" addPublicVariableEventHandler
{
	opforDeaths = opforDeaths + 1;

	if (opforDeaths >= killLimit) then
	{
		"OPFOR IS ERADICATED"  remoteExec ["hint"];
	};
};
"indKilled" addPublicVariableEventHandler
{
	opforDeaths = opforDeaths + 1;

	if (opforDeaths >= killLimit) then
	{
		"INDEPENDENT IS ERADICATED"  remoteExec ["hint"];
	};
};