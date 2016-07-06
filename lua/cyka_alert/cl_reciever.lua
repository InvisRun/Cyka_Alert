cyka_alert = cyka_alert or {}
net.Receive("cyka_alert",function()
	sound.PlayFile( "sound/cyka_alert.mp3", "", function( station )
		if ( IsValid( station ) ) then station:Play() end
	end )
	chat.AddText(unpack(net.ReadTable()))
end)