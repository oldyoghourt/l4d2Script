#include <sourcemod>

public Plugin myinfo = 
{
	name = "yoghourt's plugin",
	author = "yoghourt",
	description = "",
	version = "1.0",
	url = ""
}

public OnPluginStart()
{
	
}

public OnClientPutInServer(int client)
{
	char userName[255];
	if (!IsFakeClient(client)){ // 先判断是不是机器人
		if (GetClientName(client, userName, sizeof(userName) - 1) && StrEqual(userName, "yoghourt", true))
		{
			PrintToChatAll("\x05帅比\x03 %s \x05进入服务器", userName);
		} else{
			PrintToChatAll("\x05叼毛\x04 %N \x05进入服务器", client);
		}
	}
}