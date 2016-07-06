--- Memes Construct 2.0, wh is my superpower (c) 2016 ---
AddCSLuaFile()
if SERVER then
	AddCSLuaFile("cyka_alert/cl_reciever.lua")
	include("cyka_alert/init.lua")
else
	include("cyka_alert/cl_reciever.lua")
end

if cyka_alert then
	if CLIENT then
		MsgC(Color(0,255,0,255),"Cyka Alert System loaded!\n")
	else
		MsgC(Color(0,255,0,255),"Cyka Alert System loaded!\n")
	end
else
	MsgC(Color(255,0,0,255),"Cyka Alert System failed to load!\n")
end