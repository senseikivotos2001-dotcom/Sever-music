-- 1. Phát nhạc ẩn danh toàn Server
local function PlayMusic()
    local s = Instance.new("Sound", game:GetService("SoundService"))
    s.Name = "GameAmbient_Master"
    s.SoundId = "rbxassetid://ID_NHAC_CUA_BAN" -- Hoặc dùng link MP3 từ GitHub
    s.Volume = 2
    s.Looped = true
    s:Play()
    
    -- Ép các âm thanh khác nhỏ đi
    game:GetService("RunService").RenderStepped:Connect(function()
        for _, otherSound in pairs(game:GetDescendants()) do
            if otherSound:IsA("Sound") and otherSound ~= s then
                otherSound.Volume = 0
            end
        end
    end)
end

-- 2. Chống bị Kick khi đứng im (Anti-AFK)
local VU = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:Connect(function()
    VU:CaptureController()
    VU:ClickButton2(Vector2.new(0,0))
end)

PlayMusic()
