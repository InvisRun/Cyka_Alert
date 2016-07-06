--- Memes Construct 2.0, wh is my superpower (c) 2016 ---
cyka_alert = cyka_alert or {}
cyka_alert.teams = {}

util.AddNetworkString("cyka_alert")

resource.AddFile("sound/cyka_alert.mp3")

hook.Add("PlayerInitialSpawn","cyka_alert",function(ply)
	MsgC(Color(0,0,255,255),"[CYKA ALERT] PlayerInitialSpawn throwed")
	if ply:IsSuperAdmin() == true then
		message = {}
		table.insert(message,Color(255,0,0,255))
		table.insert(message,"[CYKA ALERT] ")
		table.insert(message,Color(255,255,0,255))
		table.insert(message,"Superadmin ")
		table.insert(message,team.GetColor(ply:Team()))
		table.insert(message,ply:Name().." ")
		table.insert(message,Color(255,255,0,255))
		table.insert(message,"joined the server")
		net.Start("cyka_alert")
			net.WriteTable(message)
		net.Send(player.GetAll())
	end
end)
