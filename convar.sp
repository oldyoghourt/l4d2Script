#include <sourcemod>

// 这节学习全局变量的使用，并配合配置文件

ConVar PluginVersion; // 版本号的全局变量

public OnPluginStart()
{
    PluginVersion = CreateConVar("l4d2_plugin_version", "1.0", "插件版本", FCVAR_SPONLY|FCVAR_NOTIFY);

    // 生成配置文件
    // 配置文件将生成在安装目录下的 left4dead2\cfg\sourcemod\l4d2_plugin_config.cfg
    AutoExecConfig(true, "l4d2_plugin_config")
}

// 客户端进入时调用
public OnClientPutInServer(int client)
{
    char version[25];
    GetConVarString(PluginVersion, version, sizeof(version) - 1);
    PrintToChat(client, "当前版本: %s", version);
}