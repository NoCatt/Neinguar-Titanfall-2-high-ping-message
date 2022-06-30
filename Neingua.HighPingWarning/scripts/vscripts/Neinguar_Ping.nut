global function Neinguar_Ping_init
int pingLimit = GetConVarInt("PingLimit")
int TimeBeforeMessage = GetConVarInt("Time_Before_Messag")

void function Neinguar_Ping_init() {
    AddCallback_OnClientConnected( checkplayerPing) 
}

void function checkplayerPing(entity player) {
    wait(TimeBeforeMessage)
    if(player.GetPlayerGameStat(PGS_PING)>pingLimit)
        SendHudMessage(player, "Your ping is at "+player.GetPlayerGameStat(PGS_PING)+"ms you should concider playing on a server in your region", -1, 0.4, 255, 200, 200, 0, 0, 5, 0.15)
}
