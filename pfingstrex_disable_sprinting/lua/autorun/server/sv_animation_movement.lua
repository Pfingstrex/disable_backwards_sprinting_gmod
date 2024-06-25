hook.Add("SetupMove", "Animation_Pfingstrex", function(ply, mv, cmd)
    if ply:IsValid() and ply:Alive() then
        if ply:KeyDown(IN_SPEED) and mv:GetForwardSpeed() < 0 then
            ply:SetRunSpeed(ply:GetWalkSpeed())
        else
            ply:SetRunSpeed(240)
        end
    end
end)