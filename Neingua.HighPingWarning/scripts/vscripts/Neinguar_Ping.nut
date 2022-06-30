global function Neinguar_Ping_init
int pingLimit = GetConVarInt("PingLimit")

void function Neinguar_Ping_init() {
    checkplayerPing()
}

void function checkplayerPing() {
    wait(20)
    foreach (entity player in GetPlayerArray()) {
        if(player.GetPlayerGameStat(PGS_PING)>pingLimit)
        SendHudMessage(player, "Your ping is at "+player.GetPlayerGameStat(PGS_PING)+"ms you should concider playing on a server in your region", -1, 0.4, 255, 200, 200, 0, 0, 5, 0.15)
    }
}
